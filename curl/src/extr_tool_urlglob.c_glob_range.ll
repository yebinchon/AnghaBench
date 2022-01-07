; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_urlglob.c_glob_range.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_urlglob.c_glob_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i8, i8, i8 }

@UPTCharRange = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%c-%c%c\00", align 1
@errno = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"bad range\00", align 1
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"range overflow\00", align 1
@UPTNumRange = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"bad range specification\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8**, i64*, i64*, i32)* @glob_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob_range(%struct.TYPE_11__* %0, i8** %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load i8**, i8*** %8, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %14, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %32
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @ISALPHA(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %197

41:                                               ; preds = %5
  store i64 1, i64* %19, align 8
  %42 = load i32, i32* @UPTCharRange, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @sscanf(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17, i8* %18)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %84

49:                                               ; preds = %41
  %50 = load i8, i8* %18, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 58
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  store i64 0, i64* @errno, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = call i64 @strtoul(i8* %55, i8** %20, i32 10)
  store i64 %56, i64* %19, align 8
  %57 = load i64, i64* @errno, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = load i8*, i8** %20, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %20, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 93
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %59, %53
  store i64 0, i64* %19, align 8
  br label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** %20, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %14, align 8
  br label %73

73:                                               ; preds = %70, %69
  br label %83

74:                                               ; preds = %49
  %75 = load i8, i8* %18, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 93
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 0, i32* %13, align 4
  br label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  store i8* %81, i8** %14, align 8
  br label %82

82:                                               ; preds = %79, %78
  br label %83

83:                                               ; preds = %82, %73
  br label %84

84:                                               ; preds = %83, %41
  %85 = load i8*, i8** %14, align 8
  %86 = load i8**, i8*** %8, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %85 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = load i64*, i64** %9, align 8
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, %90
  store i64 %93, i64* %91, align 8
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 3
  br i1 %95, label %142, label %96

96:                                               ; preds = %84
  %97 = load i64, i64* %19, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %142

99:                                               ; preds = %96
  %100 = load i64, i64* %19, align 8
  %101 = load i64, i64* @INT_MAX, align 8
  %102 = trunc i64 %101 to i32
  %103 = zext i32 %102 to i64
  %104 = icmp ugt i64 %100, %103
  br i1 %104, label %142, label %105

105:                                              ; preds = %99
  %106 = load i8, i8* %16, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* %17, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i64, i64* %19, align 8
  %113 = icmp ne i64 %112, 1
  br i1 %113, label %142, label %114

114:                                              ; preds = %111, %105
  %115 = load i8, i8* %16, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* %17, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %114
  %121 = load i8, i8* %16, align 1
  %122 = sext i8 %121 to i32
  %123 = load i8, i8* %17, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sgt i32 %122, %124
  br i1 %125, label %142, label %126

126:                                              ; preds = %120
  %127 = load i64, i64* %19, align 8
  %128 = load i8, i8* %17, align 1
  %129 = sext i8 %128 to i32
  %130 = load i8, i8* %16, align 1
  %131 = sext i8 %130 to i32
  %132 = sub nsw i32 %129, %131
  %133 = zext i32 %132 to i64
  %134 = icmp ugt i64 %127, %133
  br i1 %134, label %142, label %135

135:                                              ; preds = %126
  %136 = load i8, i8* %17, align 1
  %137 = sext i8 %136 to i32
  %138 = load i8, i8* %16, align 1
  %139 = sext i8 %138 to i32
  %140 = sub nsw i32 %137, %139
  %141 = icmp sgt i32 %140, 25
  br i1 %141, label %142, label %147

142:                                              ; preds = %135, %126, %120, %111, %99, %96, %84
  %143 = load i64*, i64** %9, align 8
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  %146 = call i32 @GLOBERROR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %144, i32 %145)
  store i32 %146, i32* %6, align 4
  br label %407

147:                                              ; preds = %135, %114
  %148 = load i64, i64* %19, align 8
  %149 = trunc i64 %148 to i32
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i32 %149, i32* %153, align 8
  %154 = load i8, i8* %16, align 1
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  store i8 %154, i8* %158, align 1
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  store i8 %154, i8* %162, align 4
  %163 = load i8, i8* %17, align 1
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 3
  store i8 %163, i8* %167, align 2
  %168 = load i64*, i64** %10, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  %173 = load i8, i8* %172, align 2
  %174 = sext i8 %173 to i32
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 2
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = sub nsw i32 %174, %180
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sdiv i32 %181, %186
  %188 = add nsw i32 %187, 1
  %189 = call i64 @multiply(i64* %168, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %147
  %192 = load i64*, i64** %9, align 8
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  %195 = call i32 @GLOBERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %193, i32 %194)
  store i32 %195, i32* %6, align 4
  br label %407

196:                                              ; preds = %147
  br label %403

197:                                              ; preds = %5
  %198 = load i8*, i8** %14, align 8
  %199 = load i8, i8* %198, align 1
  %200 = call i64 @ISDIGIT(i8 signext %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %397

202:                                              ; preds = %197
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %203 = load i32, i32* @UPTNumRange, align 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 4
  store i64 0, i64* %209, align 8
  %210 = load i8*, i8** %14, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 48
  br i1 %213, label %214, label %231

214:                                              ; preds = %202
  %215 = load i8*, i8** %14, align 8
  store i8* %215, i8** %15, align 8
  br label %216

216:                                              ; preds = %221, %214
  %217 = load i8*, i8** %15, align 8
  %218 = load i8, i8* %217, align 1
  %219 = call i64 @ISDIGIT(i8 signext %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %216
  %222 = load i8*, i8** %15, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %15, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %227, align 8
  br label %216

230:                                              ; preds = %216
  br label %231

231:                                              ; preds = %230, %202
  store i64 0, i64* @errno, align 8
  %232 = load i8*, i8** %14, align 8
  %233 = call i64 @strtoul(i8* %232, i8** %24, i32 10)
  store i64 %233, i64* %21, align 8
  %234 = load i64, i64* @errno, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %231
  %237 = load i8*, i8** %24, align 8
  %238 = load i8*, i8** %14, align 8
  %239 = icmp eq i8* %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %236, %231
  store i8* null, i8** %24, align 8
  br label %307

241:                                              ; preds = %236
  %242 = load i8*, i8** %24, align 8
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp ne i32 %244, 45
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  store i8* null, i8** %24, align 8
  br label %306

247:                                              ; preds = %241
  %248 = load i8*, i8** %24, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 1
  store i8* %249, i8** %14, align 8
  br label %250

250:                                              ; preds = %262, %247
  %251 = load i8*, i8** %14, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load i8*, i8** %14, align 8
  %257 = load i8, i8* %256, align 1
  %258 = call i64 @ISBLANK(i8 signext %257)
  %259 = icmp ne i64 %258, 0
  br label %260

260:                                              ; preds = %255, %250
  %261 = phi i1 [ false, %250 ], [ %259, %255 ]
  br i1 %261, label %262, label %265

262:                                              ; preds = %260
  %263 = load i8*, i8** %14, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %14, align 8
  br label %250

265:                                              ; preds = %260
  %266 = load i8*, i8** %14, align 8
  %267 = load i8, i8* %266, align 1
  %268 = call i64 @ISDIGIT(i8 signext %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %265
  store i8* null, i8** %24, align 8
  br label %308

271:                                              ; preds = %265
  store i64 0, i64* @errno, align 8
  %272 = load i8*, i8** %14, align 8
  %273 = call i64 @strtoul(i8* %272, i8** %24, i32 10)
  store i64 %273, i64* %22, align 8
  %274 = load i64, i64* @errno, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  store i8* null, i8** %24, align 8
  br label %293

277:                                              ; preds = %271
  %278 = load i8*, i8** %24, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 58
  br i1 %281, label %282, label %291

282:                                              ; preds = %277
  %283 = load i8*, i8** %24, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 1
  store i8* %284, i8** %14, align 8
  store i64 0, i64* @errno, align 8
  %285 = load i8*, i8** %14, align 8
  %286 = call i64 @strtoul(i8* %285, i8** %24, i32 10)
  store i64 %286, i64* %23, align 8
  %287 = load i64, i64* @errno, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  store i8* null, i8** %24, align 8
  br label %290

290:                                              ; preds = %289, %282
  br label %292

291:                                              ; preds = %277
  store i64 1, i64* %23, align 8
  br label %292

292:                                              ; preds = %291, %290
  br label %293

293:                                              ; preds = %292, %276
  %294 = load i8*, i8** %24, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %304

296:                                              ; preds = %293
  %297 = load i8*, i8** %24, align 8
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 93
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load i8*, i8** %24, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 1
  store i8* %303, i8** %14, align 8
  br label %305

304:                                              ; preds = %296, %293
  store i8* null, i8** %24, align 8
  br label %305

305:                                              ; preds = %304, %301
  br label %306

306:                                              ; preds = %305, %246
  br label %307

307:                                              ; preds = %306, %240
  br label %308

308:                                              ; preds = %307, %270
  %309 = load i8*, i8** %14, align 8
  %310 = load i8**, i8*** %8, align 8
  %311 = load i8*, i8** %310, align 8
  %312 = ptrtoint i8* %309 to i64
  %313 = ptrtoint i8* %311 to i64
  %314 = sub i64 %312, %313
  %315 = load i64*, i64** %9, align 8
  %316 = load i64, i64* %315, align 8
  %317 = add i64 %316, %314
  store i64 %317, i64* %315, align 8
  %318 = load i8*, i8** %24, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %344

320:                                              ; preds = %308
  %321 = load i64, i64* %23, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %344

323:                                              ; preds = %320
  %324 = load i64, i64* %21, align 8
  %325 = load i64, i64* %22, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %323
  %328 = load i64, i64* %23, align 8
  %329 = icmp ne i64 %328, 1
  br i1 %329, label %344, label %330

330:                                              ; preds = %327, %323
  %331 = load i64, i64* %21, align 8
  %332 = load i64, i64* %22, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %349

334:                                              ; preds = %330
  %335 = load i64, i64* %21, align 8
  %336 = load i64, i64* %22, align 8
  %337 = icmp ugt i64 %335, %336
  br i1 %337, label %344, label %338

338:                                              ; preds = %334
  %339 = load i64, i64* %23, align 8
  %340 = load i64, i64* %22, align 8
  %341 = load i64, i64* %21, align 8
  %342 = sub i64 %340, %341
  %343 = icmp ugt i64 %339, %342
  br i1 %343, label %344, label %349

344:                                              ; preds = %338, %334, %327, %320, %308
  %345 = load i64*, i64** %9, align 8
  %346 = load i64, i64* %345, align 8
  %347 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  %348 = call i32 @GLOBERROR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %346, i32 %347)
  store i32 %348, i32* %6, align 4
  br label %407

349:                                              ; preds = %338, %330
  %350 = load i64, i64* %21, align 8
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 1
  store i64 %350, i64* %354, align 8
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 0
  store i64 %350, i64* %358, align 8
  %359 = load i64, i64* %22, align 8
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 2
  store i64 %359, i64* %363, align 8
  %364 = load i64, i64* %23, align 8
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 3
  store i64 %364, i64* %368, align 8
  %369 = load i64*, i64** %10, align 8
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = sub i64 %374, %379
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = udiv i64 %380, %385
  %387 = add i64 %386, 1
  %388 = trunc i64 %387 to i32
  %389 = call i64 @multiply(i64* %369, i32 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %349
  %392 = load i64*, i64** %9, align 8
  %393 = load i64, i64* %392, align 8
  %394 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  %395 = call i32 @GLOBERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %393, i32 %394)
  store i32 %395, i32* %6, align 4
  br label %407

396:                                              ; preds = %349
  br label %402

397:                                              ; preds = %197
  %398 = load i64*, i64** %9, align 8
  %399 = load i64, i64* %398, align 8
  %400 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  %401 = call i32 @GLOBERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %399, i32 %400)
  store i32 %401, i32* %6, align 4
  br label %407

402:                                              ; preds = %396
  br label %403

403:                                              ; preds = %402, %196
  %404 = load i8*, i8** %14, align 8
  %405 = load i8**, i8*** %8, align 8
  store i8* %404, i8** %405, align 8
  %406 = load i32, i32* @CURLE_OK, align 4
  store i32 %406, i32* %6, align 4
  br label %407

407:                                              ; preds = %403, %397, %391, %344, %191, %142
  %408 = load i32, i32* %6, align 4
  ret i32 %408
}

declare dso_local i64 @ISALPHA(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @GLOBERROR(i8*, i64, i32) #1

declare dso_local i64 @multiply(i64*, i32) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i64 @ISBLANK(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
