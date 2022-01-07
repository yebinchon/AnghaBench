; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_parse_m3d.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_parse_m3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.rgbvec* }
%struct.rgbvec = type { float, float, float }

@MAX_LINE_SIZE = common dso_local global i32 0, align 4
@__const.parse_m3d.rgb_map = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"in and out must be defined\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MAX_LEVEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid in (%d) or out (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @parse_m3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_m3d(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [3 x i32], align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.rgbvec*, align 8
  %22 = alloca [3 x float], align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %6, align 8
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %26 = load i32, i32* @MAX_LINE_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %16, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  %30 = bitcast [3 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast ([3 x i32]* @__const.parse_m3d.rgb_map to i8*), i64 12, i1 false)
  br label %31

31:                                               ; preds = %178, %2
  %32 = trunc i64 %27 to i32
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @fgets(i8* %29, i32 %32, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %179

36:                                               ; preds = %31
  %37 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, i8* %29, i64 2
  %41 = call i32 @strtol(i8* %40, i32* null, i32 0)
  store i32 %41, i32* %14, align 4
  br label %178

42:                                               ; preds = %36
  %43 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, i8* %29, i64 3
  %47 = call i32 @strtol(i8* %46, i32* null, i32 0)
  store i32 %47, i32* %15, align 4
  br label %177

48:                                               ; preds = %42
  %49 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %176, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds i8, i8* %29, i64 6
  store i8* %52, i8** %19, align 8
  br label %53

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %60, %53
  %55 = load i8*, i8** %19, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = call i32 (i32, ...) bitcast (i32 (...)* @av_isspace to i32 (i32, ...)*)(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i8*, i8** %19, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %19, align 8
  br label %54

63:                                               ; preds = %54
  %64 = load i8*, i8** %19, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  switch i32 %66, label %73 [
    i32 114, label %67
    i32 103, label %69
    i32 98, label %71
  ]

67:                                               ; preds = %63
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  store i32 0, i32* %68, align 4
  br label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  store i32 1, i32* %70, align 4
  br label %73

71:                                               ; preds = %63
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  store i32 2, i32* %72, align 4
  br label %73

73:                                               ; preds = %63, %71, %69, %67
  br label %74

74:                                               ; preds = %88, %73
  %75 = load i8*, i8** %19, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i8*, i8** %19, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = call i32 (i32, ...) bitcast (i32 (...)* @av_isspace to i32 (i32, ...)*)(i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %79, %74
  %87 = phi i1 [ false, %74 ], [ %85, %79 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i8*, i8** %19, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %19, align 8
  br label %74

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %101, %94
  %96 = load i8*, i8** %19, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = call i32 (i32, ...) bitcast (i32 (...)* @av_isspace to i32 (i32, ...)*)(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i8*, i8** %19, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %19, align 8
  br label %95

104:                                              ; preds = %95
  %105 = load i8*, i8** %19, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  switch i32 %107, label %114 [
    i32 114, label %108
    i32 103, label %110
    i32 98, label %112
  ]

108:                                              ; preds = %104
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  store i32 0, i32* %109, align 4
  br label %114

110:                                              ; preds = %104
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  store i32 1, i32* %111, align 4
  br label %114

112:                                              ; preds = %104
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  store i32 2, i32* %113, align 4
  br label %114

114:                                              ; preds = %104, %112, %110, %108
  br label %115

115:                                              ; preds = %129, %114
  %116 = load i8*, i8** %19, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i8*, i8** %19, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = call i32 (i32, ...) bitcast (i32 (...)* @av_isspace to i32 (i32, ...)*)(i32 %123)
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  br label %127

127:                                              ; preds = %120, %115
  %128 = phi i1 [ false, %115 ], [ %126, %120 ]
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load i8*, i8** %19, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %19, align 8
  br label %115

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %142, %135
  %137 = load i8*, i8** %19, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = call i32 (i32, ...) bitcast (i32 (...)* @av_isspace to i32 (i32, ...)*)(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i8*, i8** %19, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %19, align 8
  br label %136

145:                                              ; preds = %136
  %146 = load i8*, i8** %19, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  switch i32 %148, label %155 [
    i32 114, label %149
    i32 103, label %151
    i32 98, label %153
  ]

149:                                              ; preds = %145
  %150 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  store i32 0, i32* %150, align 4
  br label %155

151:                                              ; preds = %145
  %152 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  store i32 1, i32* %152, align 4
  br label %155

153:                                              ; preds = %145
  %154 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  store i32 2, i32* %154, align 4
  br label %155

155:                                              ; preds = %145, %153, %151, %149
  br label %156

156:                                              ; preds = %170, %155
  %157 = load i8*, i8** %19, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load i8*, i8** %19, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = call i32 (i32, ...) bitcast (i32 (...)* @av_isspace to i32 (i32, ...)*)(i32 %164)
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  br label %168

168:                                              ; preds = %161, %156
  %169 = phi i1 [ false, %156 ], [ %167, %161 ]
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = load i8*, i8** %19, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %19, align 8
  br label %156

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  br label %179

176:                                              ; preds = %48
  br label %177

177:                                              ; preds = %176, %45
  br label %178

178:                                              ; preds = %177, %39
  br label %31

179:                                              ; preds = %175, %31
  %180 = load i32, i32* %14, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %15, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %190

185:                                              ; preds = %182, %179
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %187 = load i32, i32* @AV_LOG_ERROR, align 4
  %188 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %186, i32 %187, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %189 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %189, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %331

190:                                              ; preds = %182
  %191 = load i32, i32* %14, align 4
  %192 = icmp slt i32 %191, 2
  br i1 %192, label %212, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %15, align 4
  %195 = icmp slt i32 %194, 2
  br i1 %195, label %212, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* @MAX_LEVEL, align 4
  %199 = load i32, i32* @MAX_LEVEL, align 4
  %200 = mul nsw i32 %198, %199
  %201 = load i32, i32* @MAX_LEVEL, align 4
  %202 = mul nsw i32 %200, %201
  %203 = icmp sgt i32 %197, %202
  br i1 %203, label %212, label %204

204:                                              ; preds = %196
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* @MAX_LEVEL, align 4
  %207 = load i32, i32* @MAX_LEVEL, align 4
  %208 = mul nsw i32 %206, %207
  %209 = load i32, i32* @MAX_LEVEL, align 4
  %210 = mul nsw i32 %208, %209
  %211 = icmp sgt i32 %205, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %204, %196, %193, %190
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %214 = load i32, i32* @AV_LOG_ERROR, align 4
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %15, align 4
  %217 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %213, i32 %214, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %215, i32 %216)
  %218 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %218, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %331

219:                                              ; preds = %204
  store i32 1, i32* %12, align 4
  br label %220

220:                                              ; preds = %229, %219
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = mul nsw i32 %221, %222
  %224 = load i32, i32* %12, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32, i32* %14, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %220
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %12, align 4
  br label %220

232:                                              ; preds = %220
  %233 = load i32, i32* %12, align 4
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %12, align 4
  %238 = mul nsw i32 %236, %237
  store i32 %238, i32* %13, align 4
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %240 = load i32, i32* %12, align 4
  %241 = call i32 @allocate_3dlut(%struct.TYPE_7__* %239, i32 %240)
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* %8, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %232
  %245 = load i32, i32* %8, align 4
  store i32 %245, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %331

246:                                              ; preds = %232
  %247 = load i32, i32* %15, align 4
  %248 = sub nsw i32 %247, 1
  %249 = sitofp i32 %248 to double
  %250 = fdiv double 1.000000e+00, %249
  %251 = fptrunc double %250 to float
  store float %251, float* %7, align 4
  store i32 0, i32* %11, align 4
  br label %252

252:                                              ; preds = %327, %246
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %12, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %330

256:                                              ; preds = %252
  store i32 0, i32* %10, align 4
  br label %257

257:                                              ; preds = %323, %256
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %12, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %326

261:                                              ; preds = %257
  store i32 0, i32* %9, align 4
  br label %262

262:                                              ; preds = %319, %261
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %12, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %322

266:                                              ; preds = %262
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 1
  %269 = load %struct.rgbvec*, %struct.rgbvec** %268, align 8
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* %13, align 4
  %272 = mul nsw i32 %270, %271
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %12, align 4
  %275 = mul nsw i32 %273, %274
  %276 = add nsw i32 %272, %275
  %277 = load i32, i32* %9, align 4
  %278 = add nsw i32 %276, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %269, i64 %279
  store %struct.rgbvec* %280, %struct.rgbvec** %21, align 8
  %281 = call i32 @NEXT_LINE(i32 0)
  %282 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %283 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %284 = getelementptr inbounds float, float* %283, i64 1
  %285 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %286 = getelementptr inbounds float, float* %285, i64 2
  %287 = call i32 @av_sscanf(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), float* %282, float* %284, float* %286)
  %288 = icmp ne i32 %287, 3
  br i1 %288, label %289, label %291

289:                                              ; preds = %266
  %290 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %290, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %331

291:                                              ; preds = %266
  %292 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 %294
  %296 = load float, float* %295, align 4
  %297 = load float, float* %7, align 4
  %298 = fmul float %296, %297
  %299 = load %struct.rgbvec*, %struct.rgbvec** %21, align 8
  %300 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %299, i32 0, i32 0
  store float %298, float* %300, align 4
  %301 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %302 = load i32, i32* %301, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 %303
  %305 = load float, float* %304, align 4
  %306 = load float, float* %7, align 4
  %307 = fmul float %305, %306
  %308 = load %struct.rgbvec*, %struct.rgbvec** %21, align 8
  %309 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %308, i32 0, i32 1
  store float %307, float* %309, align 4
  %310 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 %312
  %314 = load float, float* %313, align 4
  %315 = load float, float* %7, align 4
  %316 = fmul float %314, %315
  %317 = load %struct.rgbvec*, %struct.rgbvec** %21, align 8
  %318 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %317, i32 0, i32 2
  store float %316, float* %318, align 4
  br label %319

319:                                              ; preds = %291
  %320 = load i32, i32* %9, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %9, align 4
  br label %262

322:                                              ; preds = %262
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %10, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %10, align 4
  br label %257

326:                                              ; preds = %257
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %11, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %11, align 4
  br label %252

330:                                              ; preds = %252
  store i32 0, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %331

331:                                              ; preds = %330, %289, %244, %212, %185
  %332 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %332)
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #3

declare dso_local i32 @strncmp(i8*, i8*, i32) #3

declare dso_local i32 @strtol(i8*, i32*, i32) #3

declare dso_local i32 @av_isspace(...) #3

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, ...) #3

declare dso_local i32 @allocate_3dlut(%struct.TYPE_7__*, i32) #3

declare dso_local i32 @NEXT_LINE(i32) #3

declare dso_local i32 @av_sscanf(i8*, i8*, float*, float*, float*) #3

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
