; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adelay.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adelay.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, float, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8*, float, i32, i32, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { float, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Delay must be non negative number.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@delay_channel_u8p = common dso_local global i32 0, align 4
@delay_channel_s16p = common dso_local global i32 0, align 4
@delay_channel_s32p = common dso_local global i32 0, align 4
@delay_channel_fltp = common dso_local global i32 0, align 4
@delay_channel_dblp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %4, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %5, align 8
  store i8* null, i8** %8, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_8__* @av_calloc(i32 %27, i32 8)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 6
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %289

38:                                               ; preds = %1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @av_get_bytes_per_sample(i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %111, %38
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %114

59:                                               ; preds = %53
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %64
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %10, align 8
  store i8 0, i8* %13, align 1
  %66 = load i8*, i8** %6, align 8
  %67 = call i8* @av_strtok(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i8* %67, i8** %7, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %59
  br label %114

70:                                               ; preds = %59
  store i8* null, i8** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 (i8*, i8*, float*, ...) @av_sscanf(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float* %73, i8* %13)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 2
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load i8, i8* %13, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 83
  br i1 %80, label %81, label %99

81:                                               ; preds = %77, %70
  %82 = load i8, i8* %13, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 115
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, double 1.000000e+00, double 1.000000e+03
  %87 = fptrunc double %86 to float
  store float %87, float* %12, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 (i8*, i8*, float*, ...) @av_sscanf(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %11)
  %90 = load float, float* %11, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load float, float* %92, align 8
  %94 = fmul float %90, %93
  %95 = load float, float* %12, align 4
  %96 = fdiv float %94, %95
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store float %96, float* %98, align 4
  br label %99

99:                                               ; preds = %81, %77
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load float, float* %101, align 4
  %103 = fcmp olt float %102, 0.000000e+00
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = load i32, i32* @AV_LOG_ERROR, align 4
  %107 = call i32 @av_log(%struct.TYPE_11__* %105, i32 %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %2, align 4
  br label %289

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %53

114:                                              ; preds = %69, %53
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %151

119:                                              ; preds = %114
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %151

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %147, %122
  %125 = load i32, i32* %15, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %124
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 6
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load float, float* %138, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 6
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store float %139, float* %146, align 4
  br label %147

147:                                              ; preds = %130
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %124

150:                                              ; preds = %124
  br label %151

151:                                              ; preds = %150, %119, %114
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 6
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load float, float* %156, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  store float %157, float* %159, align 8
  store i32 1, i32* %9, align 4
  br label %160

160:                                              ; preds = %182, %151
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %185

166:                                              ; preds = %160
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 6
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i64 %171
  store %struct.TYPE_8__* %172, %struct.TYPE_8__** %16, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load float, float* %174, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load float, float* %177, align 4
  %179 = call float @FFMIN(float %175, float %178)
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  store float %179, float* %181, align 8
  br label %182

182:                                              ; preds = %166
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %9, align 4
  br label %160

185:                                              ; preds = %160
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = load float, float* %187, align 8
  %189 = fcmp une float %188, 0.000000e+00
  br i1 %189, label %190, label %215

190:                                              ; preds = %185
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %211, %190
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %214

197:                                              ; preds = %191
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 6
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %202
  store %struct.TYPE_8__* %203, %struct.TYPE_8__** %17, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 2
  %206 = load float, float* %205, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load float, float* %208, align 4
  %210 = fsub float %209, %206
  store float %210, float* %208, align 4
  br label %211

211:                                              ; preds = %197
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %9, align 4
  br label %191

214:                                              ; preds = %191
  br label %215

215:                                              ; preds = %214, %185
  store i32 0, i32* %9, align 4
  br label %216

216:                                              ; preds = %261, %215
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %222, label %264

222:                                              ; preds = %216
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 6
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i64 %227
  store %struct.TYPE_8__* %228, %struct.TYPE_8__** %18, align 8
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load float, float* %230, align 4
  %232 = fcmp une float %231, 0.000000e+00
  br i1 %232, label %234, label %233

233:                                              ; preds = %222
  br label %261

234:                                              ; preds = %222
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load float, float* %236, align 4
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @av_malloc_array(float %237, i32 %240)
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 4
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %234
  %249 = load i32, i32* @ENOMEM, align 4
  %250 = call i32 @AVERROR(i32 %249)
  store i32 %250, i32* %2, align 4
  br label %289

251:                                              ; preds = %234
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load float, float* %256, align 4
  %258 = call i32 @FFMAX(i32 %254, float %257)
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 4
  store i32 %258, i32* %260, align 8
  br label %261

261:                                              ; preds = %251, %233
  %262 = load i32, i32* %9, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %9, align 4
  br label %216

264:                                              ; preds = %216
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  switch i32 %267, label %288 [
    i32 128, label %268
    i32 130, label %272
    i32 129, label %276
    i32 131, label %280
    i32 132, label %284
  ]

268:                                              ; preds = %264
  %269 = load i32, i32* @delay_channel_u8p, align 4
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 3
  store i32 %269, i32* %271, align 4
  br label %288

272:                                              ; preds = %264
  %273 = load i32, i32* @delay_channel_s16p, align 4
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 3
  store i32 %273, i32* %275, align 4
  br label %288

276:                                              ; preds = %264
  %277 = load i32, i32* @delay_channel_s32p, align 4
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 3
  store i32 %277, i32* %279, align 4
  br label %288

280:                                              ; preds = %264
  %281 = load i32, i32* @delay_channel_fltp, align 4
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 4
  br label %288

284:                                              ; preds = %264
  %285 = load i32, i32* @delay_channel_dblp, align 4
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 4
  br label %288

288:                                              ; preds = %264, %284, %280, %276, %272, %268
  store i32 0, i32* %2, align 4
  br label %289

289:                                              ; preds = %288, %248, %104, %35
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local %struct.TYPE_8__* @av_calloc(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @av_sscanf(i8*, i8*, float*, ...) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local float @FFMIN(float, float) #1

declare dso_local i32 @av_malloc_array(float, i32) #1

declare dso_local i32 @FFMAX(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
