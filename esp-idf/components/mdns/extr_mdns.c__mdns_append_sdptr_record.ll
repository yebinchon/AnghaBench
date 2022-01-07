; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_sdptr_record.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_sdptr_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"_services\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_dns-sd\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_udp\00", align 1
@MDNS_DEFAULT_DOMAIN = common dso_local global i8* null, align 8
@MDNS_ANSWER_PTR = common dso_local global i32 0, align 4
@MDNS_ANSWER_PTR_TTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, %struct.TYPE_3__*, i32, i32)* @_mdns_append_sdptr_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_mdns_append_sdptr_record(i64* %0, i64* %1, %struct.TYPE_3__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i8*], align 16
  %13 = alloca [4 x i8*], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %14, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %75

20:                                               ; preds = %5
  %21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 16
  %24 = load i8*, i8** @MDNS_DEFAULT_DOMAIN, align 8
  %25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 3
  store i8* %24, i8** %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  store i8* %28, i8** %29, align 16
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 1
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** @MDNS_DEFAULT_DOMAIN, align 8
  %35 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 2
  store i8* %34, i8** %35, align 16
  %36 = load i64*, i64** %7, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %39 = call i64 @_mdns_append_fqdn(i64* %36, i64* %37, i8** %38, i32 4)
  store i64 %39, i64* %15, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %14, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %14, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i32, i32* @MDNS_ANSWER_PTR, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @MDNS_ANSWER_PTR_TTL, align 4
  %48 = call i64 @_mdns_append_type(i64* %43, i64* %44, i32 %45, i32 %46, i32 %47)
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  br label %75

52:                                               ; preds = %20
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %14, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %14, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, 2
  store i64 %58, i64* %16, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  %62 = call i64 @_mdns_append_fqdn(i64* %59, i64* %60, i8** %61, i32 3)
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %52
  store i64 0, i64* %6, align 8
  br label %75

66:                                               ; preds = %52
  %67 = load i64*, i64** %7, align 8
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @_mdns_set_u16(i64* %67, i64 %68, i64 %69)
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %14, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %66, %65, %51, %19
  %76 = load i64, i64* %6, align 8
  ret i64 %76
}

declare dso_local i64 @_mdns_append_fqdn(i64*, i64*, i8**, i32) #1

declare dso_local i64 @_mdns_append_type(i64*, i64*, i32, i32, i32) #1

declare dso_local i32 @_mdns_set_u16(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
