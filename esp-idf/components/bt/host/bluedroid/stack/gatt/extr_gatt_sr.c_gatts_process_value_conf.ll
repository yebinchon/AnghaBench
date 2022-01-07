; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_process_value_conf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_process_value_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, i64 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }

@gatt_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GATT_MAX_SR_PROFILES = common dso_local global i64 0, align 8
@GATTS_REQ_TYPE_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unexpected handle value confirmation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatts_process_value_conf(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gatt_cb, i32 0, i32 0), align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = call i32 @btu_stop_timer(i32* %17)
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @GATT_HANDLE_IS_VALID(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @gatts_proc_ind_ack(%struct.TYPE_9__* %25, i64 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %72, %30
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @GATT_MAX_SR_PROFILES, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %31
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @gatt_sr_enqueue_cmd(%struct.TYPE_9__* %53, i64 %54, i64 %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @GATT_CREATE_CONN_ID(i32 %59, i32 %62)
  store i64 %63, i64* %10, align 8
  %64 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %64, i8 0, i64 16, i1 false)
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i64 %65, i64* %66, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @GATTS_REQ_TYPE_CONF, align 4
  %70 = call i32 @gatt_sr_send_req_callback(i64 %67, i32 %68, i32 %69, %struct.TYPE_11__* %11)
  br label %71

71:                                               ; preds = %52, %46, %40, %35
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %7, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 1
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %8, align 8
  br label %31

77:                                               ; preds = %31
  br label %78

78:                                               ; preds = %77, %22
  br label %81

79:                                               ; preds = %2
  %80 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %78
  ret void
}

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i64 @GATT_HANDLE_IS_VALID(i64) #1

declare dso_local i64 @gatts_proc_ind_ack(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @gatt_sr_enqueue_cmd(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i64 @GATT_CREATE_CONN_ID(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gatt_sr_send_req_callback(i64, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
