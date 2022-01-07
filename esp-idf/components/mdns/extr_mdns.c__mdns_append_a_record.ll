; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_a_record.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_a_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@_mdns_server = common dso_local global %struct.TYPE_2__* null, align 8
@MDNS_DEFAULT_DOMAIN = common dso_local global i8* null, align 8
@MDNS_ANSWER_A = common dso_local global i32 0, align 4
@MDNS_ANSWER_A_TTL = common dso_local global i32 0, align 4
@MDNS_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, i32, i32, i32)* @_mdns_append_a_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_mdns_append_a_record(i64* %0, i64* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8*], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %13, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_mdns_server, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  store i8* %18, i8** %19, align 16
  %20 = load i8*, i8** @MDNS_DEFAULT_DOMAIN, align 8
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 1
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %23 = load i8*, i8** %22, align 16
  %24 = call i64 @_str_null_or_empty(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %97

27:                                               ; preds = %5
  %28 = load i64*, i64** %7, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %31 = call i64 @_mdns_append_fqdn(i64* %28, i64* %29, i8** %30, i32 2)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i64 0, i64* %6, align 8
  br label %97

35:                                               ; preds = %27
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %13, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %13, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i32, i32* @MDNS_ANSWER_A, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @MDNS_ANSWER_A_TTL, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ 0, %45 ], [ %47, %46 ]
  %50 = call i64 @_mdns_append_type(i64* %39, i64* %40, i32 %41, i32 %42, i32 %49)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i64 0, i64* %6, align 8
  br label %97

54:                                               ; preds = %48
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %13, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %13, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 2
  store i64 %60, i64* %15, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 3
  %64 = load i64, i64* @MDNS_MAX_PACKET_SIZE, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  store i64 0, i64* %6, align 8
  br label %97

67:                                               ; preds = %54
  %68 = load i64*, i64** %7, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 255
  %72 = call i32 @_mdns_append_u8(i64* %68, i64* %69, i32 %71)
  %73 = load i64*, i64** %7, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 8
  %77 = and i32 %76, 255
  %78 = call i32 @_mdns_append_u8(i64* %73, i64* %74, i32 %77)
  %79 = load i64*, i64** %7, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 16
  %83 = and i32 %82, 255
  %84 = call i32 @_mdns_append_u8(i64* %79, i64* %80, i32 %83)
  %85 = load i64*, i64** %7, align 8
  %86 = load i64*, i64** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = ashr i32 %87, 24
  %89 = and i32 %88, 255
  %90 = call i32 @_mdns_append_u8(i64* %85, i64* %86, i32 %89)
  %91 = load i64*, i64** %7, align 8
  %92 = load i64, i64* %15, align 8
  %93 = call i32 @_mdns_set_u16(i64* %91, i64 %92, i32 4)
  %94 = load i64, i64* %13, align 8
  %95 = add nsw i64 %94, 4
  store i64 %95, i64* %13, align 8
  %96 = load i64, i64* %13, align 8
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %67, %66, %53, %34, %26
  %98 = load i64, i64* %6, align 8
  ret i64 %98
}

declare dso_local i64 @_str_null_or_empty(i8*) #1

declare dso_local i64 @_mdns_append_fqdn(i64*, i64*, i8**, i32) #1

declare dso_local i64 @_mdns_append_type(i64*, i64*, i32, i32, i32) #1

declare dso_local i32 @_mdns_append_u8(i64*, i64*, i32) #1

declare dso_local i32 @_mdns_set_u16(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
