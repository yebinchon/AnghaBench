; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anlmdn.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anlmdn.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, float, float, i32, i32*, %struct.TYPE_11__*, i32, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }

@AV_TIME_BASE = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"K:%d S:%d H:%d N:%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WEIGHT_LUT_SIZE = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 14
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AV_TIME_BASE, align 4
  %22 = call i8* @av_rescale(i32 %17, i32 %20, i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AV_TIME_BASE, align 4
  %33 = call i8* @av_rescale(i32 %28, i32 %31, i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i32 -1, i32* %38, align 8
  %39 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %44, 2
  %46 = add nsw i32 %45, 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = mul nsw i32 %58, 2
  %60 = add nsw i32 %51, %59
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = load i32, i32* @AV_LOG_DEBUG, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @av_log(%struct.TYPE_10__* %63, i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70, i32 %73, i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 9
  %80 = call i32 @av_frame_free(%struct.TYPE_11__** %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 11
  %83 = call i32 @av_frame_free(%struct.TYPE_11__** %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @ff_get_audio_buffer(%struct.TYPE_9__* %84, i32 %87)
  %89 = bitcast i8* %88 to %struct.TYPE_11__*
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 9
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 9
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = icmp ne %struct.TYPE_11__* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %1
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %2, align 4
  br label %195

99:                                               ; preds = %1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 2
  %105 = call i8* @ff_get_audio_buffer(%struct.TYPE_9__* %100, i32 %104)
  %106 = bitcast i8* %105 to %struct.TYPE_11__*
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 11
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 11
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = icmp ne %struct.TYPE_11__* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %99
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = call i32 @AVERROR(i32 %114)
  store i32 %115, i32* %2, align 4
  br label %195

116:                                              ; preds = %99
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @av_audio_fifo_alloc(i32 %119, i32 %122, i32 %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 10
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 10
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %116
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = call i32 @AVERROR(i32 %134)
  store i32 %135, i32* %2, align 4
  br label %195

136:                                              ; preds = %116
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 9
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i8**
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %148, %151
  %153 = call i32 @av_audio_fifo_write(i32 %139, i8** %145, i32 %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %136
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %195

158:                                              ; preds = %136
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 6
  %161 = load float, float* %160, align 8
  %162 = fdiv float 1.000000e+00, %161
  %163 = load float, float* @WEIGHT_LUT_SIZE, align 4
  %164 = fmul float %162, %163
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 5
  store float %164, float* %166, align 4
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %188, %158
  %168 = load i32, i32* %7, align 4
  %169 = sitofp i32 %168 to float
  %170 = load float, float* @WEIGHT_LUT_SIZE, align 4
  %171 = fcmp olt float %169, %170
  br i1 %171, label %172, label %191

172:                                              ; preds = %167
  %173 = load i32, i32* %7, align 4
  %174 = sub nsw i32 0, %173
  %175 = sitofp i32 %174 to float
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 5
  %178 = load float, float* %177, align 4
  %179 = fdiv float %175, %178
  store float %179, float* %8, align 4
  %180 = load float, float* %8, align 4
  %181 = call i32 @expf(float %180)
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 8
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %181, i32* %187, align 4
  br label %188

188:                                              ; preds = %172
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %167

191:                                              ; preds = %167
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 7
  %194 = call i32 @ff_anlmdn_init(i32* %193)
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %191, %156, %133, %113, %96
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i8* @av_rescale(i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_11__**) #1

declare dso_local i8* @ff_get_audio_buffer(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_audio_fifo_alloc(i32, i32, i32) #1

declare dso_local i32 @av_audio_fifo_write(i32, i8**, i32) #1

declare dso_local i32 @expf(float) #1

declare dso_local i32 @ff_anlmdn_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
