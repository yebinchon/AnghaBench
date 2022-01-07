; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_check_accessors.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_check_accessors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_STRING = common dso_local global i32* null, align 8
@TEST_VALUE = common dso_local global i32* null, align 8
@TEST_NAME = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Accessors failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_accessors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_accessors(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = load i32*, i32** @TEST_STRING, align 8
  %9 = call i64 @vc_uri_set_scheme(i32* %7, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @vc_uri_scheme(i32* %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32*, i32** @TEST_STRING, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i32* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32*, i32** %2, align 8
  %26 = call i64 @vc_uri_set_scheme(i32* %25, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32*, i32** %2, align 8
  %33 = call i8* @vc_uri_scheme(i32* %32)
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %31
  br label %42

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %38
  %43 = load i32*, i32** %2, align 8
  %44 = load i32*, i32** @TEST_STRING, align 8
  %45 = call i64 @vc_uri_set_userinfo(i32* %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %42
  %48 = load i32*, i32** %2, align 8
  %49 = call i8* @vc_uri_userinfo(i32* %48)
  store i8* %49, i8** %4, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32*, i32** @TEST_STRING, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @strcmp(i32* %53, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32*, i32** %2, align 8
  %62 = call i64 @vc_uri_set_userinfo(i32* %61, i32* null)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32*, i32** %2, align 8
  %69 = call i8* @vc_uri_userinfo(i32* %68)
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %67
  br label %78

75:                                               ; preds = %42
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %74
  %79 = load i32*, i32** %2, align 8
  %80 = load i32*, i32** @TEST_STRING, align 8
  %81 = call i64 @vc_uri_set_host(i32* %79, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %78
  %84 = load i32*, i32** %2, align 8
  %85 = call i8* @vc_uri_host(i32* %84)
  store i8* %85, i8** %4, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32*, i32** @TEST_STRING, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i64 @strcmp(i32* %89, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32*, i32** %2, align 8
  %98 = call i64 @vc_uri_set_host(i32* %97, i32* null)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %96
  %104 = load i32*, i32** %2, align 8
  %105 = call i8* @vc_uri_host(i32* %104)
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %103
  br label %114

111:                                              ; preds = %78
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %110
  %115 = load i32*, i32** %2, align 8
  %116 = load i32*, i32** @TEST_STRING, align 8
  %117 = call i64 @vc_uri_set_port(i32* %115, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %147

119:                                              ; preds = %114
  %120 = load i32*, i32** %2, align 8
  %121 = call i8* @vc_uri_port(i32* %120)
  store i8* %121, i8** %4, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32*, i32** @TEST_STRING, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = call i64 @strcmp(i32* %125, i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124, %119
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i32*, i32** %2, align 8
  %134 = call i64 @vc_uri_set_port(i32* %133, i32* null)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %136, %132
  %140 = load i32*, i32** %2, align 8
  %141 = call i8* @vc_uri_port(i32* %140)
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %143, %139
  br label %150

147:                                              ; preds = %114
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %147, %146
  %151 = load i32*, i32** %2, align 8
  %152 = load i32*, i32** @TEST_STRING, align 8
  %153 = call i64 @vc_uri_set_path(i32* %151, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %183

155:                                              ; preds = %150
  %156 = load i32*, i32** %2, align 8
  %157 = call i8* @vc_uri_path(i32* %156)
  store i8* %157, i8** %4, align 8
  %158 = load i8*, i8** %4, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load i32*, i32** @TEST_STRING, align 8
  %162 = load i8*, i8** %4, align 8
  %163 = call i64 @strcmp(i32* %161, i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160, %155
  %166 = load i32, i32* %3, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i32*, i32** %2, align 8
  %170 = call i64 @vc_uri_set_path(i32* %169, i32* null)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %172, %168
  %176 = load i32*, i32** %2, align 8
  %177 = call i8* @vc_uri_path(i32* %176)
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* %3, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %179, %175
  br label %186

183:                                              ; preds = %150
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %183, %182
  %187 = load i32*, i32** %2, align 8
  %188 = load i32*, i32** @TEST_STRING, align 8
  %189 = call i64 @vc_uri_set_fragment(i32* %187, i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %219

191:                                              ; preds = %186
  %192 = load i32*, i32** %2, align 8
  %193 = call i8* @vc_uri_fragment(i32* %192)
  store i8* %193, i8** %4, align 8
  %194 = load i8*, i8** %4, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load i32*, i32** @TEST_STRING, align 8
  %198 = load i8*, i8** %4, align 8
  %199 = call i64 @strcmp(i32* %197, i8* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196, %191
  %202 = load i32, i32* %3, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %201, %196
  %205 = load i32*, i32** %2, align 8
  %206 = call i64 @vc_uri_set_fragment(i32* %205, i32* null)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* %3, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %208, %204
  %212 = load i32*, i32** %2, align 8
  %213 = call i8* @vc_uri_fragment(i32* %212)
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i32, i32* %3, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %215, %211
  br label %222

219:                                              ; preds = %186
  %220 = load i32, i32* %3, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %219, %218
  %223 = load i32*, i32** %2, align 8
  %224 = call i64 @vc_uri_add_query(i32* %223, i32* null, i32* null)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load i32, i32* %3, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %226, %222
  %230 = load i32*, i32** %2, align 8
  %231 = load i32*, i32** @TEST_VALUE, align 8
  %232 = call i64 @vc_uri_add_query(i32* %230, i32* null, i32* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i32, i32* %3, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %3, align 4
  br label %237

237:                                              ; preds = %234, %229
  %238 = load i32*, i32** %2, align 8
  %239 = load i32*, i32** @TEST_STRING, align 8
  %240 = call i64 @vc_uri_add_query(i32* %238, i32* %239, i32* null)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %237
  %243 = load i32, i32* %3, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %242, %237
  %246 = load i32*, i32** %2, align 8
  %247 = load i32*, i32** @TEST_NAME, align 8
  %248 = load i32*, i32** @TEST_VALUE, align 8
  %249 = call i64 @vc_uri_add_query(i32* %246, i32* %247, i32* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %245
  %252 = load i32, i32* %3, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %3, align 4
  br label %254

254:                                              ; preds = %251, %245
  %255 = load i32*, i32** %2, align 8
  %256 = call i32 @vc_uri_num_queries(i32* %255)
  %257 = icmp eq i32 %256, 2
  br i1 %257, label %258, label %302

258:                                              ; preds = %254
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %259 = load i32*, i32** %2, align 8
  %260 = call i32 @vc_uri_query(i32* %259, i32 0, i8** %5, i8** %6)
  %261 = load i8*, i8** %5, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load i32*, i32** @TEST_STRING, align 8
  %265 = load i8*, i8** %5, align 8
  %266 = call i64 @strcmp(i32* %264, i8* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %263, %258
  %269 = load i32, i32* %3, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %268, %263
  %272 = load i8*, i8** %6, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i32, i32* %3, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %3, align 4
  br label %277

277:                                              ; preds = %274, %271
  %278 = load i32*, i32** %2, align 8
  %279 = call i32 @vc_uri_query(i32* %278, i32 1, i8** %5, i8** %6)
  %280 = load i8*, i8** %5, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load i32*, i32** @TEST_NAME, align 8
  %284 = load i8*, i8** %5, align 8
  %285 = call i64 @strcmp(i32* %283, i8* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282, %277
  %288 = load i32, i32* %3, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %3, align 4
  br label %290

290:                                              ; preds = %287, %282
  %291 = load i8*, i8** %6, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %298

293:                                              ; preds = %290
  %294 = load i32*, i32** @TEST_VALUE, align 8
  %295 = load i8*, i8** %6, align 8
  %296 = call i64 @strcmp(i32* %294, i8* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %293, %290
  %299 = load i32, i32* %3, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %3, align 4
  br label %301

301:                                              ; preds = %298, %293
  br label %305

302:                                              ; preds = %254
  %303 = load i32, i32* %3, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %302, %301
  %306 = load i32, i32* %3, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  %309 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %310

310:                                              ; preds = %308, %305
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local i64 @vc_uri_set_scheme(i32*, i32*) #1

declare dso_local i8* @vc_uri_scheme(i32*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i64 @vc_uri_set_userinfo(i32*, i32*) #1

declare dso_local i8* @vc_uri_userinfo(i32*) #1

declare dso_local i64 @vc_uri_set_host(i32*, i32*) #1

declare dso_local i8* @vc_uri_host(i32*) #1

declare dso_local i64 @vc_uri_set_port(i32*, i32*) #1

declare dso_local i8* @vc_uri_port(i32*) #1

declare dso_local i64 @vc_uri_set_path(i32*, i32*) #1

declare dso_local i8* @vc_uri_path(i32*) #1

declare dso_local i64 @vc_uri_set_fragment(i32*, i32*) #1

declare dso_local i8* @vc_uri_fragment(i32*) #1

declare dso_local i64 @vc_uri_add_query(i32*, i32*, i32*) #1

declare dso_local i32 @vc_uri_num_queries(i32*) #1

declare dso_local i32 @vc_uri_query(i32*, i32, i8**, i8**) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
