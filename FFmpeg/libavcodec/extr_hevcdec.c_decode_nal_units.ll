; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_decode_nal_units.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_decode_nal_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i64, %struct.TYPE_10__*, %struct.TYPE_14__*, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error splitting the input into NAL units.\0A\00", align 1
@HEVC_NAL_EOB_NUT = common dso_local global i64 0, align 8
@HEVC_NAL_EOS_NUT = common dso_local global i64 0, align 8
@AVDISCARD_ALL = common dso_local global i64 0, align 8
@AVDISCARD_NONREF = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error parsing NAL unit #%d.\0A\00", align 1
@FF_THREAD_FRAME = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32)* @decode_nal_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_nal_units(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 6
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ff_h2645_packet_split(%struct.TYPE_13__* %24, i32* %25, i32 %26, %struct.TYPE_14__* %29, i32 %32, i32 %35, i32 %40, i32 1, i32 0)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %3
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %47, i32 %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %184

51:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %95, %51
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %52
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @HEVC_NAL_EOB_NUT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %59
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HEVC_NAL_EOS_NUT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %71, %59
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %92

89:                                               ; preds = %83
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  br label %94

93:                                               ; preds = %71
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %92
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %52

98:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %160, %98
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %163

106:                                              ; preds = %99
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %112
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %11, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AVDISCARD_ALL, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %135, label %121

121:                                              ; preds = %106
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AVDISCARD_NONREF, align 8
  %128 = icmp sge i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %121
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @ff_hevc_nal_is_nonref(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129, %106
  br label %160

136:                                              ; preds = %129, %121
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %139 = call i32 @decode_nal_unit(%struct.TYPE_11__* %137, %struct.TYPE_12__* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %145, 2
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %147, %142, %136
  %150 = load i32, i32* %9, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 5
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = load i32, i32* @AV_LOG_WARNING, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %155, i32 %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  br label %164

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159, %135
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %99

163:                                              ; preds = %99
  br label %164

164:                                              ; preds = %163, %152
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = icmp ne %struct.TYPE_10__* %167, null
  br i1 %168, label %169, label %182

169:                                              ; preds = %164
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @FF_THREAD_FRAME, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* @INT_MAX, align 4
  %181 = call i32 @ff_thread_report_progress(i32* %179, i32 %180, i32 0)
  br label %182

182:                                              ; preds = %175, %169, %164
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %182, %44
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @ff_h2645_packet_split(%struct.TYPE_13__*, i32*, i32, %struct.TYPE_14__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i64 @ff_hevc_nal_is_nonref(i64) #1

declare dso_local i32 @decode_nal_unit(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ff_thread_report_progress(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
