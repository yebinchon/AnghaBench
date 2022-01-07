; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_aaaa_record.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_aaaa_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@_mdns_server = common dso_local global %struct.TYPE_2__* null, align 8
@MDNS_DEFAULT_DOMAIN = common dso_local global i8* null, align 8
@MDNS_ANSWER_AAAA = common dso_local global i32 0, align 4
@MDNS_ANSWER_AAAA_TTL = common dso_local global i32 0, align 4
@MDNS_ANSWER_AAAA_SIZE = common dso_local global i64 0, align 8
@MDNS_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, i64*, i32, i32)* @_mdns_append_aaaa_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_mdns_append_aaaa_record(i64* %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8*], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
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
  br label %89

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
  br label %89

35:                                               ; preds = %27
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %13, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %13, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i32, i32* @MDNS_ANSWER_AAAA, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @MDNS_ANSWER_AAAA_TTL, align 4
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
  br label %89

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
  %63 = load i64, i64* @MDNS_ANSWER_AAAA_SIZE, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* @MDNS_MAX_PACKET_SIZE, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  store i64 0, i64* %6, align 8
  br label %89

68:                                               ; preds = %54
  %69 = load i64, i64* @MDNS_ANSWER_AAAA_SIZE, align 8
  store i64 %69, i64* %14, align 8
  %70 = load i64*, i64** %7, align 8
  %71 = load i64*, i64** %8, align 8
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @memcpy(i64* %73, i64* %74, i64 %75)
  %77 = load i64, i64* %14, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %77
  store i64 %80, i64* %78, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @_mdns_set_u16(i64* %81, i64 %82, i64 %83)
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %13, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %13, align 8
  %88 = load i64, i64* %13, align 8
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %68, %67, %53, %34, %26
  %90 = load i64, i64* %6, align 8
  ret i64 %90
}

declare dso_local i64 @_str_null_or_empty(i8*) #1

declare dso_local i64 @_mdns_append_fqdn(i64*, i64*, i8**, i32) #1

declare dso_local i64 @_mdns_append_type(i64*, i64*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @_mdns_set_u16(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
