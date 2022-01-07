; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_GAP_ConnWriteData.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_GAP_ConnWriteData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i32 }

@GAP_ERR_BAD_HANDLE = common dso_local global i64 0, align 8
@GAP_CCB_STATE_CONNECTED = common dso_local global i64 0, align 8
@GAP_ERR_BAD_STATE = common dso_local global i64 0, align 8
@L2CAP_FCR_ERTM_MODE = common dso_local global i64 0, align 8
@L2CAP_FCR_ERTM_BUF_SIZE = common dso_local global i32 0, align 4
@GAP_ERR_CONGESTED = common dso_local global i64 0, align 8
@GAP_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@BT_EVT_TO_BTU_SP_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"GAP_WriteData %d bytes\00", align 1
@FIXED_QUEUE_MAX_TIMEOUT = common dso_local global i32 0, align 4
@BT_PASS = common dso_local global i64 0, align 8
@L2CAP_DW_CONGESTED = common dso_local global i64 0, align 8
@L2CAP_DW_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GAP_ConnWriteData(i64 %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.TYPE_10__* @gap_find_ccb_by_handle(i64 %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %10, align 8
  %14 = load i64*, i64** %9, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* @GAP_ERR_BAD_HANDLE, align 8
  store i64 %18, i64* %5, align 8
  br label %127

19:                                               ; preds = %4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GAP_CCB_STATE_CONNECTED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @GAP_ERR_BAD_STATE, align 8
  store i64 %26, i64* %5, align 8
  br label %127

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %70, %27
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %116

31:                                               ; preds = %28
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @L2CAP_FCR_ERTM_MODE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i32, i32* @L2CAP_FCR_ERTM_BUF_SIZE, align 4
  %41 = call i64 @osi_malloc(i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %11, align 8
  %43 = icmp eq %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @GAP_ERR_CONGESTED, align 8
  store i64 %45, i64* %5, align 8
  br label %127

46:                                               ; preds = %39
  br label %55

47:                                               ; preds = %31
  %48 = load i32, i32* @GAP_DATA_BUF_SIZE, align 4
  %49 = call i64 @osi_malloc(i32 %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %11, align 8
  %51 = icmp eq %struct.TYPE_11__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @GAP_ERR_CONGESTED, align 8
  store i64 %53, i64* %5, align 8
  br label %127

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %46
  %56 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  br label %70

68:                                               ; preds = %55
  %69 = load i64, i64* %8, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i64 [ %67, %64 ], [ %69, %68 ]
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @BT_EVT_TO_BTU_SP_DATA, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 1
  %79 = bitcast %struct.TYPE_11__* %78 to i64*
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %79, i64 %83
  %85 = load i64*, i64** %7, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @memcpy(i64* %84, i64* %85, i64 %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %92
  store i64 %95, i64* %93, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = sub nsw i64 %99, %98
  store i64 %100, i64* %8, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %7, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 %103
  store i64* %105, i64** %7, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @GAP_TRACE_EVENT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %115 = call i32 @fixed_queue_enqueue(i32 %112, %struct.TYPE_11__* %113, i32 %114)
  br label %28

116:                                              ; preds = %28
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i64, i64* @BT_PASS, align 8
  store i64 %122, i64* %5, align 8
  br label %127

123:                                              ; preds = %116
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @gap_send_event(i64 %124)
  %126 = load i64, i64* @BT_PASS, align 8
  store i64 %126, i64* %5, align 8
  br label %127

127:                                              ; preds = %123, %121, %52, %44, %25, %17
  %128 = load i64, i64* %5, align 8
  ret i64 %128
}

declare dso_local %struct.TYPE_10__* @gap_find_ccb_by_handle(i64) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @GAP_TRACE_EVENT(i8*, i64) #1

declare dso_local i32 @fixed_queue_enqueue(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @gap_send_event(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
