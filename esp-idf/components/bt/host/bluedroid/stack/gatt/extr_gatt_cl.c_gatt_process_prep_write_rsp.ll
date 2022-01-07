; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_process_prep_write_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_process_prep_write_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"value resp op_code = %s len = %d\00", align 1
@GATT_PREP_WRITE_RSP_MIN_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"illegal prepare write response length, discard\00", align 1
@GATT_INVALID_PDU = common dso_local global i32 0, align 4
@GATT_WRITE_PREPARE = common dso_local global i64 0, align 8
@GATT_SUCCESS = common dso_local global i32 0, align 4
@GATT_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_process_prep_write_rsp(i32* %0, %struct.TYPE_10__* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load i32*, i32** %10, align 8
  store i32* %14, i32** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @gatt_dbg_op_name(i32 %15)
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17)
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @GATT_PREP_WRITE_RSP_MIN_LEN, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = load i32, i32* @GATT_INVALID_PDU, align 4
  %26 = call i32 @gatt_end_operation(%struct.TYPE_10__* %24, i32 %25, %struct.TYPE_9__* %11)
  br label %76

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @STREAM_TO_UINT16(i32 %29, i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @STREAM_TO_UINT16(i32 %33, i32* %34)
  %36 = load i64, i64* %9, align 8
  %37 = sub nsw i64 %36, 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @memcpy(i32 %40, i32* %41, i64 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GATT_WRITE_PREPARE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %27
  %51 = load i32, i32* @GATT_SUCCESS, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @gatt_end_operation(%struct.TYPE_10__* %54, i32 %57, %struct.TYPE_9__* %11)
  br label %76

59:                                               ; preds = %27
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GATT_WRITE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = call i32 @gatt_check_write_long_terminate(i32* %66, %struct.TYPE_10__* %67, %struct.TYPE_9__* %11)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = call i32 @gatt_send_prepare_write(i32* %71, %struct.TYPE_10__* %72)
  br label %74

74:                                               ; preds = %70, %65
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %22, %75, %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i32, i64) #2

declare dso_local i32 @gatt_dbg_op_name(i32) #2

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #2

declare dso_local i32 @gatt_end_operation(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @STREAM_TO_UINT16(i32, i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i64) #2

declare dso_local i32 @gatt_check_write_long_terminate(i32*, %struct.TYPE_10__*, %struct.TYPE_9__*) #2

declare dso_local i32 @gatt_send_prepare_write(i32*, %struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
