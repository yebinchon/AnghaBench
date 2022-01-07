; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_parse_url_path.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_parse_url_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { %struct.IMAP* }
%struct.IMAP = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CURLE_URL_MALFORMAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"IMAP URL parameter '%s' = '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"UIDVALIDITY\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"UID\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"MAILINDEX\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SECTION\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"PARTIAL\00", align 1
@CURLUPART_QUERY = common dso_local global i32 0, align 4
@CURLU_URLDECODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @imap_parse_url_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @imap_parse_url_path(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca %struct.IMAP*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %13 = load i64, i64* @CURLE_OK, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 0
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  store %struct.Curl_easy* %16, %struct.Curl_easy** %5, align 8
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.IMAP*, %struct.IMAP** %19, align 8
  store %struct.IMAP* %20, %struct.IMAP** %6, align 8
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %22 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %8, align 8
  br label %28

28:                                               ; preds = %33, %1
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @imap_is_bchar(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  br label %28

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ugt i8* %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 -1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 -1
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %51, %45, %40
  %55 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %64 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %63, i32 0, i32 0
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i64 @Curl_urldecode(%struct.Curl_easy* %55, i8* %56, i32 %62, i8** %64, i64* null, i32 %65)
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %54
  %70 = load i64, i64* %4, align 8
  store i64 %70, i64* %2, align 8
  br label %348

71:                                               ; preds = %54
  br label %75

72:                                               ; preds = %36
  %73 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %74 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %73, i32 0, i32 0
  store i8* null, i8** %74, align 8
  br label %75

75:                                               ; preds = %72, %71
  br label %76

76:                                               ; preds = %310, %75
  %77 = load i8*, i8** %8, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 59
  br i1 %80, label %81, label %315

81:                                               ; preds = %76
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  store i8* %83, i8** %7, align 8
  br label %84

84:                                               ; preds = %96, %81
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 61
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi i1 [ false, %84 ], [ %93, %89 ]
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %8, align 8
  br label %84

99:                                               ; preds = %94
  %100 = load i8*, i8** %8, align 8
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* @CURLE_URL_MALFORMAT, align 8
  store i64 %104, i64* %2, align 8
  br label %348

105:                                              ; preds = %99
  %106 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* @TRUE, align 4
  %115 = call i64 @Curl_urldecode(%struct.Curl_easy* %106, i8* %107, i32 %113, i8** %10, i64* null, i32 %114)
  store i64 %115, i64* %4, align 8
  %116 = load i64, i64* %4, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = load i64, i64* %4, align 8
  store i64 %119, i64* %2, align 8
  br label %348

120:                                              ; preds = %105
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %8, align 8
  store i8* %122, i8** %7, align 8
  br label %123

123:                                              ; preds = %128, %120
  %124 = load i8*, i8** %8, align 8
  %125 = load i8, i8* %124, align 1
  %126 = call i64 @imap_is_bchar(i8 signext %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %8, align 8
  br label %123

131:                                              ; preds = %123
  %132 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  %140 = load i32, i32* @TRUE, align 4
  %141 = call i64 @Curl_urldecode(%struct.Curl_easy* %132, i8* %133, i32 %139, i8** %11, i64* %12, i32 %140)
  store i64 %141, i64* %4, align 8
  %142 = load i64, i64* %4, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %131
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @free(i8* %145)
  %147 = load i64, i64* %4, align 8
  store i64 %147, i64* %2, align 8
  br label %348

148:                                              ; preds = %131
  %149 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %150 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %149, i32 0, i32 0
  %151 = load %struct.Curl_easy*, %struct.Curl_easy** %150, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = call i32 @infof(%struct.Curl_easy* %151, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %152, i8* %153)
  %155 = call i32 @DEBUGF(i32 %154)
  %156 = load i8*, i8** %10, align 8
  %157 = call i64 @strcasecompare(i8* %156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %184

159:                                              ; preds = %148
  %160 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %161 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %184, label %164

164:                                              ; preds = %159
  %165 = load i64, i64* %12, align 8
  %166 = icmp ugt i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %164
  %168 = load i8*, i8** %11, align 8
  %169 = load i64, i64* %12, align 8
  %170 = sub i64 %169, 1
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 47
  br i1 %174, label %175, label %180

175:                                              ; preds = %167
  %176 = load i8*, i8** %11, align 8
  %177 = load i64, i64* %12, align 8
  %178 = sub i64 %177, 1
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  store i8 0, i8* %179, align 1
  br label %180

180:                                              ; preds = %175, %167, %164
  %181 = load i8*, i8** %11, align 8
  %182 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %183 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  store i8* null, i8** %11, align 8
  br label %310

184:                                              ; preds = %159, %148
  %185 = load i8*, i8** %10, align 8
  %186 = call i64 @strcasecompare(i8* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %213

188:                                              ; preds = %184
  %189 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %190 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %189, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %213, label %193

193:                                              ; preds = %188
  %194 = load i64, i64* %12, align 8
  %195 = icmp ugt i64 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %193
  %197 = load i8*, i8** %11, align 8
  %198 = load i64, i64* %12, align 8
  %199 = sub i64 %198, 1
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 47
  br i1 %203, label %204, label %209

204:                                              ; preds = %196
  %205 = load i8*, i8** %11, align 8
  %206 = load i64, i64* %12, align 8
  %207 = sub i64 %206, 1
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  store i8 0, i8* %208, align 1
  br label %209

209:                                              ; preds = %204, %196, %193
  %210 = load i8*, i8** %11, align 8
  %211 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %212 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %211, i32 0, i32 2
  store i8* %210, i8** %212, align 8
  store i8* null, i8** %11, align 8
  br label %309

213:                                              ; preds = %188, %184
  %214 = load i8*, i8** %10, align 8
  %215 = call i64 @strcasecompare(i8* %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %242

217:                                              ; preds = %213
  %218 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %219 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %218, i32 0, i32 3
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %242, label %222

222:                                              ; preds = %217
  %223 = load i64, i64* %12, align 8
  %224 = icmp ugt i64 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %222
  %226 = load i8*, i8** %11, align 8
  %227 = load i64, i64* %12, align 8
  %228 = sub i64 %227, 1
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 47
  br i1 %232, label %233, label %238

233:                                              ; preds = %225
  %234 = load i8*, i8** %11, align 8
  %235 = load i64, i64* %12, align 8
  %236 = sub i64 %235, 1
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  store i8 0, i8* %237, align 1
  br label %238

238:                                              ; preds = %233, %225, %222
  %239 = load i8*, i8** %11, align 8
  %240 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %241 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %240, i32 0, i32 3
  store i8* %239, i8** %241, align 8
  store i8* null, i8** %11, align 8
  br label %308

242:                                              ; preds = %217, %213
  %243 = load i8*, i8** %10, align 8
  %244 = call i64 @strcasecompare(i8* %243, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %271

246:                                              ; preds = %242
  %247 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %248 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %247, i32 0, i32 4
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %271, label %251

251:                                              ; preds = %246
  %252 = load i64, i64* %12, align 8
  %253 = icmp ugt i64 %252, 0
  br i1 %253, label %254, label %267

254:                                              ; preds = %251
  %255 = load i8*, i8** %11, align 8
  %256 = load i64, i64* %12, align 8
  %257 = sub i64 %256, 1
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 47
  br i1 %261, label %262, label %267

262:                                              ; preds = %254
  %263 = load i8*, i8** %11, align 8
  %264 = load i64, i64* %12, align 8
  %265 = sub i64 %264, 1
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  store i8 0, i8* %266, align 1
  br label %267

267:                                              ; preds = %262, %254, %251
  %268 = load i8*, i8** %11, align 8
  %269 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %270 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %269, i32 0, i32 4
  store i8* %268, i8** %270, align 8
  store i8* null, i8** %11, align 8
  br label %307

271:                                              ; preds = %246, %242
  %272 = load i8*, i8** %10, align 8
  %273 = call i64 @strcasecompare(i8* %272, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %300

275:                                              ; preds = %271
  %276 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %277 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %276, i32 0, i32 5
  %278 = load i8*, i8** %277, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %300, label %280

280:                                              ; preds = %275
  %281 = load i64, i64* %12, align 8
  %282 = icmp ugt i64 %281, 0
  br i1 %282, label %283, label %296

283:                                              ; preds = %280
  %284 = load i8*, i8** %11, align 8
  %285 = load i64, i64* %12, align 8
  %286 = sub i64 %285, 1
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 47
  br i1 %290, label %291, label %296

291:                                              ; preds = %283
  %292 = load i8*, i8** %11, align 8
  %293 = load i64, i64* %12, align 8
  %294 = sub i64 %293, 1
  %295 = getelementptr inbounds i8, i8* %292, i64 %294
  store i8 0, i8* %295, align 1
  br label %296

296:                                              ; preds = %291, %283, %280
  %297 = load i8*, i8** %11, align 8
  %298 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %299 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %298, i32 0, i32 5
  store i8* %297, i8** %299, align 8
  store i8* null, i8** %11, align 8
  br label %306

300:                                              ; preds = %275, %271
  %301 = load i8*, i8** %10, align 8
  %302 = call i32 @free(i8* %301)
  %303 = load i8*, i8** %11, align 8
  %304 = call i32 @free(i8* %303)
  %305 = load i64, i64* @CURLE_URL_MALFORMAT, align 8
  store i64 %305, i64* %2, align 8
  br label %348

306:                                              ; preds = %296
  br label %307

307:                                              ; preds = %306, %267
  br label %308

308:                                              ; preds = %307, %238
  br label %309

309:                                              ; preds = %308, %209
  br label %310

310:                                              ; preds = %309, %180
  %311 = load i8*, i8** %10, align 8
  %312 = call i32 @free(i8* %311)
  %313 = load i8*, i8** %11, align 8
  %314 = call i32 @free(i8* %313)
  br label %76

315:                                              ; preds = %76
  %316 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %317 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %316, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %340

320:                                              ; preds = %315
  %321 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %322 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %321, i32 0, i32 2
  %323 = load i8*, i8** %322, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %340, label %325

325:                                              ; preds = %320
  %326 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %327 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %326, i32 0, i32 3
  %328 = load i8*, i8** %327, align 8
  %329 = icmp ne i8* %328, null
  br i1 %329, label %340, label %330

330:                                              ; preds = %325
  %331 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %332 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @CURLUPART_QUERY, align 4
  %336 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %337 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %336, i32 0, i32 6
  %338 = load i32, i32* @CURLU_URLDECODE, align 4
  %339 = call i32 @curl_url_get(i32 %334, i32 %335, i32* %337, i32 %338)
  br label %340

340:                                              ; preds = %330, %325, %320, %315
  %341 = load i8*, i8** %8, align 8
  %342 = load i8, i8* %341, align 1
  %343 = icmp ne i8 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %340
  %345 = load i64, i64* @CURLE_URL_MALFORMAT, align 8
  store i64 %345, i64* %2, align 8
  br label %348

346:                                              ; preds = %340
  %347 = load i64, i64* @CURLE_OK, align 8
  store i64 %347, i64* %2, align 8
  br label %348

348:                                              ; preds = %346, %344, %300, %144, %118, %103, %69
  %349 = load i64, i64* %2, align 8
  ret i64 %349
}

declare dso_local i64 @imap_is_bchar(i8 signext) #1

declare dso_local i64 @Curl_urldecode(%struct.Curl_easy*, i8*, i32, i8**, i64*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i8*, i8*) #1

declare dso_local i64 @strcasecompare(i8*, i8*) #1

declare dso_local i32 @curl_url_get(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
