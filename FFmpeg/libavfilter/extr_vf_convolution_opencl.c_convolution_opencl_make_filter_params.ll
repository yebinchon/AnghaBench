; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution_opencl.c_convolution_opencl_make_filter_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution_opencl.c_convolution_opencl_make_filter_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double*, i8**, i32*, i32*, i64*, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Matrix is sequence of 9, 25 or 49 signed numbers\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid matrix size:%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CL_MEM_READ_ONLY = common dso_local global i32 0, align 4
@CL_MEM_COPY_HOST_PTR = common dso_local global i32 0, align 4
@CL_MEM_HOST_NO_ACCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to create matrix buffer: %d.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @convolution_opencl_make_filter_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convolution_opencl_make_filter_params(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [4 x [49 x float]], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %4, align 8
  store float* null, float** %5, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %37, %1
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load double*, double** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  %30 = fdiv double %29, 2.550000e+02
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load double*, double** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  store double %30, double* %36, align 8
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %19

40:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %163, %40
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %166

44:                                               ; preds = %41
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %90, %44
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 49
  br i1 %60, label %61, label %99

61:                                               ; preds = %52
  %62 = load i8*, i8** %12, align 8
  %63 = call i8* @av_strtok(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %14)
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %99

67:                                               ; preds = %61
  store i8* null, i8** %12, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x [49 x float]], [4 x [49 x float]]* %15, i64 0, i64 %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [49 x float], [49 x float]* %71, i64 0, i64 %79
  %81 = call i32 @sscanf(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), float* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %67
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %85, i32 %86, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %2, align 4
  br label %252

90:                                               ; preds = %67
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %52

99:                                               ; preds = %66, %52
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 9
  br i1 %107, label %108, label %115

108:                                              ; preds = %99
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 3, i32* %114, align 4
  br label %162

115:                                              ; preds = %99
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 25
  br i1 %123, label %124, label %131

124:                                              ; preds = %115
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 5, i32* %130, align 4
  br label %161

131:                                              ; preds = %115
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 49
  br i1 %139, label %140, label %147

140:                                              ; preds = %131
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 7, i32* %146, align 4
  br label %160

147:                                              ; preds = %131
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = load i32, i32* @AV_LOG_ERROR, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %148, i32 %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = call i32 @AVERROR(i32 %158)
  store i32 %159, i32* %2, align 4
  br label %252

160:                                              ; preds = %140
  br label %161

161:                                              ; preds = %160, %124
  br label %162

162:                                              ; preds = %161, %108
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %41

166:                                              ; preds = %41
  store i32 0, i32* %10, align 4
  br label %167

167:                                              ; preds = %248, %166
  %168 = load i32, i32* %10, align 4
  %169 = icmp slt i32 %168, 4
  br i1 %169, label %170, label %251

170:                                              ; preds = %167
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = mul i64 4, %178
  store i64 %179, i64* %6, align 8
  %180 = load i64, i64* %6, align 8
  %181 = call float* @av_malloc(i64 %180)
  store float* %181, float** %5, align 8
  %182 = load float*, float** %5, align 8
  %183 = icmp ne float* %182, null
  br i1 %183, label %188, label %184

184:                                              ; preds = %170
  %185 = call i32 @av_freep(float** %5)
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = call i32 @AVERROR(i32 %186)
  store i32 %187, i32* %2, align 4
  br label %252

188:                                              ; preds = %170
  store i32 0, i32* %9, align 4
  br label %189

189:                                              ; preds = %211, %188
  %190 = load i32, i32* %9, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %190, %197
  br i1 %198, label %199, label %214

199:                                              ; preds = %189
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x [49 x float]], [4 x [49 x float]]* %15, i64 0, i64 %201
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [49 x float], [49 x float]* %202, i64 0, i64 %204
  %206 = load float, float* %205, align 4
  %207 = load float*, float** %5, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %207, i64 %209
  store float %206, float* %210, align 4
  br label %211

211:                                              ; preds = %199
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %9, align 4
  br label %189

214:                                              ; preds = %189
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @CL_MEM_READ_ONLY, align 4
  %222 = load i32, i32* @CL_MEM_COPY_HOST_PTR, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @CL_MEM_HOST_NO_ACCESS, align 4
  %225 = or i32 %223, %224
  %226 = load i64, i64* %6, align 8
  %227 = load float*, float** %5, align 8
  %228 = call i64 @clCreateBuffer(i32 %220, i32 %225, i64 %226, float* %227, i32* %8)
  store i64 %228, i64* %7, align 8
  %229 = load i64, i64* %7, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %214
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %233 = load i32, i32* @AV_LOG_ERROR, align 4
  %234 = load i32, i32* %8, align 4
  %235 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %232, i32 %233, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %234)
  %236 = call i32 @av_freep(float** %5)
  %237 = load i32, i32* @EIO, align 4
  %238 = call i32 @AVERROR(i32 %237)
  store i32 %238, i32* %2, align 4
  br label %252

239:                                              ; preds = %214
  %240 = load i64, i64* %7, align 8
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 4
  %243 = load i64*, i64** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  store i64 %240, i64* %246, align 8
  %247 = call i32 @av_freep(float** %5)
  br label %248

248:                                              ; preds = %239
  %249 = load i32, i32* %10, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %10, align 4
  br label %167

251:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %252

252:                                              ; preds = %251, %231, %184, %147, %84
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @sscanf(i8*, i8*, float*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local float* @av_malloc(i64) #1

declare dso_local i32 @av_freep(float**) #1

declare dso_local i64 @clCreateBuffer(i32, i32, i64, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
