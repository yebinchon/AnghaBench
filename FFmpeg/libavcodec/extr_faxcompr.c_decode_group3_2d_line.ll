; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_faxcompr.c_decode_group3_2d_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_faxcompr.c_decode_group3_2d_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ccitt_group3_2d_vlc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Incorrect mode VLC\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Run went out of bounds\0A\00", align 1
@ccitt_vlc = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Incorrect code\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Run overrun\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"saved run %d on entering uncompressed mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Special mode %d xxx=%d support\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*, i32*, i32*)* @decode_group3_2d_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_group3_2d_line(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
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
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load i32*, i32** %13, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %13, align 8
  %27 = load i32, i32* %25, align 4
  store i32 %27, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %28

28:                                               ; preds = %275, %6
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %276

32:                                               ; preds = %28
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccitt_group3_2d_vlc, i32 0, i32 0), align 4
  %35 = call i32 @get_vlc2(i32* %33, i32 %34, i32 9, i32 1)
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %20, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %39, i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %7, align 4
  br label %294

43:                                               ; preds = %32
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %83, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32*, i32** %13, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %13, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %50, %46
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = sub i32 %57, %58
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i32*, i32** %13, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %13, align 8
  %67 = load i32, i32* %65, align 4
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %64, %56
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %75, i32 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %78, i32* %7, align 4
  br label %294

79:                                               ; preds = %70
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add i32 %81, %80
  store i32 %82, i32* %15, align 4
  br label %253

83:                                               ; preds = %43
  %84 = load i32, i32* %20, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %154

86:                                               ; preds = %83
  store i32 0, i32* %21, align 4
  br label %87

87:                                               ; preds = %150, %86
  %88 = load i32, i32* %21, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %153

90:                                               ; preds = %87
  store i32 0, i32* %19, align 4
  br label %91

91:                                               ; preds = %114, %90
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ccitt_vlc, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @get_vlc2(i32* %92, i32 %98, i32 9, i32 2)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* @AV_LOG_ERROR, align 4
  %105 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %103, i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %106, i32* %7, align 4
  br label %294

107:                                              ; preds = %91
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %19, align 4
  %110 = add i32 %109, %108
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp slt i32 %111, 64
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %115

114:                                              ; preds = %107
  br label %91

115:                                              ; preds = %113
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add i32 %116, %117
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  %121 = load i32*, i32** %11, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = icmp uge i32* %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %115
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* @AV_LOG_ERROR, align 4
  %127 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %125, i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %128, i32* %7, align 4
  br label %294

129:                                              ; preds = %115
  store i32 0, i32* %15, align 4
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %18, align 4
  %132 = add i32 %131, %130
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ugt i32 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %129
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ugt i32 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %136, %129
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* @AV_LOG_ERROR, align 4
  %143 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %141, i32 %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %144, i32* %7, align 4
  br label %294

145:                                              ; preds = %136
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %21, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %21, align 4
  br label %87

153:                                              ; preds = %87
  br label %252

154:                                              ; preds = %83
  %155 = load i32, i32* %20, align 4
  %156 = icmp eq i32 %155, 9
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %20, align 4
  %159 = icmp eq i32 %158, 10
  br i1 %159, label %160, label %205

160:                                              ; preds = %157, %154
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @get_bits(i32* %161, i32 3)
  store i32 %162, i32* %22, align 4
  %163 = load i32, i32* %20, align 4
  %164 = icmp eq i32 %163, 9
  br i1 %164, label %165, label %198

165:                                              ; preds = %160
  %166 = load i32, i32* %22, align 4
  %167 = icmp eq i32 %166, 7
  br i1 %167, label %168, label %198

168:                                              ; preds = %165
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %18, align 4
  %171 = sub i32 %169, %170
  store i32 %171, i32* %24, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* @AV_LOG_ERROR, align 4
  %177 = load i32, i32* %15, align 4
  %178 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %175, i32 %176, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %179, i32* %7, align 4
  br label %294

180:                                              ; preds = %168
  %181 = load i32*, i32** %8, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = load i32*, i32** %12, align 8
  %184 = call i32 @decode_uncompressed(i32* %181, i32* %182, i32* %24, i32** %11, i32* %183, i32* %14)
  store i32 %184, i32* %23, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %24, align 4
  %187 = sub i32 %185, %186
  store i32 %187, i32* %18, align 4
  %188 = load i32, i32* %23, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %180
  %191 = load i32, i32* %23, align 4
  store i32 %191, i32* %7, align 4
  br label %294

192:                                              ; preds = %180
  %193 = load i32, i32* %23, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %276

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %196
  br label %204

198:                                              ; preds = %165, %160
  %199 = load i32*, i32** %8, align 8
  %200 = load i32, i32* %20, align 4
  %201 = load i32, i32* %22, align 4
  %202 = call i32 @avpriv_report_missing_feature(i32* %199, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %200, i32 %201)
  %203 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %203, i32* %7, align 4
  br label %294

204:                                              ; preds = %197
  br label %251

205:                                              ; preds = %157
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %18, align 4
  %208 = sub i32 %206, %207
  %209 = load i32, i32* %20, align 4
  %210 = sub nsw i32 %209, 5
  %211 = add i32 %208, %210
  store i32 %211, i32* %19, align 4
  %212 = load i32*, i32** %13, align 8
  %213 = getelementptr inbounds i32, i32* %212, i32 -1
  store i32* %213, i32** %13, align 8
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %17, align 4
  %216 = sub nsw i32 %215, %214
  store i32 %216, i32* %17, align 4
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* %18, align 4
  %219 = add i32 %218, %217
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %10, align 4
  %222 = icmp ugt i32 %220, %221
  br i1 %222, label %227, label %223

223:                                              ; preds = %205
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %10, align 4
  %226 = icmp ugt i32 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %223, %205
  %228 = load i32*, i32** %8, align 8
  %229 = load i32, i32* @AV_LOG_ERROR, align 4
  %230 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %228, i32 %229, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %231 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %231, i32* %7, align 4
  br label %294

232:                                              ; preds = %223
  %233 = load i32, i32* %19, align 4
  %234 = load i32, i32* %15, align 4
  %235 = add i32 %233, %234
  %236 = load i32*, i32** %11, align 8
  %237 = getelementptr inbounds i32, i32* %236, i32 1
  store i32* %237, i32** %11, align 8
  store i32 %235, i32* %236, align 4
  %238 = load i32*, i32** %11, align 8
  %239 = load i32*, i32** %12, align 8
  %240 = icmp uge i32* %238, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %232
  %242 = load i32*, i32** %8, align 8
  %243 = load i32, i32* @AV_LOG_ERROR, align 4
  %244 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %242, i32 %243, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %245 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %245, i32* %7, align 4
  br label %294

246:                                              ; preds = %232
  store i32 0, i32* %15, align 4
  %247 = load i32, i32* %14, align 4
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  %250 = zext i1 %249 to i32
  store i32 %250, i32* %14, align 4
  br label %251

251:                                              ; preds = %246, %204
  br label %252

252:                                              ; preds = %251, %153
  br label %253

253:                                              ; preds = %252, %79
  br label %254

254:                                              ; preds = %264, %253
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %10, align 4
  %257 = icmp ult i32 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* %18, align 4
  %261 = icmp ule i32 %259, %260
  br label %262

262:                                              ; preds = %258, %254
  %263 = phi i1 [ false, %254 ], [ %261, %258 ]
  br i1 %263, label %264, label %275

264:                                              ; preds = %262
  %265 = load i32*, i32** %13, align 8
  %266 = getelementptr inbounds i32, i32* %265, i32 1
  store i32* %266, i32** %13, align 8
  %267 = load i32, i32* %265, align 4
  %268 = load i32, i32* %17, align 4
  %269 = add nsw i32 %268, %267
  store i32 %269, i32* %17, align 4
  %270 = load i32*, i32** %13, align 8
  %271 = getelementptr inbounds i32, i32* %270, i32 1
  store i32* %271, i32** %13, align 8
  %272 = load i32, i32* %270, align 4
  %273 = load i32, i32* %17, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %17, align 4
  br label %254

275:                                              ; preds = %262
  br label %28

276:                                              ; preds = %195, %28
  %277 = load i32, i32* %15, align 4
  %278 = load i32*, i32** %11, align 8
  %279 = getelementptr inbounds i32, i32* %278, i32 1
  store i32* %279, i32** %11, align 8
  store i32 %277, i32* %278, align 4
  %280 = load i32, i32* %15, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %293

282:                                              ; preds = %276
  %283 = load i32*, i32** %11, align 8
  %284 = load i32*, i32** %12, align 8
  %285 = icmp uge i32* %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %282
  %287 = load i32*, i32** %8, align 8
  %288 = load i32, i32* @AV_LOG_ERROR, align 4
  %289 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %287, i32 %288, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %294

290:                                              ; preds = %282
  %291 = load i32*, i32** %11, align 8
  %292 = getelementptr inbounds i32, i32* %291, i32 1
  store i32* %292, i32** %11, align 8
  store i32 0, i32* %291, align 4
  br label %293

293:                                              ; preds = %290, %276
  store i32 0, i32* %7, align 4
  br label %294

294:                                              ; preds = %293, %286, %241, %227, %198, %190, %174, %140, %124, %102, %74, %38
  %295 = load i32, i32* %7, align 4
  ret i32 %295
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @decode_uncompressed(i32*, i32*, i32*, i32**, i32*, i32*) #1

declare dso_local i32 @avpriv_report_missing_feature(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
