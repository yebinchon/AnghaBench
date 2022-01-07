; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/modbus_master/main/extr_sense_main.c_trigger_operation_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/modbus_master/main/extr_sense_main.c_trigger_operation_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32*, %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { float, float, i64 }

@CID_RELAY_P2 = common dso_local global i32 0, align 4
@CID_RELAY_P1 = common dso_local global i32 0, align 4
@MODBUS_VALUE_UPDATE_TIMEOUT_US = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@SENSE_MAIN_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Update failed for cid: %u, %s(%s) = %d, %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"cid: %u, (%s) = %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"cid: %u, %s(%s) = %.2f\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"The values within the limit, then release relay.\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"The value exceeds limit, then set relay.\00", align 1
@TIMEOUT_UPDATE_CIDS_TICS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @trigger_operation_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trigger_operation_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca float, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 56, i1 false)
  br label %13

13:                                               ; preds = %1, %146
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %122, %13
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @CID_RELAY_P2, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %125

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @sense_modbus_get_cid_data(i32 %19, %struct.TYPE_5__* %8)
  %21 = call i32 @ESP_ERROR_CHECK_WITHOUT_ABORT(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = call i64 (...) @esp_timer_get_time()
  store i64 %32, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to float*
  %36 = load float, float* %35, align 4
  store float %36, float* %3, align 4
  %37 = load float, float* %3, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load float, float* %39, align 8
  %41 = fcmp ogt float %37, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %18
  %43 = load float, float* %3, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load float, float* %45, align 4
  %47 = fcmp olt float %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %18
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @CID_RELAY_P1, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %48, %42
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MODBUS_VALUE_UPDATE_TIMEOUT_US, align 8
  %58 = add nsw i64 %56, %57
  %59 = icmp sgt i64 %54, %58
  br i1 %59, label %60, label %121

60:                                               ; preds = %53
  store float 0.000000e+00, float* %3, align 4
  %61 = load i32, i32* %9, align 4
  %62 = bitcast float* %3 to i8*
  %63 = call i64 @sense_modbus_read_value(i32 %61, i8* %62)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @ESP_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %60
  %68 = load i32, i32* @SENSE_MAIN_TAG, align 4
  %69 = load i32, i32* %9, align 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = bitcast i32* %71 to i8*
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %10, align 8
  %80 = call i64 @esp_err_to_name(i64 %79)
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @ESP_LOGE(i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %69, i8* %72, i8* %75, i32 %78, i8* %81)
  br label %120

83:                                               ; preds = %60
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @CID_RELAY_P1, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = and i32 %90, %94
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  store i8* %99, i8** %11, align 8
  %100 = load i32, i32* @SENSE_MAIN_TAG, align 4
  %101 = load i32, i32* %9, align 4
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = bitcast i32* %103 to i8*
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %101, i8* %104, i8* %105)
  br label %119

107:                                              ; preds = %83
  %108 = load i32, i32* @SENSE_MAIN_TAG, align 4
  %109 = load i32, i32* %9, align 4
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = bitcast i32* %111 to i8*
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = load float, float* %3, align 4
  %117 = fpext float %116 to double
  %118 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %109, i8* %112, i8* %115, double %117)
  br label %119

119:                                              ; preds = %107, %87
  br label %120

120:                                              ; preds = %119, %67
  br label %121

121:                                              ; preds = %120, %53
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %14

125:                                              ; preds = %14
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i32, i32* @SENSE_MAIN_TAG, align 4
  %133 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %132, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %134 = load i32, i32* @CID_RELAY_P1, align 4
  %135 = call i32 @sense_modbus_send_value(i32 %134, i32* %5)
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %131, %128
  br label %146

137:                                              ; preds = %125
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* @SENSE_MAIN_TAG, align 4
  %142 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %141, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  store i32 255, i32* %5, align 4
  %143 = load i32, i32* @CID_RELAY_P1, align 4
  %144 = call i32 @sense_modbus_send_value(i32 %143, i32* %5)
  store i32 1, i32* %7, align 4
  br label %145

145:                                              ; preds = %140, %137
  br label %146

146:                                              ; preds = %145, %136
  %147 = load i32, i32* @TIMEOUT_UPDATE_CIDS_TICS, align 4
  %148 = call i32 @vTaskDelay(i32 %147)
  br label %13
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ESP_ERROR_CHECK_WITHOUT_ABORT(i32) #2

declare dso_local i32 @sense_modbus_get_cid_data(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @esp_timer_get_time(...) #2

declare dso_local i64 @sense_modbus_read_value(i32, i8*) #2

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, i8*, i8*, i32, i8*) #2

declare dso_local i64 @esp_err_to_name(i64) #2

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #2

declare dso_local i32 @sense_modbus_send_value(i32, i32*) #2

declare dso_local i32 @vTaskDelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
