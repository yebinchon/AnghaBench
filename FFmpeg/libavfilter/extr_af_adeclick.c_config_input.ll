; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_8__*, %struct.TYPE_12__*, i32, i64, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i64 }

@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_PI = common dso_local global i32 0, align 4
@M_PI_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %4, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %5, align 8
  %14 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 18
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %24, 1.000000e+03
  %26 = fptosi double %25 to i32
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 100
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %392

36:                                               ; preds = %1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+02
  %46 = fptosi double %45 to i32
  %47 = call i32 @FFMAX(i32 %46, i32 1)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %57, 1.000000e+03
  %59 = fptosi double %58 to i32
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sitofp i32 %64 to double
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %69, 1.000000e+02
  %71 = fsub double 1.000000e+00, %70
  %72 = fmul double %65, %71
  %73 = fptosi double %72 to i32
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %36
  %81 = load i32, i32* @EINVAL, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %2, align 4
  br label %392

83:                                               ; preds = %36
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @av_calloc(i32 %86, i32 4)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 8
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 8
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %83
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = call i32 @AVERROR(i32 %96)
  store i32 %97, i32* %2, align 4
  br label %392

98:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %132, %98
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %135

105:                                              ; preds = %99
  %106 = load i32, i32* @M_PI, align 4
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sdiv i32 %108, %111
  %113 = call i32 @sin(i32 %112)
  %114 = sitofp i32 %113 to double
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = sitofp i32 %117 to double
  %119 = fdiv double %118, 1.000000e+02
  %120 = fsub double 1.000000e+00, %119
  %121 = fmul double %114, %120
  %122 = load i32, i32* @M_PI_2, align 4
  %123 = sitofp i32 %122 to double
  %124 = fmul double %121, %123
  %125 = fptosi double %124 to i32
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 8
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  br label %132

132:                                              ; preds = %105
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %99

135:                                              ; preds = %99
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 12
  %138 = call i32 @av_frame_free(%struct.TYPE_12__** %137)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 17
  %141 = call i32 @av_frame_free(%struct.TYPE_12__** %140)
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 16
  %144 = call i32 @av_frame_free(%struct.TYPE_12__** %143)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 15
  %147 = call i32 @av_frame_free(%struct.TYPE_12__** %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i8* @ff_get_audio_buffer(%struct.TYPE_10__* %148, i32 %151)
  %153 = bitcast i8* %152 to %struct.TYPE_12__*
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 12
  store %struct.TYPE_12__* %153, %struct.TYPE_12__** %155, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @ff_get_audio_buffer(%struct.TYPE_10__* %156, i32 %159)
  %161 = bitcast i8* %160 to %struct.TYPE_12__*
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 17
  store %struct.TYPE_12__* %161, %struct.TYPE_12__** %163, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = mul nsw i32 %167, 2
  %169 = call i8* @ff_get_audio_buffer(%struct.TYPE_10__* %164, i32 %168)
  %170 = bitcast i8* %169 to %struct.TYPE_12__*
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 16
  store %struct.TYPE_12__* %170, %struct.TYPE_12__** %172, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i8* @ff_get_audio_buffer(%struct.TYPE_10__* %173, i32 %176)
  %178 = bitcast i8* %177 to %struct.TYPE_12__*
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 15
  store %struct.TYPE_12__* %178, %struct.TYPE_12__** %180, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 12
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = icmp ne %struct.TYPE_12__* %183, null
  br i1 %184, label %185, label %200

185:                                              ; preds = %135
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 17
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = icmp ne %struct.TYPE_12__* %188, null
  br i1 %189, label %190, label %200

190:                                              ; preds = %185
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 16
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = icmp ne %struct.TYPE_12__* %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 15
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = icmp ne %struct.TYPE_12__* %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %195, %190, %185, %135
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = call i32 @AVERROR(i32 %201)
  store i32 %202, i32* %2, align 4
  br label %392

203:                                              ; preds = %195
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @av_audio_fifo_alloc(i32 %206, i32 %209, i32 %212)
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 13
  store i32 %213, i32* %215, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 13
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %203
  %221 = load i32, i32* @ENOMEM, align 4
  %222 = call i32 @AVERROR(i32 %221)
  store i32 %222, i32* %2, align 4
  br label %392

223:                                              ; preds = %203
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 14
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %223
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 8
  %235 = sub nsw i32 %231, %234
  %236 = sdiv i32 %235, 2
  br label %238

237:                                              ; preds = %223
  br label %238

238:                                              ; preds = %237, %228
  %239 = phi i32 [ %236, %228 ], [ 0, %237 ]
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 9
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 8
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %260

246:                                              ; preds = %238
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 13
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 12
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to i8**
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 9
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @av_audio_fifo_write(i32 %249, i8** %255, i32 %258)
  br label %260

260:                                              ; preds = %246, %238
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 10
  store i32 %263, i32* %265, align 4
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i8* @av_calloc(i32 %268, i32 64)
  %270 = bitcast i8* %269 to %struct.TYPE_8__*
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 11
  store %struct.TYPE_8__* %270, %struct.TYPE_8__** %272, align 8
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 11
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %274, align 8
  %276 = icmp ne %struct.TYPE_8__* %275, null
  br i1 %276, label %280, label %277

277:                                              ; preds = %260
  %278 = load i32, i32* @ENOMEM, align 4
  %279 = call i32 @AVERROR(i32 %278)
  store i32 %279, i32* %2, align 4
  br label %392

280:                                              ; preds = %260
  store i32 0, i32* %6, align 4
  br label %281

281:                                              ; preds = %388, %280
  %282 = load i32, i32* %6, align 4
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %282, %285
  br i1 %286, label %287, label %391

287:                                              ; preds = %281
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 11
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %289, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i64 %292
  store %struct.TYPE_8__* %293, %struct.TYPE_8__** %7, align 8
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i8* @av_calloc(i32 %296, i32 1)
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 5
  store i8* %297, i8** %299, align 8
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 %302, 1
  %304 = call i8* @av_calloc(i32 %303, i32 1)
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 7
  store i8* %304, i8** %306, align 8
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = add nsw i32 %309, 1
  %311 = call i8* @av_calloc(i32 %310, i32 1)
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 6
  store i8* %311, i8** %313, align 8
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = add nsw i32 %316, 1
  %318 = call i8* @av_calloc(i32 %317, i32 1)
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 1
  store i8* %318, i8** %320, align 8
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = call i8* @av_calloc(i32 %323, i32 1)
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  store i8* %324, i8** %326, align 8
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i8* @av_calloc(i32 %329, i32 1)
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 4
  store i8* %330, i8** %332, align 8
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = call i8* @av_calloc(i32 %335, i32 1)
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 3
  store i8* %336, i8** %338, align 8
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = call i8* @av_calloc(i32 %341, i32 1)
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 2
  store i8* %342, i8** %344, align 8
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 7
  %347 = load i8*, i8** %346, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %384

349:                                              ; preds = %287
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 6
  %352 = load i8*, i8** %351, align 8
  %353 = icmp ne i8* %352, null
  br i1 %353, label %354, label %384

354:                                              ; preds = %349
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 5
  %357 = load i8*, i8** %356, align 8
  %358 = icmp ne i8* %357, null
  br i1 %358, label %359, label %384

359:                                              ; preds = %354
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 4
  %362 = load i8*, i8** %361, align 8
  %363 = icmp ne i8* %362, null
  br i1 %363, label %364, label %384

364:                                              ; preds = %359
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 3
  %367 = load i8*, i8** %366, align 8
  %368 = icmp ne i8* %367, null
  br i1 %368, label %369, label %384

369:                                              ; preds = %364
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 2
  %372 = load i8*, i8** %371, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %384

374:                                              ; preds = %369
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 1
  %377 = load i8*, i8** %376, align 8
  %378 = icmp ne i8* %377, null
  br i1 %378, label %379, label %384

379:                                              ; preds = %374
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = icmp ne i8* %382, null
  br i1 %383, label %387, label %384

384:                                              ; preds = %379, %374, %369, %364, %359, %354, %349, %287
  %385 = load i32, i32* @ENOMEM, align 4
  %386 = call i32 @AVERROR(i32 %385)
  store i32 %386, i32* %2, align 4
  br label %392

387:                                              ; preds = %379
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %6, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %6, align 4
  br label %281

391:                                              ; preds = %281
  store i32 0, i32* %2, align 4
  br label %392

392:                                              ; preds = %391, %384, %277, %220, %200, %95, %80, %33
  %393 = load i32, i32* %2, align 4
  ret i32 %393
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i32 @sin(i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_12__**) #1

declare dso_local i8* @ff_get_audio_buffer(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @av_audio_fifo_alloc(i32, i32, i32) #1

declare dso_local i32 @av_audio_fifo_write(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
