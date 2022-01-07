; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatt_sr_process_app_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatt_sr_process_app_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, i32, i32* }

@GATT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"gatt_sr_process_app_rsp gatt_if=%d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GATT_REQ_READ_MULTI = common dso_local global i64 0, align 8
@GATT_REQ_PREPARE_WRITE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@GATT_REQ_EXEC_WRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Exception!!! already has respond message\0A\00", align 1
@GATT_UNKNOWN_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"gatt_sr_process_app_rsp ret_code=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gatt_sr_process_app_rsp(%struct.TYPE_12__* %0, i64 %1, i32 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i64, i64* @GATT_SUCCESS, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @UNUSED(i32 %16)
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @gatt_sr_update_cback_cnt(%struct.TYPE_12__* %20, i64 %21, i32 %22, i32 %23)
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @GATT_REQ_READ_MULTI, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %6
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %12, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @process_read_multi_rsp(%struct.TYPE_13__* %30, i64 %31, i32* %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %28
  %39 = load i64, i64* @GATT_SUCCESS, align 8
  store i64 %39, i64* %7, align 8
  br label %150

40:                                               ; preds = %28
  br label %97

41:                                               ; preds = %6
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @GATT_REQ_PREPARE_WRITE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @GATT_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @gatt_sr_update_prep_cnt(%struct.TYPE_12__* %50, i64 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %45, %41
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @GATT_REQ_EXEC_WRITE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @GATT_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = call i32 @gatt_sr_reset_cback_cnt(%struct.TYPE_12__* %64)
  br label %66

66:                                               ; preds = %63, %59, %55
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = call i64 @gatt_sr_is_cback_cnt_zero(%struct.TYPE_12__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %66
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* @GATT_SUCCESS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %86, 1
  %88 = load i32*, i32** %13, align 8
  %89 = call i32* @attp_build_sr_msg(%struct.TYPE_12__* %85, i64 %87, i32* %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  store i32* %89, i32** %92, align 8
  br label %95

93:                                               ; preds = %78
  %94 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %84
  br label %96

96:                                               ; preds = %95, %74, %66
  br label %97

97:                                               ; preds = %96, %40
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = call i64 @gatt_sr_is_cback_cnt_zero(%struct.TYPE_12__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %146

101:                                              ; preds = %97
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GATT_SUCCESS, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %101
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = call i64 @attp_send_sr_msg(%struct.TYPE_12__* %115, i32* %119)
  store i64 %120, i64* %14, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  store i32* null, i32** %123, align 8
  br label %143

124:                                              ; preds = %108, %101
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @GATT_SUCCESS, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i64, i64* @GATT_UNKNOWN_ERROR, align 8
  store i64 %132, i64* %12, align 8
  br label %133

133:                                              ; preds = %131, %124
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @FALSE, align 4
  %142 = call i64 @gatt_send_error_rsp(%struct.TYPE_12__* %134, i64 %135, i64 %136, i32 %140, i32 %141)
  store i64 %142, i64* %14, align 8
  br label %143

143:                                              ; preds = %133, %114
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %145 = call i32 @gatt_dequeue_sr_cmd(%struct.TYPE_12__* %144)
  br label %146

146:                                              ; preds = %143, %97
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %147)
  %149 = load i64, i64* %14, align 8
  store i64 %149, i64* %7, align 8
  br label %150

150:                                              ; preds = %146, %38
  %151 = load i64, i64* %7, align 8
  ret i64 %151
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i64) #1

declare dso_local i32 @gatt_sr_update_cback_cnt(%struct.TYPE_12__*, i64, i32, i32) #1

declare dso_local i32 @process_read_multi_rsp(%struct.TYPE_13__*, i64, i32*, i32) #1

declare dso_local i32 @gatt_sr_update_prep_cnt(%struct.TYPE_12__*, i64, i32, i32) #1

declare dso_local i32 @gatt_sr_reset_cback_cnt(%struct.TYPE_12__*) #1

declare dso_local i64 @gatt_sr_is_cback_cnt_zero(%struct.TYPE_12__*) #1

declare dso_local i32* @attp_build_sr_msg(%struct.TYPE_12__*, i64, i32*) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i64 @attp_send_sr_msg(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @gatt_send_error_rsp(%struct.TYPE_12__*, i64, i64, i32, i32) #1

declare dso_local i32 @gatt_dequeue_sr_cmd(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
