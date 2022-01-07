; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_data_process.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_data_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@GATT_WRITE_CMD_MASK = common dso_local global i32 0, align 4
@GATT_OP_CODE_MAX = common dso_local global i32 0, align 4
@GATT_SIGN_CMD_WRITE = common dso_local global i32 0, align 4
@GATT_COMMAND_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ATT - Rcvd L2CAP data, unknown cmd: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"ATT - Rcvd L2CAP data, unknown req: 0x%x\0A\00", align 1
@GATT_REQ_NOT_SUPPORTED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid data length, ignore\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_data_process(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 1
  %11 = bitcast %struct.TYPE_5__* %10 to i32*
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  store i32* %16, i32** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %80

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  store i64 %25, i64* %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @STREAM_TO_UINT8(i32 %26, i32* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GATT_WRITE_CMD_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @GATT_OP_CODE_MAX, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @GATT_SIGN_CMD_WRITE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = call i32 @gatt_verify_signature(i32* %41, %struct.TYPE_5__* %42)
  br label %61

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = srem i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @gatt_server_handle_client_req(i32* %49, i32 %50, i64 %51, i32* %52)
  br label %60

54:                                               ; preds = %44
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i64, i64* %8, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @gatt_client_handle_server_rsp(i32* %55, i32 %56, i64 %57, i32* %58)
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %40
  br label %79

62:                                               ; preds = %21
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @GATT_COMMAND_FLAG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i8*, ...) @GATT_TRACE_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %78

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i8*, ...) @GATT_TRACE_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* @GATT_REQ_NOT_SUPPORTED, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i32 @gatt_send_error_rsp(i32* %73, i32 %74, i32 %75, i32 0, i32 %76)
  br label %78

78:                                               ; preds = %70, %67
  br label %79

79:                                               ; preds = %78, %61
  br label %82

80:                                               ; preds = %2
  %81 = call i32 (i8*, ...) @GATT_TRACE_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %79
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = call i32 @osi_free(%struct.TYPE_5__* %83)
  ret void
}

declare dso_local i32 @STREAM_TO_UINT8(i32, i32*) #1

declare dso_local i32 @gatt_verify_signature(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @gatt_server_handle_client_req(i32*, i32, i64, i32*) #1

declare dso_local i32 @gatt_client_handle_server_rsp(i32*, i32, i64, i32*) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*, ...) #1

declare dso_local i32 @gatt_send_error_rsp(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
