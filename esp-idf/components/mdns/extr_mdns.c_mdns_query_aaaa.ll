; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_query_aaaa.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_query_aaaa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@MDNS_TYPE_AAAA = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@IPADDR_TYPE_V6 = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mdns_query_aaaa(i8* %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @_str_null_or_empty(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %15, i64* %4, align 8
  br label %66

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @MDNS_TYPE_AAAA, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @mdns_query(i8* %17, i32* null, i32* null, i32 %18, i32 %19, i32 1, %struct.TYPE_13__** %8)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %4, align 8
  br label %66

25:                                               ; preds = %16
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = icmp ne %struct.TYPE_13__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  store i64 %29, i64* %4, align 8
  br label %66

30:                                               ; preds = %25
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %10, align 8
  br label %34

34:                                               ; preds = %58, %30
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IPADDR_TYPE_V6, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(i32 %47, i32 %53, i32 16)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = call i32 @mdns_query_results_free(%struct.TYPE_13__* %55)
  %57 = load i64, i64* @ESP_OK, align 8
  store i64 %57, i64* %4, align 8
  br label %66

58:                                               ; preds = %37
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %10, align 8
  br label %34

62:                                               ; preds = %34
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = call i32 @mdns_query_results_free(%struct.TYPE_13__* %63)
  %65 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %62, %44, %28, %23, %14
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i64 @_str_null_or_empty(i8*) #1

declare dso_local i64 @mdns_query(i8*, i32*, i32*, i32, i32, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mdns_query_results_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
