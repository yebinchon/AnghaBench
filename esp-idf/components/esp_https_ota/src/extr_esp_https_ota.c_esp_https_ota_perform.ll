; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_https_ota/src/extr_esp_https_ota.c_esp_https_ota_perform.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_https_ota/src/extr_esp_https_ota.c_esp_https_ota_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"esp_https_ota_perform: Invalid argument\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"esp_https_ota_perform: Invalid state\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@OTA_SIZE_UNKNOWN = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"esp_ota_begin failed (%s)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Connection closed\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Error: SSL data read error\00", align 1
@ESP_HTTPS_OTA_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Invalid ESP HTTPS OTA State\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_https_ota_perform(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %14, i32* %2, align 4
  br label %109

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 129
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ESP_FAIL, align 4
  store i32 %23, i32* %2, align 4
  br label %109

24:                                               ; preds = %15
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %103 [
    i32 129, label %28
    i32 128, label %63
  ]

28:                                               ; preds = %24
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OTA_SIZE_UNKNOWN, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  %35 = call i32 @esp_ota_begin(i32 %31, i32 %32, i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ESP_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load i32, i32* @TAG, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @esp_err_to_name(i32 %41)
  %43 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %109

45:                                               ; preds = %28
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 128, i32* %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @_ota_write(%struct.TYPE_3__* %53, i8* %57, i32 %60)
  store i32 %61, i32* %2, align 4
  br label %109

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %24, %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @esp_http_client_read(i32 %66, i64 %69, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @TAG, align 4
  %78 = call i32 @ESP_LOGI(i32 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %99

79:                                               ; preds = %63
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @TAG, align 4
  %84 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* @ESP_FAIL, align 4
  store i32 %85, i32* %2, align 4
  br label %109

86:                                               ; preds = %79
  %87 = load i32, i32* %6, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @_ota_write(%struct.TYPE_3__* %90, i8* %94, i32 %95)
  store i32 %96, i32* %2, align 4
  br label %109

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98, %76
  %100 = load i32, i32* @ESP_HTTPS_OTA_SUCCESS, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %107

103:                                              ; preds = %24
  %104 = load i32, i32* @TAG, align 4
  %105 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* @ESP_FAIL, align 4
  store i32 %106, i32* %2, align 4
  br label %109

107:                                              ; preds = %99
  %108 = load i32, i32* @ESP_OK, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %103, %89, %82, %52, %39, %20, %11
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @esp_ota_begin(i32, i32, i32*) #1

declare dso_local i32 @esp_err_to_name(i32) #1

declare dso_local i32 @_ota_write(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @esp_http_client_read(i32, i64, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
