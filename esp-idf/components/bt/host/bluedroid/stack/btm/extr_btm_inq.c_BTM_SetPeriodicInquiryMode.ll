; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_SetPeriodicInquiryMode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_SetPeriodicInquiryMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32*, i64, %struct.TYPE_6__, i64, i64, %struct.TYPE_7__, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i32 }

@btm_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [84 x i8] c"BTM_SetPeriodicInquiryMode: mode: %d, dur: %d, rsps: %d, flt: %d, min: %d, max: %d\0A\00", align 1
@BTM_WRONG_MODE = common dso_local global i32 0, align 4
@BTM_BUSY = common dso_local global i32 0, align 4
@BTM_GENERAL_INQUIRY = common dso_local global i64 0, align 8
@BTM_LIMITED_INQUIRY = common dso_local global i64 0, align 8
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BTM_MIN_INQUIRY_LEN = common dso_local global i64 0, align 8
@BTM_MAX_INQUIRY_LENGTH = common dso_local global i64 0, align 8
@BTM_PER_INQ_MIN_MIN_PERIOD = common dso_local global i64 0, align 8
@BTM_PER_INQ_MAX_MIN_PERIOD = common dso_local global i64 0, align 8
@BTM_PER_INQ_MIN_MAX_PERIOD = common dso_local global i64 0, align 8
@BTM_LIMITED_INQUIRY_ACTIVE = common dso_local global i32 0, align 4
@BTM_PERIODIC_INQUIRY_ACTIVE = common dso_local global i32 0, align 4
@BTM_GENERAL_INQUIRY_ACTIVE = common dso_local global i32 0, align 4
@BTM_CLR_INQUIRY_FILTER = common dso_local global i64 0, align 8
@BTM_INQ_CLR_FILT_STATE = common dso_local global i32 0, align 4
@BTM_INQ_SET_FILT_STATE = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BTM_INQ_INACTIVE_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_SetPeriodicInquiryMode(%struct.TYPE_7__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 0), %struct.TYPE_8__** %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %17, i32 %20, i64 %23, i64 %24, i64 %25)
  %27 = call i32 (...) @BTM_IsDeviceUp()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %30, i32* %5, align 4
  br label %162

31:                                               ; preds = %4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %31
  %42 = load i32, i32* @BTM_BUSY, align 4
  store i32 %42, i32* %5, align 4
  br label %162

43:                                               ; preds = %36
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BTM_GENERAL_INQUIRY, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BTM_LIMITED_INQUIRY, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %56, i32* %5, align 4
  br label %162

57:                                               ; preds = %49, %43
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BTM_MIN_INQUIRY_LEN, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %91, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BTM_MAX_INQUIRY_LENGTH, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %91, label %69

69:                                               ; preds = %63
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %70, %73
  br i1 %74, label %91, label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @BTM_PER_INQ_MIN_MIN_PERIOD, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @BTM_PER_INQ_MAX_MIN_PERIOD, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @BTM_PER_INQ_MIN_MAX_PERIOD, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %83, %79, %75, %69, %63, %57
  %92 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %92, i32* %5, align 4
  br label %162

93:                                               ; preds = %87
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 6
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = bitcast %struct.TYPE_7__* %95 to i8*
  %98 = bitcast %struct.TYPE_7__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 32, i1 false)
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i32* %108, i32** %110, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @BTM_LIMITED_INQUIRY, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %93
  %117 = load i32, i32* @BTM_LIMITED_INQUIRY_ACTIVE, align 4
  %118 = load i32, i32* @BTM_PERIODIC_INQUIRY_ACTIVE, align 4
  %119 = or i32 %117, %118
  br label %124

120:                                              ; preds = %93
  %121 = load i32, i32* @BTM_GENERAL_INQUIRY_ACTIVE, align 4
  %122 = load i32, i32* @BTM_PERIODIC_INQUIRY_ACTIVE, align 4
  %123 = or i32 %121, %122
  br label %124

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %119, %116 ], [ %123, %120 ]
  %126 = sext i32 %125 to i64
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @BTM_CLR_INQUIRY_FILTER, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %124
  %135 = load i32, i32* @BTM_INQ_CLR_FILT_STATE, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i64, i64* @BTM_CLR_INQUIRY_FILTER, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  br label %145

141:                                              ; preds = %124
  %142 = load i32, i32* @BTM_INQ_SET_FILT_STATE, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %141, %134
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  %151 = call i32 @btm_set_inq_event_filter(i64 %148, i32* %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* @BTM_CMD_STARTED, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %145
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  store i32* null, i32** %156, align 8
  %157 = load i32, i32* @BTM_INQ_INACTIVE_STATE, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %154, %145
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %160, %91, %55, %41, %29
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @BTM_TRACE_API(i8*, i64, i64, i32, i64, i64, i64) #1

declare dso_local i32 @BTM_IsDeviceUp(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @btm_set_inq_event_filter(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
