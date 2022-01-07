; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_cleanup_upon_disc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_cleanup_upon_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i32 (i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_20__ = type { i64, i32, i32, i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"gatt_cleanup_upon_disc \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"found p_tcb \00", align 1
@GATT_CH_CLOSE = common dso_local global i32 0, align 4
@GATT_CL_MAX_LCB = common dso_local global i64 0, align 8
@gatt_cb = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"found p_clcb conn_id=%d clcb_idx=%d\00", align 1
@GATTC_OPTYPE_NONE = common dso_local global i64 0, align 8
@GATT_ERROR = common dso_local global i32 0, align 4
@GATT_MAX_APPS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"found p_reg tcb_idx=%d gatt_if=%d  conn_id=0x%x\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"exit gatt_cleanup_upon_disc \00", align 1
@osi_free_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_cleanup_upon_disc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %11, align 8
  %12 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.TYPE_18__* @gatt_find_tcb_by_addr(i32 %13, i32 %14)
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %7, align 8
  %16 = icmp ne %struct.TYPE_18__* %15, null
  br i1 %16, label %17, label %134

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = load i32, i32* @GATT_CH_CLOSE, align 4
  %21 = call i32 @gatt_set_ch_state(%struct.TYPE_18__* %19, i32 %20)
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %64, %17
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @GATT_CL_MAX_LCB, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %22
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gatt_cb, i32 0, i32 1), align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i64 %28
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %8, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %26
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = icmp eq %struct.TYPE_18__* %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %34
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 3
  %43 = call i32 @btu_stop_timer(i32* %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GATTC_OPTYPE_NONE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %40
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %58 = load i32, i32* @GATT_ERROR, align 4
  %59 = call i32 @gatt_end_operation(%struct.TYPE_20__* %57, i32 %58, i32* null)
  br label %60

60:                                               ; preds = %56, %40
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %62 = call i32 @gatt_clcb_dealloc(%struct.TYPE_20__* %61)
  br label %63

63:                                               ; preds = %60, %34, %26
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %22

67:                                               ; preds = %22
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  %70 = call i32 @btu_free_timer(i32* %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  %73 = call i32 @btu_free_timer(i32* %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = call i32 @gatt_free_pending_ind(%struct.TYPE_18__* %74)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = call i32 @gatt_free_pending_enc_queue(%struct.TYPE_18__* %76)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = call i32 @gatt_free_pending_prepare_write_queue(%struct.TYPE_18__* %78)
  store i64 0, i64* %9, align 8
  br label %80

80:                                               ; preds = %128, %67
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @GATT_MAX_APPS, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %131

84:                                               ; preds = %80
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gatt_cb, i32 0, i32 0), align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i64 %86
  store %struct.TYPE_19__* %87, %struct.TYPE_19__** %11, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %127

92:                                               ; preds = %84
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %95, align 8
  %97 = icmp ne i32 (i32, i32, i32, i32, i32, i32)* %96, null
  br i1 %97, label %98, label %127

98:                                               ; preds = %92
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @GATT_CREATE_CONN_ID(i32 %101, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %111, i32 %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %116, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @FALSE, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 %117(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %98, %92, %84
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %9, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %9, align 8
  br label %80

131:                                              ; preds = %80
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %133 = call i32 @memset(%struct.TYPE_18__* %132, i32 0, i32 24)
  br label %137

134:                                              ; preds = %3
  %135 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %136 = call i32 (...) @BTM_Recovery_Pre_State()
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @gatt_delete_dev_from_srv_chg_clt_list(i32 %138)
  ret void
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, ...) #1

declare dso_local %struct.TYPE_18__* @gatt_find_tcb_by_addr(i32, i32) #1

declare dso_local i32 @gatt_set_ch_state(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @gatt_end_operation(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @gatt_clcb_dealloc(%struct.TYPE_20__*) #1

declare dso_local i32 @btu_free_timer(i32*) #1

declare dso_local i32 @gatt_free_pending_ind(%struct.TYPE_18__*) #1

declare dso_local i32 @gatt_free_pending_enc_queue(%struct.TYPE_18__*) #1

declare dso_local i32 @gatt_free_pending_prepare_write_queue(%struct.TYPE_18__*) #1

declare dso_local i32 @GATT_CREATE_CONN_ID(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @BTM_Recovery_Pre_State(...) #1

declare dso_local i32 @gatt_delete_dev_from_srv_chg_clt_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
