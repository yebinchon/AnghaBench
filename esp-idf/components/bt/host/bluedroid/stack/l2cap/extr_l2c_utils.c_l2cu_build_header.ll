; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_build_header.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_build_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i32 }

@L2CAP_CMD_BUF_SIZE = common dso_local global i32 0, align 4
@L2CAP_SEND_CMD_OFFSET = common dso_local global i32 0, align 4
@HCI_DATA_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@L2CAP_PKT_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_CMD_OVERHEAD = common dso_local global i32 0, align 4
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@L2CAP_PKT_START_NON_FLUSHABLE = common dso_local global i32 0, align 4
@L2CAP_PKT_TYPE_SHIFT = common dso_local global i32 0, align 4
@l2cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@L2CAP_BLE_SIGNALLING_CID = common dso_local global i32 0, align 4
@L2CAP_SIGNALLING_CID = common dso_local global i32 0, align 4
@L2CAP_PKT_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @l2cu_build_header(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @L2CAP_CMD_BUF_SIZE, align 4
  %13 = call i64 @osi_malloc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %100

18:                                               ; preds = %4
  %19 = load i32, i32* @L2CAP_SEND_CMD_OFFSET, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @HCI_DATA_PREAMBLE_SIZE, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* @L2CAP_CMD_OVERHEAD, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 1
  %36 = bitcast %struct.TYPE_7__* %35 to i32*
  %37 = load i32, i32* @L2CAP_SEND_CMD_OFFSET, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %11, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %18
  %46 = load i32*, i32** %11, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @L2CAP_PKT_START_NON_FLUSHABLE, align 4
  %51 = load i32, i32* @L2CAP_PKT_TYPE_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %49, %52
  %54 = call i32 @UINT16_TO_STREAM(i32* %46, i32 %53)
  br label %63

55:                                               ; preds = %18
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @l2cb, i32 0, i32 0), align 4
  %61 = or i32 %59, %60
  %62 = call i32 @UINT16_TO_STREAM(i32* %56, i32 %61)
  br label %63

63:                                               ; preds = %55, %45
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* @L2CAP_CMD_OVERHEAD, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @UINT16_TO_STREAM(i32* %64, i32 %69)
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @L2CAP_CMD_OVERHEAD, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i32 @UINT16_TO_STREAM(i32* %71, i32 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %63
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* @L2CAP_BLE_SIGNALLING_CID, align 4
  %84 = call i32 @UINT16_TO_STREAM(i32* %82, i32 %83)
  br label %89

85:                                               ; preds = %63
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* @L2CAP_SIGNALLING_CID, align 4
  %88 = call i32 @UINT16_TO_STREAM(i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @UINT8_TO_STREAM(i32* %90, i32 %91)
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @UINT8_TO_STREAM(i32* %93, i32 %94)
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @UINT16_TO_STREAM(i32* %96, i32 %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %5, align 8
  br label %100

100:                                              ; preds = %89, %17
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %101
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
