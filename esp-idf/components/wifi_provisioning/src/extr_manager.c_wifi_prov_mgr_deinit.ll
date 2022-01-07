; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8*, i32 (i8*, i32, i32*)* }
%struct.TYPE_8__ = type { i8*, i32 (i8*, i32, i32*)* }
%struct.TYPE_7__ = type { i32 (i64)* }

@prov_ctx_lock = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Provisioning manager not initialized\00", align 1
@prov_ctx = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Manager already de-initialized\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"execute_event_cb : %d\00", align 1
@WIFI_PROV_END = common dso_local global i32 0, align 4
@WIFI_PROV_EVENT = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to post event WIFI_PROV_END\00", align 1
@WIFI_PROV_DEINIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to post event WIFI_PROV_DEINIT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wifi_prov_mgr_deinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32 (i8*, i32, i32*)*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32 (i8*, i32, i32*)*, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @prov_ctx_lock, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 @ESP_LOGE(i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %136

11:                                               ; preds = %0
  %12 = load i32, i32* @prov_ctx_lock, align 4
  %13 = call i32 @ACQUIRE_LOCK(i32 %12)
  %14 = call i32 @wifi_prov_mgr_stop_service(i32 1)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prov_ctx, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @prov_ctx_lock, align 4
  %24 = call i32 @RELEASE_LOCK(i32 %23)
  br label %136

25:                                               ; preds = %17, %11
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prov_ctx, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prov_ctx, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @cJSON_Delete(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prov_ctx, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prov_ctx, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32 (i64)*, i32 (i64)** %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prov_ctx, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 %45(i64 %48)
  br label %50

50:                                               ; preds = %40, %35
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prov_ctx, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %54, align 8
  store i32 (i8*, i32, i32*)* %55, i32 (i8*, i32, i32*)** %2, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prov_ctx, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %3, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prov_ctx, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %64, align 8
  store i32 (i8*, i32, i32*)* %65, i32 (i8*, i32, i32*)** %4, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prov_ctx, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %5, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prov_ctx, align 8
  %72 = call i32 @free(%struct.TYPE_11__* %71)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** @prov_ctx, align 8
  %73 = load i32, i32* @prov_ctx_lock, align 4
  %74 = call i32 @RELEASE_LOCK(i32 %73)
  %75 = load i32, i32* %1, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %50
  %78 = load i32, i32* @TAG, align 4
  %79 = load i32, i32* @WIFI_PROV_END, align 4
  %80 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %4, align 8
  %82 = icmp ne i32 (i8*, i32, i32*)* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %4, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* @WIFI_PROV_END, align 4
  %87 = call i32 %84(i8* %85, i32 %86, i32* null)
  br label %88

88:                                               ; preds = %83, %77
  %89 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %2, align 8
  %90 = icmp ne i32 (i8*, i32, i32*)* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %2, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = load i32, i32* @WIFI_PROV_END, align 4
  %95 = call i32 %92(i8* %93, i32 %94, i32* null)
  br label %96

96:                                               ; preds = %91, %88
  %97 = load i32, i32* @WIFI_PROV_EVENT, align 4
  %98 = load i32, i32* @WIFI_PROV_END, align 4
  %99 = load i32, i32* @portMAX_DELAY, align 4
  %100 = call i64 @esp_event_post(i32 %97, i32 %98, i32* null, i32 0, i32 %99)
  %101 = load i64, i64* @ESP_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32, i32* @TAG, align 4
  %105 = call i32 @ESP_LOGE(i32 %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %96
  br label %107

107:                                              ; preds = %106, %50
  %108 = load i32, i32* @TAG, align 4
  %109 = load i32, i32* @WIFI_PROV_DEINIT, align 4
  %110 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %4, align 8
  %112 = icmp ne i32 (i8*, i32, i32*)* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %4, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* @WIFI_PROV_DEINIT, align 4
  %117 = call i32 %114(i8* %115, i32 %116, i32* null)
  br label %118

118:                                              ; preds = %113, %107
  %119 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %2, align 8
  %120 = icmp ne i32 (i8*, i32, i32*)* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %2, align 8
  %123 = load i8*, i8** %3, align 8
  %124 = load i32, i32* @WIFI_PROV_DEINIT, align 4
  %125 = call i32 %122(i8* %123, i32 %124, i32* null)
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* @WIFI_PROV_EVENT, align 4
  %128 = load i32, i32* @WIFI_PROV_DEINIT, align 4
  %129 = load i32, i32* @portMAX_DELAY, align 4
  %130 = call i64 @esp_event_post(i32 %127, i32 %128, i32* null, i32 0, i32 %129)
  %131 = load i64, i64* @ESP_OK, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i32, i32* @TAG, align 4
  %135 = call i32 @ESP_LOGE(i32 %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %136

136:                                              ; preds = %8, %20, %133, %126
  ret void
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ACQUIRE_LOCK(i32) #1

declare dso_local i32 @wifi_prov_mgr_stop_service(i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

declare dso_local i32 @cJSON_Delete(i64) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i64 @esp_event_post(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
