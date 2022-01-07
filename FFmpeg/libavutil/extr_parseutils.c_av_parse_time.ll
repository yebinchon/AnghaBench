; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_parseutils.c_av_parse_time.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_parseutils.c_av_parse_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32 }

@av_parse_time.date_fmt = internal constant [2 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"%Y - %m - %d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%Y%m%d\00", align 1
@av_parse_time.time_fmt = internal constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%H%M%S\00", align 1
@av_parse_time.tz_fmt = internal constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%H%M\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%H\00", align 1
@INT64_MIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%J:%M:%S\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%M:%S\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_parse_time(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tm, align 4
  %14 = alloca %struct.tm, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.tm, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.tm, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %27 = bitcast %struct.tm* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 20, i1 false)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 1000000, i32* %18, align 4
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %29 = load i32, i32* @INT64_MIN, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %111, label %33

33:                                               ; preds = %3
  %34 = call i32 (...) @av_gettime()
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sdiv i32 %35, 1000000
  store i32 %36, i32* %12, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @av_strcasecmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %417

43:                                               ; preds = %33
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %19, align 4
  %46 = call i32 @FF_ARRAY_ELEMS(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @av_parse_time.date_fmt, i64 0, i64 0))
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x i8*], [2 x i8*]* @av_parse_time.date_fmt, i64 0, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @av_small_strptime(i8* %49, i8* %53, %struct.tm* %13)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %62

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %19, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %19, align 4
  br label %44

62:                                               ; preds = %57, %44
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  store i32 1, i32* %15, align 4
  %66 = load i8*, i8** %8, align 8
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i8*, i8** %9, align 8
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 84
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 116
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %67
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  br label %91

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %87, %81
  %83 = load i8*, i8** %8, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @av_isspace(i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %8, align 8
  br label %82

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %78
  store i32 0, i32* %19, align 4
  br label %92

92:                                               ; preds = %107, %91
  %93 = load i32, i32* %19, align 4
  %94 = call i32 @FF_ARRAY_ELEMS(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @av_parse_time.time_fmt, i64 0, i64 0))
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %19, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i8*], [2 x i8*]* @av_parse_time.time_fmt, i64 0, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i8* @av_small_strptime(i8* %97, i8* %101, %struct.tm* %13)
  store i8* %102, i8** %9, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %110

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %19, align 4
  br label %92

110:                                              ; preds = %105, %92
  br label %162

111:                                              ; preds = %3
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 45
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  store i32 1, i32* %16, align 4
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  br label %120

120:                                              ; preds = %117, %111
  %121 = load i8*, i8** %8, align 8
  %122 = call i8* @av_small_strptime(i8* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %struct.tm* %13)
  store i8* %122, i8** %9, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = load i8*, i8** %8, align 8
  %127 = call i8* @av_small_strptime(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), %struct.tm* %13)
  store i8* %127, i8** %9, align 8
  %128 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i8*, i8** %9, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %150, label %132

132:                                              ; preds = %129
  store i64 0, i64* @errno, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @strtoll(i8* %133, i8** %20, i32 10)
  store i32 %134, i32* %10, align 4
  %135 = load i8*, i8** %20, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = icmp eq i8* %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i64, i64* @EINVAL, align 8
  %140 = call i32 @AVERROR(i64 %139)
  store i32 %140, i32* %4, align 4
  br label %417

141:                                              ; preds = %132
  %142 = load i64, i64* @errno, align 8
  %143 = load i64, i64* @ERANGE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i64, i64* @ERANGE, align 8
  %147 = call i32 @AVERROR(i64 %146)
  store i32 %147, i32* %4, align 4
  br label %417

148:                                              ; preds = %141
  %149 = load i8*, i8** %20, align 8
  store i8* %149, i8** %9, align 8
  br label %161

150:                                              ; preds = %129
  %151 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %152, 3600
  %154 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %155, 60
  %157 = add nsw i32 %153, %156
  %158 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %157, %159
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %150, %148
  br label %162

162:                                              ; preds = %161, %110
  %163 = load i8*, i8** %9, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i64, i64* @EINVAL, align 8
  %167 = call i32 @AVERROR(i64 %166)
  store i32 %167, i32* %4, align 4
  br label %417

168:                                              ; preds = %162
  %169 = load i8*, i8** %9, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 46
  br i1 %172, label %173, label %209

173:                                              ; preds = %168
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %9, align 8
  store i32 100000, i32* %21, align 4
  br label %176

176:                                              ; preds = %194, %173
  %177 = load i32, i32* %21, align 4
  %178 = icmp sge i32 %177, 1
  br i1 %178, label %179, label %199

179:                                              ; preds = %176
  %180 = load i8*, i8** %9, align 8
  %181 = load i8, i8* %180, align 1
  %182 = call i64 @av_isdigit(i8 signext %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %179
  br label %199

185:                                              ; preds = %179
  %186 = load i32, i32* %21, align 4
  %187 = load i8*, i8** %9, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = sub nsw i32 %189, 48
  %191 = mul nsw i32 %186, %190
  %192 = load i32, i32* %17, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %17, align 4
  br label %194

194:                                              ; preds = %185
  %195 = load i32, i32* %21, align 4
  %196 = sdiv i32 %195, 10
  store i32 %196, i32* %21, align 4
  %197 = load i8*, i8** %9, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %9, align 8
  br label %176

199:                                              ; preds = %184, %176
  br label %200

200:                                              ; preds = %205, %199
  %201 = load i8*, i8** %9, align 8
  %202 = load i8, i8* %201, align 1
  %203 = call i64 @av_isdigit(i8 signext %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %9, align 8
  br label %200

208:                                              ; preds = %200
  br label %209

209:                                              ; preds = %208, %168
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %255

212:                                              ; preds = %209
  %213 = load i8*, i8** %9, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 0
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 109
  br i1 %217, label %218, label %229

218:                                              ; preds = %212
  %219 = load i8*, i8** %9, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 115
  br i1 %223, label %224, label %229

224:                                              ; preds = %218
  store i32 1000, i32* %18, align 4
  %225 = load i32, i32* %17, align 4
  %226 = sdiv i32 %225, 1000
  store i32 %226, i32* %17, align 4
  %227 = load i8*, i8** %9, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 2
  store i8* %228, i8** %9, align 8
  br label %254

229:                                              ; preds = %218, %212
  %230 = load i8*, i8** %9, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 0
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 117
  br i1 %234, label %235, label %244

235:                                              ; preds = %229
  %236 = load i8*, i8** %9, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 1
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 115
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  store i32 1, i32* %18, align 4
  store i32 0, i32* %17, align 4
  %242 = load i8*, i8** %9, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 2
  store i8* %243, i8** %9, align 8
  br label %253

244:                                              ; preds = %235, %229
  %245 = load i8*, i8** %9, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 115
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load i8*, i8** %9, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %9, align 8
  br label %252

252:                                              ; preds = %249, %244
  br label %253

253:                                              ; preds = %252, %241
  br label %254

254:                                              ; preds = %253, %224
  br label %375

255:                                              ; preds = %209
  %256 = load i8*, i8** %9, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 90
  br i1 %259, label %265, label %260

260:                                              ; preds = %255
  %261 = load i8*, i8** %9, align 8
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 122
  br label %265

265:                                              ; preds = %260, %255
  %266 = phi i1 [ true, %255 ], [ %264, %260 ]
  %267 = zext i1 %266 to i32
  store i32 %267, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %268 = load i32, i32* %22, align 4
  %269 = load i8*, i8** %9, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8* %271, i8** %9, align 8
  %272 = load i32, i32* %15, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %332, label %274

274:                                              ; preds = %265
  %275 = load i32, i32* %22, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %332, label %277

277:                                              ; preds = %274
  %278 = load i8*, i8** %9, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 43
  br i1 %281, label %287, label %282

282:                                              ; preds = %277
  %283 = load i8*, i8** %9, align 8
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 45
  br i1 %286, label %287, label %332

287:                                              ; preds = %282, %277
  %288 = bitcast %struct.tm* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %288, i8 0, i64 20, i1 false)
  %289 = load i8*, i8** %9, align 8
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 43
  %293 = zext i1 %292 to i64
  %294 = select i1 %292, i32 -1, i32 1
  store i32 %294, i32* %25, align 4
  %295 = load i8*, i8** %9, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %9, align 8
  %297 = load i8*, i8** %9, align 8
  store i8* %297, i8** %8, align 8
  store i32 0, i32* %19, align 4
  br label %298

298:                                              ; preds = %313, %287
  %299 = load i32, i32* %19, align 4
  %300 = call i32 @FF_ARRAY_ELEMS(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @av_parse_time.tz_fmt, i64 0, i64 0))
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %316

302:                                              ; preds = %298
  %303 = load i8*, i8** %8, align 8
  %304 = load i32, i32* %19, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [3 x i8*], [3 x i8*]* @av_parse_time.tz_fmt, i64 0, i64 %305
  %307 = load i8*, i8** %306, align 8
  %308 = call i8* @av_small_strptime(i8* %303, i8* %307, %struct.tm* %24)
  store i8* %308, i8** %9, align 8
  %309 = load i8*, i8** %9, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %312

311:                                              ; preds = %302
  br label %316

312:                                              ; preds = %302
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %19, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %19, align 4
  br label %298

316:                                              ; preds = %311, %298
  %317 = load i8*, i8** %9, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %322, label %319

319:                                              ; preds = %316
  %320 = load i64, i64* @EINVAL, align 8
  %321 = call i32 @AVERROR(i64 %320)
  store i32 %321, i32* %4, align 4
  br label %417

322:                                              ; preds = %316
  %323 = load i32, i32* %25, align 4
  %324 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = mul nsw i32 %325, 60
  %327 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %326, %328
  %330 = mul nsw i32 %323, %329
  %331 = mul nsw i32 %330, 60
  store i32 %331, i32* %23, align 4
  store i32 1, i32* %22, align 4
  br label %332

332:                                              ; preds = %322, %282, %274, %265
  %333 = load i32, i32* %15, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %358

335:                                              ; preds = %332
  %336 = load i32, i32* %22, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %335
  %339 = call %struct.tm* @gmtime_r(i32* %12, %struct.tm* %14)
  %340 = bitcast %struct.tm* %26 to i8*
  %341 = bitcast %struct.tm* %339 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %340, i8* align 4 %341, i64 20, i1 false)
  br label %346

342:                                              ; preds = %335
  %343 = call %struct.tm* @localtime_r(i32* %12, %struct.tm* %14)
  %344 = bitcast %struct.tm* %26 to i8*
  %345 = bitcast %struct.tm* %343 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %344, i8* align 4 %345, i64 20, i1 false)
  br label %346

346:                                              ; preds = %342, %338
  %347 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 0
  store i32 %348, i32* %349, align 4
  %350 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 1
  store i32 %351, i32* %352, align 4
  %353 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 2
  store i32 %354, i32* %355, align 4
  %356 = bitcast %struct.tm* %13 to i8*
  %357 = bitcast %struct.tm* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %356, i8* align 4 %357, i64 20, i1 false)
  br label %358

358:                                              ; preds = %346, %332
  %359 = load i32, i32* %22, align 4
  %360 = icmp ne i32 %359, 0
  %361 = zext i1 %360 to i64
  %362 = select i1 %360, i32 0, i32 -1
  %363 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  store i32 %362, i32* %363, align 4
  %364 = load i32, i32* %22, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %358
  %367 = call i32 @av_timegm(%struct.tm* %13)
  br label %370

368:                                              ; preds = %358
  %369 = call i32 @mktime(%struct.tm* %13)
  br label %370

370:                                              ; preds = %368, %366
  %371 = phi i32 [ %367, %366 ], [ %369, %368 ]
  store i32 %371, i32* %10, align 4
  %372 = load i32, i32* %23, align 4
  %373 = load i32, i32* %10, align 4
  %374 = add nsw i32 %373, %372
  store i32 %374, i32* %10, align 4
  br label %375

375:                                              ; preds = %370, %254
  %376 = load i8*, i8** %9, align 8
  %377 = load i8, i8* %376, align 1
  %378 = icmp ne i8 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %375
  %380 = load i64, i64* @EINVAL, align 8
  %381 = call i32 @AVERROR(i64 %380)
  store i32 %381, i32* %4, align 4
  br label %417

382:                                              ; preds = %375
  %383 = load i32, i32* @INT64_MAX, align 4
  %384 = load i32, i32* %18, align 4
  %385 = sdiv i32 %383, %384
  %386 = load i32, i32* %10, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %382
  %389 = load i64, i64* @ERANGE, align 8
  %390 = call i32 @AVERROR(i64 %389)
  store i32 %390, i32* %4, align 4
  br label %417

391:                                              ; preds = %382
  %392 = load i32, i32* %18, align 4
  %393 = load i32, i32* %10, align 4
  %394 = mul nsw i32 %393, %392
  store i32 %394, i32* %10, align 4
  %395 = load i32, i32* @INT64_MAX, align 4
  %396 = load i32, i32* %17, align 4
  %397 = sub nsw i32 %395, %396
  %398 = load i32, i32* %10, align 4
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %400, label %403

400:                                              ; preds = %391
  %401 = load i64, i64* @ERANGE, align 8
  %402 = call i32 @AVERROR(i64 %401)
  store i32 %402, i32* %4, align 4
  br label %417

403:                                              ; preds = %391
  %404 = load i32, i32* %17, align 4
  %405 = load i32, i32* %10, align 4
  %406 = add nsw i32 %405, %404
  store i32 %406, i32* %10, align 4
  %407 = load i32, i32* %16, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %403
  %410 = load i32, i32* %10, align 4
  %411 = sub nsw i32 0, %410
  br label %414

412:                                              ; preds = %403
  %413 = load i32, i32* %10, align 4
  br label %414

414:                                              ; preds = %412, %409
  %415 = phi i32 [ %411, %409 ], [ %413, %412 ]
  %416 = load i32*, i32** %5, align 8
  store i32 %415, i32* %416, align 4
  store i32 0, i32* %4, align 4
  br label %417

417:                                              ; preds = %414, %400, %388, %379, %319, %165, %145, %138, %40
  %418 = load i32, i32* %4, align 4
  ret i32 %418
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_gettime(...) #2

declare dso_local i32 @av_strcasecmp(i8*, i8*) #2

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #2

declare dso_local i8* @av_small_strptime(i8*, i8*, %struct.tm*) #2

declare dso_local i64 @av_isspace(i8 signext) #2

declare dso_local i32 @strtoll(i8*, i8**, i32) #2

declare dso_local i32 @AVERROR(i64) #2

declare dso_local i64 @av_isdigit(i8 signext) #2

declare dso_local %struct.tm* @gmtime_r(i32*, %struct.tm*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.tm* @localtime_r(i32*, %struct.tm*) #2

declare dso_local i32 @av_timegm(%struct.tm*) #2

declare dso_local i32 @mktime(%struct.tm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
