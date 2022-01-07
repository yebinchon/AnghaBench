; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_scan.c_wifi_prov_scan_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_scan.c_wifi_prov_scan_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to unpack scan message\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Command dispatcher error %d\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid encoding for response\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"System out of memory\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Response packet size : %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wifi_prov_scan_handler(i32 %0, i32* %1, i32 %2, i32** %3, i32* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i64, i64* @ESP_OK, align 8
  store i64 %17, i64* %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.TYPE_10__* @wi_fi_scan_payload__unpack(i32* null, i32 %18, i32* %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %14, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @TAG, align 4
  %25 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %26, i64* %7, align 8
  br label %82

27:                                               ; preds = %6
  %28 = call i32 @wi_fi_scan_payload__init(%struct.TYPE_10__* %15)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = call i64 @wifi_prov_scan_cmd_dispatcher(%struct.TYPE_10__* %29, %struct.TYPE_10__* %15, i8* %30)
  store i64 %31, i64* %16, align 8
  %32 = load i64, i64* %16, align 8
  %33 = load i64, i64* @ESP_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i32, i32* @TAG, align 4
  %37 = load i64, i64* %16, align 8
  %38 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* @ESP_FAIL, align 8
  store i64 %39, i64* %16, align 8
  br label %76

40:                                               ; preds = %27
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = call i32 @wi_fi_scan_payload__get_packed_size(%struct.TYPE_10__* %15)
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i32, i32* @TAG, align 4
  %53 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i64, i64* @ESP_FAIL, align 8
  store i64 %54, i64* %16, align 8
  br label %76

55:                                               ; preds = %40
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @malloc(i32 %57)
  %59 = inttoptr i64 %58 to i32*
  %60 = load i32**, i32*** %11, align 8
  store i32* %59, i32** %60, align 8
  %61 = load i32**, i32*** %11, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* @TAG, align 4
  %66 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %67, i64* %16, align 8
  br label %76

68:                                               ; preds = %55
  %69 = load i32**, i32*** %11, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @wi_fi_scan_payload__pack(%struct.TYPE_10__* %15, i32* %70)
  %72 = load i32, i32* @TAG, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ESP_LOGD(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %68, %64, %51, %35
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %78 = call i32 @wi_fi_scan_payload__free_unpacked(%struct.TYPE_10__* %77, i32* null)
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @wifi_prov_scan_cmd_cleanup(%struct.TYPE_10__* %15, i8* %79)
  %81 = load i64, i64* %16, align 8
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %76, %23
  %83 = load i64, i64* %7, align 8
  ret i64 %83
}

declare dso_local %struct.TYPE_10__* @wi_fi_scan_payload__unpack(i32*, i32, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @wi_fi_scan_payload__init(%struct.TYPE_10__*) #1

declare dso_local i64 @wifi_prov_scan_cmd_dispatcher(%struct.TYPE_10__*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @wi_fi_scan_payload__get_packed_size(%struct.TYPE_10__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @wi_fi_scan_payload__pack(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @wi_fi_scan_payload__free_unpacked(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @wifi_prov_scan_cmd_cleanup(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
