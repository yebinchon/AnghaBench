; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_event_filter_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_event_filter_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__, i32, i64, i32 (i64*)* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@btm_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [71 x i8] c"btm_event_filter_complete: inq_active:0x%x state:%d inqfilt_active:%d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@HCI_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"BTM Warning: Set Event Filter Failed (HCI returned 0x%x)\0A\00", align 1
@BTM_ERR_PROCESSING = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTM_INQ_INACTIVE_STATE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@BTM_BR_INQUIRY_MASK = common dso_local global i32 0, align 4
@BTM_INQUIRY_INACTIVE = common dso_local global i32 0, align 4
@BTM_INQ_CLR_FILT_STATE = common dso_local global i64 0, align 8
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTM_INQ_SET_FILT_STATE = common dso_local global i64 0, align 8
@BTM_INQ_ACTIVE_STATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_event_filter_complete(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32 (i64*)**, align 8
  store i64* %0, i64** %2, align 8
  store %struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0), %struct.TYPE_6__** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  %9 = load i32 (i64*)*, i32 (i64*)** %8, align 8
  %10 = bitcast i32 (i64*)* %9 to i32 (i64*)**
  store i32 (i64*)** %10, i32 (i64*)*** %6, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0, i32 3), align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %14 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %12, i64 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  br label %133

24:                                               ; preds = %1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TRUE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %133

30:                                               ; preds = %24
  %31 = load i64, i64* %3, align 8
  %32 = load i64*, i64** %2, align 8
  %33 = call i32 @STREAM_TO_UINT8(i64 %31, i64* %32)
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @HCI_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* @BTM_ERR_PROCESSING, align 8
  store i64 %40, i64* %4, align 8
  br label %43

41:                                               ; preds = %30
  %42 = load i64, i64* @BTM_SUCCESS, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BTM_INQ_INACTIVE_STATE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i8*, i8** @FALSE, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i32 (i64*)**, i32 (i64*)*** %6, align 8
  %55 = icmp ne i32 (i64*)** %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32 (i64*)**, i32 (i64*)*** %6, align 8
  %58 = load i32 (i64*)*, i32 (i64*)** %57, align 8
  %59 = call i32 %58(i64* %4)
  br label %60

60:                                               ; preds = %56, %49
  br label %132

61:                                               ; preds = %43
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @BTM_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %61
  %66 = load i64, i64* @BTM_ERR_PROCESSING, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BTM_BR_INQUIRY_MASK, align 4
  %72 = and i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = call i32 @btm_process_inq_complete(i64 %66, i64 %73)
  %75 = load i8*, i8** @FALSE, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @BTM_INQUIRY_INACTIVE, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i64, i64* @BTM_INQ_INACTIVE_STATE, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %133

85:                                               ; preds = %61
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @BTM_INQ_CLR_FILT_STATE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %85
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = call i64 @btm_set_inq_event_filter(i32 %95, i32* %98)
  store i64 %99, i64* %4, align 8
  %100 = load i64, i64* @BTM_CMD_STARTED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %91
  %103 = load i64, i64* @BTM_INQ_SET_FILT_STATE, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %120

106:                                              ; preds = %91
  %107 = load i8*, i8** @FALSE, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* @BTM_ERR_PROCESSING, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @BTM_BR_INQUIRY_MASK, align 4
  %117 = and i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = call i32 @btm_process_inq_complete(i64 %111, i64 %118)
  br label %120

120:                                              ; preds = %106, %102
  br label %131

121:                                              ; preds = %85
  %122 = load i64, i64* @BTM_INQ_ACTIVE_STATE, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i8*, i8** @FALSE, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = call i32 @btm_initiate_inquiry(%struct.TYPE_6__* %129)
  br label %131

131:                                              ; preds = %121, %120
  br label %132

132:                                              ; preds = %131, %60
  br label %133

133:                                              ; preds = %19, %65, %132, %24
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, i64, i64) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @BTM_TRACE_WARNING(i8*, i64) #1

declare dso_local i32 @btm_process_inq_complete(i64, i64) #1

declare dso_local i64 @btm_set_inq_event_filter(i32, i32*) #1

declare dso_local i32 @btm_initiate_inquiry(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
