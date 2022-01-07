; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_parse_cinespace.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_parse_cinespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.rgbvec* }
%struct.TYPE_7__ = type { i8*, i8*, i8* }
%struct.rgbvec = type { i32, i32, i32 }

@MAX_LINE_SIZE = common dso_local global i32 0, align 4
@__const.parse_cinespace.in_max = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@__const.parse_cinespace.out_max = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@.str = private unnamed_addr constant [11 x i8] c"CSPLUTV100\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Not cineSpace LUT format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"3D\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Not 3D LUT format\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"BEGIN METADATA\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"END METADATA\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Unsupported number of pre-lut points.\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%f %f\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Unsupported size combination: %dx%dx%d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @parse_cinespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cinespace(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.rgbvec*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %6, align 8
  %30 = load i32, i32* @MAX_LINE_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %7, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  %34 = bitcast [3 x float]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %34, i8 0, i64 12, i1 false)
  %35 = bitcast [3 x float]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 bitcast ([3 x float]* @__const.parse_cinespace.in_max to i8*), i64 12, i1 false)
  %36 = bitcast [3 x float]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %36, i8 0, i64 12, i1 false)
  %37 = bitcast [3 x float]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 bitcast ([3 x float]* @__const.parse_cinespace.out_max to i8*), i64 12, i1 false)
  store i32 0, i32* %14, align 4
  %38 = call i32 @skip_line(i8* %33)
  %39 = call i32 @NEXT_LINE(i32 %38)
  %40 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %43, i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %289

48:                                               ; preds = %2
  %49 = call i32 @skip_line(i8* %33)
  %50 = call i32 @NEXT_LINE(i32 %49)
  %51 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %54, i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = call i32 @AVERROR(i32 %57)
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %289

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %251, %70, %66, %59
  br label %61

61:                                               ; preds = %60
  %62 = call i32 @skip_line(i8* %33)
  %63 = call i32 @NEXT_LINE(i32 %62)
  %64 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 14)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 1, i32* %14, align 4
  br label %60

67:                                               ; preds = %61
  %68 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 12)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 0, i32* %14, align 4
  br label %60

71:                                               ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %251

74:                                               ; preds = %71
  store i32 0, i32* %21, align 4
  br label %75

75:                                               ; preds = %116, %74
  %76 = load i32, i32* %21, align 4
  %77 = icmp slt i32 %76, 3
  br i1 %77, label %78, label %119

78:                                               ; preds = %75
  %79 = call i32 @strtol(i8* %33, i32* null, i32 0)
  store i32 %79, i32* %22, align 4
  %80 = load i32, i32* %22, align 4
  %81 = icmp ne i32 %80, 2
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %83, i32 %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %86 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %289

87:                                               ; preds = %78
  %88 = call i32 @skip_line(i8* %33)
  %89 = call i32 @NEXT_LINE(i32 %88)
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 %91
  %93 = load i32, i32* %21, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 %94
  %96 = call i32 (i8*, i8*, ...) @av_sscanf(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), float* %92, float* %95)
  %97 = icmp ne i32 %96, 2
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %99, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %289

100:                                              ; preds = %87
  %101 = call i32 @skip_line(i8* %33)
  %102 = call i32 @NEXT_LINE(i32 %101)
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 %104
  %106 = load i32, i32* %21, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 %107
  %109 = call i32 (i8*, i8*, ...) @av_sscanf(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), float* %105, float* %108)
  %110 = icmp ne i32 %109, 2
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %112, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %289

113:                                              ; preds = %100
  %114 = call i32 @skip_line(i8* %33)
  %115 = call i32 @NEXT_LINE(i32 %114)
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %21, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %21, align 4
  br label %75

119:                                              ; preds = %75
  %120 = call i32 (i8*, i8*, ...) @av_sscanf(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %18, i32* %19, i32* %20)
  %121 = icmp ne i32 %120, 3
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* @EINVAL, align 4
  %124 = call i32 @AVERROR(i32 %123)
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %289

125:                                              ; preds = %119
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %20, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %129, %125
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %20, align 4
  %139 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %134, i32 %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %140, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %289

141:                                              ; preds = %129
  %142 = load i32, i32* %18, align 4
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %15, align 4
  %145 = mul nsw i32 %143, %144
  store i32 %145, i32* %16, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @allocate_3dlut(%struct.TYPE_9__* %146, i32 %147)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %141
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %289

153:                                              ; preds = %141
  store i32 0, i32* %23, align 4
  br label %154

154:                                              ; preds = %247, %153
  %155 = load i32, i32* %23, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %250

158:                                              ; preds = %154
  store i32 0, i32* %24, align 4
  br label %159

159:                                              ; preds = %243, %158
  %160 = load i32, i32* %24, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %246

163:                                              ; preds = %159
  store i32 0, i32* %25, align 4
  br label %164

164:                                              ; preds = %239, %163
  %165 = load i32, i32* %25, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %242

168:                                              ; preds = %164
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load %struct.rgbvec*, %struct.rgbvec** %170, align 8
  %172 = load i32, i32* %25, align 4
  %173 = load i32, i32* %16, align 4
  %174 = mul nsw i32 %172, %173
  %175 = load i32, i32* %24, align 4
  %176 = load i32, i32* %15, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %174, %177
  %179 = load i32, i32* %23, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %171, i64 %181
  store %struct.rgbvec* %182, %struct.rgbvec** %26, align 8
  %183 = load i32, i32* %23, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %168
  %186 = load i32, i32* %24, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %25, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188, %185, %168
  %192 = call i32 @skip_line(i8* %33)
  %193 = call i32 @NEXT_LINE(i32 %192)
  br label %194

194:                                              ; preds = %191, %188
  %195 = load %struct.rgbvec*, %struct.rgbvec** %26, align 8
  %196 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %195, i32 0, i32 0
  %197 = load %struct.rgbvec*, %struct.rgbvec** %26, align 8
  %198 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %197, i32 0, i32 1
  %199 = load %struct.rgbvec*, %struct.rgbvec** %26, align 8
  %200 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %199, i32 0, i32 2
  %201 = call i32 (i8*, i8*, ...) @av_sscanf(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32* %196, i32* %198, i32* %200)
  %202 = icmp ne i32 %201, 3
  br i1 %202, label %203, label %205

203:                                              ; preds = %194
  %204 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %204, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %289

205:                                              ; preds = %194
  %206 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %207 = load float, float* %206, align 4
  %208 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %209 = load float, float* %208, align 4
  %210 = fsub float %207, %209
  %211 = load %struct.rgbvec*, %struct.rgbvec** %26, align 8
  %212 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = sitofp i32 %213 to float
  %215 = fmul float %214, %210
  %216 = fptosi float %215 to i32
  store i32 %216, i32* %212, align 4
  %217 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %218 = load float, float* %217, align 4
  %219 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 1
  %220 = load float, float* %219, align 4
  %221 = fsub float %218, %220
  %222 = load %struct.rgbvec*, %struct.rgbvec** %26, align 8
  %223 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sitofp i32 %224 to float
  %226 = fmul float %225, %221
  %227 = fptosi float %226 to i32
  store i32 %227, i32* %223, align 4
  %228 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 2
  %229 = load float, float* %228, align 4
  %230 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 2
  %231 = load float, float* %230, align 4
  %232 = fsub float %229, %231
  %233 = load %struct.rgbvec*, %struct.rgbvec** %26, align 8
  %234 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = sitofp i32 %235 to float
  %237 = fmul float %236, %232
  %238 = fptosi float %237 to i32
  store i32 %238, i32* %234, align 4
  br label %239

239:                                              ; preds = %205
  %240 = load i32, i32* %25, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %25, align 4
  br label %164

242:                                              ; preds = %164
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %24, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %24, align 4
  br label %159

246:                                              ; preds = %159
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %23, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %23, align 4
  br label %154

250:                                              ; preds = %154
  br label %252

251:                                              ; preds = %71
  br label %60

252:                                              ; preds = %250
  %253 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  %254 = load float, float* %253, align 4
  %255 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 0
  %256 = load float, float* %255, align 4
  %257 = fsub float %254, %256
  %258 = fpext float %257 to double
  %259 = fdiv double 1.000000e+00, %258
  %260 = fptosi double %259 to i32
  %261 = call i8* @av_clipf(i32 %260, float 0.000000e+00, float 1.000000e+00)
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 2
  store i8* %261, i8** %264, align 8
  %265 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 1
  %266 = load float, float* %265, align 4
  %267 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 1
  %268 = load float, float* %267, align 4
  %269 = fsub float %266, %268
  %270 = fpext float %269 to double
  %271 = fdiv double 1.000000e+00, %270
  %272 = fptosi double %271 to i32
  %273 = call i8* @av_clipf(i32 %272, float 0.000000e+00, float 1.000000e+00)
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 1
  store i8* %273, i8** %276, align 8
  %277 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 2
  %278 = load float, float* %277, align 4
  %279 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 2
  %280 = load float, float* %279, align 4
  %281 = fsub float %278, %280
  %282 = fpext float %281 to double
  %283 = fdiv double 1.000000e+00, %282
  %284 = fptosi double %283 to i32
  %285 = call i8* @av_clipf(i32 %284, float 0.000000e+00, float 1.000000e+00)
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  store i8* %285, i8** %288, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %289

289:                                              ; preds = %252, %203, %151, %133, %122, %111, %98, %82, %53, %42
  %290 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %290)
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NEXT_LINE(i32) #3

declare dso_local i32 @skip_line(i8*) #3

declare dso_local i64 @strncmp(i8*, i8*, i32) #3

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #3

declare dso_local i32 @AVERROR(i32) #3

declare dso_local i32 @strtol(i8*, i32*, i32) #3

declare dso_local i32 @av_sscanf(i8*, i8*, ...) #3

declare dso_local i32 @allocate_3dlut(%struct.TYPE_9__*, i32) #3

declare dso_local i8* @av_clipf(i32, float, float) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
