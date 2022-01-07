; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_urlapi.c_seturl.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_urlapi.c_seturl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.Curl_handler = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@MAX_SCHEME_LEN = common dso_local global i32 0, align 4
@CURLUE_MALFORMED_INPUT = common dso_local global i64 0, align 8
@CURL_MAX_INPUT_LENGTH = common dso_local global i64 0, align 8
@CURLUE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"localhost/\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"127.0.0.1/\00", align 1
@CURLU_NON_SUPPORT_SCHEME = common dso_local global i32 0, align 4
@CURLUE_UNSUPPORTED_SCHEME = common dso_local global i64 0, align 8
@CURLU_DEFAULT_SCHEME = common dso_local global i32 0, align 4
@CURLU_GUESS_SCHEME = common dso_local global i32 0, align 4
@DEFAULT_SCHEME = common dso_local global i64 0, align 8
@CURLU_NO_AUTHORITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ftp.\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"dict.\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ldap.\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ldap\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"imap.\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"imap\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"smtp.\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"smtp\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"pop3.\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pop3\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@CURLU_URLENCODE = common dso_local global i32 0, align 4
@CURLU_PATH_AS_IS = common dso_local global i32 0, align 4
@CURLUE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_6__*, i32)* @seturl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @seturl(i8* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.Curl_handler*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %9, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* @MAX_SCHEME_LEN, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %15, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  store i8* null, i8** %17, align 8
  store i64 0, i64* %18, align 8
  store %struct.Curl_handler* null, %struct.Curl_handler** %20, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %3
  %39 = load i64, i64* @CURLUE_MALFORMED_INPUT, align 8
  store i64 %39, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

40:                                               ; preds = %3
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %19, align 8
  %44 = load i64, i64* %19, align 8
  %45 = load i64, i64* @CURL_MAX_INPUT_LENGTH, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* @CURLUE_MALFORMED_INPUT, align 8
  store i64 %48, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

49:                                               ; preds = %40
  %50 = load i64, i64* %19, align 8
  %51 = mul i64 %50, 2
  %52 = add i64 %51, 2
  %53 = trunc i64 %52 to i32
  %54 = call i8* @malloc(i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  store i8* %54, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %49
  %60 = load i64, i64* @CURLUE_OUT_OF_MEMORY, align 8
  store i64 %60, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

61:                                               ; preds = %49
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %19, align 8
  %64 = add i64 %63, 1
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %5, align 8
  %69 = trunc i64 %33 to i32
  %70 = call i64 @Curl_is_absolute_url(i8* %68, i8* %35, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %14, align 4
  %74 = call i32 @strlen(i8* %35)
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %18, align 8
  br label %76

76:                                               ; preds = %72, %61
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %153

79:                                               ; preds = %76
  %80 = call i64 @strcasecompare(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %153

82:                                               ; preds = %79
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 5
  %86 = call i32 @strcpy(i8* %83, i8* %85)
  store i8* null, i8** %10, align 8
  %87 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %82
  %95 = load i64, i64* @CURLUE_OUT_OF_MEMORY, align 8
  store i64 %95, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

96:                                               ; preds = %82
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 47
  br i1 %101, label %102, label %135

102:                                              ; preds = %96
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 47
  br i1 %107, label %108, label %135

108:                                              ; preds = %102
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  store i8* %110, i8** %22, align 8
  %111 = load i8*, i8** %22, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 47
  br i1 %115, label %116, label %133

116:                                              ; preds = %108
  %117 = load i8*, i8** %22, align 8
  %118 = call i64 @STARTS_WITH_URL_DRIVE_PREFIX(i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %116
  %121 = load i8*, i8** %22, align 8
  %122 = call i64 @checkprefix(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %120
  %125 = load i8*, i8** %22, align 8
  %126 = call i64 @checkprefix(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = load i64, i64* @CURLUE_MALFORMED_INPUT, align 8
  store i64 %129, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

130:                                              ; preds = %124, %120
  %131 = load i8*, i8** %22, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 9
  store i8* %132, i8** %22, align 8
  br label %133

133:                                              ; preds = %130, %116, %108
  %134 = load i8*, i8** %22, align 8
  store i8* %134, i8** %8, align 8
  br label %135

135:                                              ; preds = %133, %102, %96
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 47, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = call i64 @STARTS_WITH_URL_DRIVE_PREFIX(i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %141, %135
  %147 = load i8*, i8** %8, align 8
  %148 = call i64 @STARTS_WITH_URL_DRIVE_PREFIX(i8* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146, %141
  %151 = load i64, i64* @CURLUE_MALFORMED_INPUT, align 8
  store i64 %151, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

152:                                              ; preds = %146
  br label %335

153:                                              ; preds = %79, %76
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  store i8 0, i8* %155, align 1
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %207

158:                                              ; preds = %153
  store i32 0, i32* %26, align 4
  %159 = load i8*, i8** %5, align 8
  %160 = load i64, i64* %18, align 8
  %161 = add i64 %160, 1
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8* %162, i8** %23, align 8
  br label %163

163:                                              ; preds = %176, %158
  %164 = load i8*, i8** %23, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = load i8*, i8** %23, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 47
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* %26, align 4
  %173 = icmp slt i32 %172, 4
  br label %174

174:                                              ; preds = %171, %166, %163
  %175 = phi i1 [ false, %166 ], [ false, %163 ], [ %173, %171 ]
  br i1 %175, label %176, label %181

176:                                              ; preds = %174
  %177 = load i8*, i8** %23, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %23, align 8
  %179 = load i32, i32* %26, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %26, align 4
  br label %163

181:                                              ; preds = %174
  %182 = load i32, i32* %26, align 4
  %183 = icmp slt i32 %182, 1
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %26, align 4
  %186 = icmp sgt i32 %185, 3
  br i1 %186, label %187, label %189

187:                                              ; preds = %184, %181
  %188 = load i64, i64* @CURLUE_MALFORMED_INPUT, align 8
  store i64 %188, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

189:                                              ; preds = %184
  store i8* %35, i8** %17, align 8
  %190 = load i8*, i8** %17, align 8
  %191 = call %struct.Curl_handler* @Curl_builtin_scheme(i8* %190)
  %192 = icmp ne %struct.Curl_handler* %191, null
  br i1 %192, label %200, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @CURLU_NON_SUPPORT_SCHEME, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %193
  %199 = load i64, i64* @CURLUE_UNSUPPORTED_SCHEME, align 8
  store i64 %199, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

200:                                              ; preds = %193, %189
  %201 = load i8*, i8** %17, align 8
  %202 = call i64 @junkscan(i8* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i64, i64* @CURLUE_MALFORMED_INPUT, align 8
  store i64 %205, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

206:                                              ; preds = %200
  br label %226

207:                                              ; preds = %153
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @CURLU_DEFAULT_SCHEME, align 4
  %210 = load i32, i32* @CURLU_GUESS_SCHEME, align 4
  %211 = or i32 %209, %210
  %212 = and i32 %208, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %207
  %215 = load i64, i64* @CURLUE_MALFORMED_INPUT, align 8
  store i64 %215, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

216:                                              ; preds = %207
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @CURLU_DEFAULT_SCHEME, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i64, i64* @DEFAULT_SCHEME, align 8
  %223 = inttoptr i64 %222 to i8*
  store i8* %223, i8** %17, align 8
  br label %224

224:                                              ; preds = %221, %216
  %225 = load i8*, i8** %5, align 8
  store i8* %225, i8** %23, align 8
  br label %226

226:                                              ; preds = %224, %206
  %227 = load i8*, i8** %23, align 8
  store i8* %227, i8** %24, align 8
  br label %228

228:                                              ; preds = %241, %226
  %229 = load i8*, i8** %23, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load i8*, i8** %23, align 8
  %235 = load i8, i8* %234, align 1
  %236 = call i32 @HOSTNAME_END(i8 signext %235)
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  br label %239

239:                                              ; preds = %233, %228
  %240 = phi i1 [ false, %228 ], [ %238, %233 ]
  br i1 %240, label %241, label %244

241:                                              ; preds = %239
  %242 = load i8*, i8** %23, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %23, align 8
  br label %228

244:                                              ; preds = %239
  %245 = load i8*, i8** %23, align 8
  %246 = load i8*, i8** %24, align 8
  %247 = ptrtoint i8* %245 to i64
  %248 = ptrtoint i8* %246 to i64
  %249 = sub i64 %247, %248
  store i64 %249, i64* %25, align 8
  %250 = load i64, i64* %25, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %244
  %253 = load i8*, i8** %10, align 8
  %254 = load i8*, i8** %24, align 8
  %255 = load i64, i64* %25, align 8
  %256 = call i32 @memcpy(i8* %253, i8* %254, i64 %255)
  %257 = load i8*, i8** %10, align 8
  %258 = load i64, i64* %25, align 8
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  store i8 0, i8* %259, align 1
  br label %268

260:                                              ; preds = %244
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* @CURLU_NO_AUTHORITY, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %260
  %266 = load i64, i64* @CURLUE_MALFORMED_INPUT, align 8
  store i64 %266, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

267:                                              ; preds = %260
  br label %268

268:                                              ; preds = %267, %252
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* @CURLU_GUESS_SCHEME, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %313

273:                                              ; preds = %268
  %274 = load i8*, i8** %17, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %313, label %276

276:                                              ; preds = %273
  %277 = load i8*, i8** %10, align 8
  %278 = call i64 @checkprefix(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  br label %312

281:                                              ; preds = %276
  %282 = load i8*, i8** %10, align 8
  %283 = call i64 @checkprefix(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  br label %311

286:                                              ; preds = %281
  %287 = load i8*, i8** %10, align 8
  %288 = call i64 @checkprefix(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %17, align 8
  br label %310

291:                                              ; preds = %286
  %292 = load i8*, i8** %10, align 8
  %293 = call i64 @checkprefix(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %291
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %17, align 8
  br label %309

296:                                              ; preds = %291
  %297 = load i8*, i8** %10, align 8
  %298 = call i64 @checkprefix(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %17, align 8
  br label %308

301:                                              ; preds = %296
  %302 = load i8*, i8** %10, align 8
  %303 = call i64 @checkprefix(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %301
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %17, align 8
  br label %307

306:                                              ; preds = %301
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %17, align 8
  br label %307

307:                                              ; preds = %306, %305
  br label %308

308:                                              ; preds = %307, %300
  br label %309

309:                                              ; preds = %308, %295
  br label %310

310:                                              ; preds = %309, %290
  br label %311

311:                                              ; preds = %310, %285
  br label %312

312:                                              ; preds = %311, %280
  br label %313

313:                                              ; preds = %312, %273, %268
  %314 = load i8*, i8** %23, align 8
  %315 = call i32 @strlen(i8* %314)
  %316 = sext i32 %315 to i64
  store i64 %316, i64* %25, align 8
  %317 = load i8*, i8** %8, align 8
  %318 = load i8*, i8** %23, align 8
  %319 = load i64, i64* %25, align 8
  %320 = call i32 @memcpy(i8* %317, i8* %318, i64 %319)
  %321 = load i8*, i8** %8, align 8
  %322 = load i64, i64* %25, align 8
  %323 = getelementptr inbounds i8, i8* %321, i64 %322
  store i8 0, i8* %323, align 1
  %324 = load i8*, i8** %17, align 8
  %325 = call i8* @strdup(i8* %324)
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 1
  store i8* %325, i8** %327, align 8
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 1
  %330 = load i8*, i8** %329, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %334, label %332

332:                                              ; preds = %313
  %333 = load i64, i64* @CURLUE_OUT_OF_MEMORY, align 8
  store i64 %333, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

334:                                              ; preds = %313
  br label %335

335:                                              ; preds = %334, %152
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 1
  %338 = load i8*, i8** %337, align 8
  %339 = call %struct.Curl_handler* @Curl_builtin_scheme(i8* %338)
  store %struct.Curl_handler* %339, %struct.Curl_handler** %20, align 8
  %340 = load i8*, i8** %8, align 8
  %341 = call i64 @junkscan(i8* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %335
  %344 = load i64, i64* @CURLUE_MALFORMED_INPUT, align 8
  store i64 %344, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

345:                                              ; preds = %335
  %346 = load i32, i32* %7, align 4
  %347 = load i32, i32* @CURLU_URLENCODE, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %374

350:                                              ; preds = %345
  %351 = load i8*, i8** %8, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 0
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %374

356:                                              ; preds = %350
  %357 = load i8*, i8** %8, align 8
  %358 = call i32 @strlen(i8* %357)
  %359 = mul nsw i32 %358, 3
  %360 = call i8* @malloc(i32 %359)
  store i8* %360, i8** %27, align 8
  %361 = load i8*, i8** %27, align 8
  %362 = icmp ne i8* %361, null
  br i1 %362, label %365, label %363

363:                                              ; preds = %356
  %364 = load i64, i64* @CURLUE_OUT_OF_MEMORY, align 8
  store i64 %364, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

365:                                              ; preds = %356
  %366 = load i32, i32* @TRUE, align 4
  store i32 %366, i32* %9, align 4
  %367 = load i8*, i8** %27, align 8
  %368 = load i8*, i8** %8, align 8
  %369 = load i32, i32* @TRUE, align 4
  %370 = call i32 @strcpy_url(i8* %367, i8* %368, i32 %369)
  %371 = load i8*, i8** %27, align 8
  store i8* %371, i8** %8, align 8
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 2
  store i8* %371, i8** %373, align 8
  br label %374

374:                                              ; preds = %365, %350, %345
  %375 = load i8*, i8** %8, align 8
  %376 = call i8* @strchr(i8* %375, i8 signext 35)
  store i8* %376, i8** %12, align 8
  %377 = load i8*, i8** %12, align 8
  %378 = icmp ne i8* %377, null
  br i1 %378, label %379, label %399

379:                                              ; preds = %374
  %380 = load i8*, i8** %12, align 8
  %381 = getelementptr inbounds i8, i8* %380, i32 1
  store i8* %381, i8** %12, align 8
  store i8 0, i8* %380, align 1
  %382 = load i8*, i8** %12, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 0
  %384 = load i8, i8* %383, align 1
  %385 = icmp ne i8 %384, 0
  br i1 %385, label %386, label %398

386:                                              ; preds = %379
  %387 = load i8*, i8** %12, align 8
  %388 = call i8* @strdup(i8* %387)
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 3
  store i8* %388, i8** %390, align 8
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 3
  %393 = load i8*, i8** %392, align 8
  %394 = icmp ne i8* %393, null
  br i1 %394, label %397, label %395

395:                                              ; preds = %386
  %396 = load i64, i64* @CURLUE_OUT_OF_MEMORY, align 8
  store i64 %396, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

397:                                              ; preds = %386
  br label %398

398:                                              ; preds = %397, %379
  br label %399

399:                                              ; preds = %398, %374
  %400 = load i8*, i8** %8, align 8
  %401 = call i8* @strchr(i8* %400, i8 signext 63)
  store i8* %401, i8** %11, align 8
  %402 = load i8*, i8** %11, align 8
  %403 = icmp ne i8* %402, null
  br i1 %403, label %404, label %418

404:                                              ; preds = %399
  %405 = load i8*, i8** %11, align 8
  %406 = getelementptr inbounds i8, i8* %405, i32 1
  store i8* %406, i8** %11, align 8
  store i8 0, i8* %405, align 1
  %407 = load i8*, i8** %11, align 8
  %408 = call i8* @strdup(i8* %407)
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 4
  store i8* %408, i8** %410, align 8
  %411 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 4
  %413 = load i8*, i8** %412, align 8
  %414 = icmp ne i8* %413, null
  br i1 %414, label %417, label %415

415:                                              ; preds = %404
  %416 = load i64, i64* @CURLUE_OUT_OF_MEMORY, align 8
  store i64 %416, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

417:                                              ; preds = %404
  br label %418

418:                                              ; preds = %417, %399
  %419 = load i8*, i8** %8, align 8
  %420 = getelementptr inbounds i8, i8* %419, i64 0
  %421 = load i8, i8* %420, align 1
  %422 = icmp ne i8 %421, 0
  br i1 %422, label %424, label %423

423:                                              ; preds = %418
  store i8* null, i8** %8, align 8
  br label %479

424:                                              ; preds = %418
  %425 = load i32, i32* %7, align 4
  %426 = load i32, i32* @CURLU_PATH_AS_IS, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %458, label %429

429:                                              ; preds = %424
  %430 = load i8*, i8** %8, align 8
  %431 = call i8* @Curl_dedotdotify(i8* %430)
  store i8* %431, i8** %28, align 8
  %432 = load i8*, i8** %28, align 8
  %433 = icmp ne i8* %432, null
  br i1 %433, label %436, label %434

434:                                              ; preds = %429
  %435 = load i64, i64* @CURLUE_OUT_OF_MEMORY, align 8
  store i64 %435, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

436:                                              ; preds = %429
  %437 = load i8*, i8** %28, align 8
  %438 = load i8*, i8** %8, align 8
  %439 = call i64 @strcmp(i8* %437, i8* %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %454

441:                                              ; preds = %436
  %442 = load i32, i32* %9, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %449

444:                                              ; preds = %441
  %445 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 2
  %447 = load i8*, i8** %446, align 8
  %448 = call i32 @Curl_safefree(i8* %447)
  br label %449

449:                                              ; preds = %444, %441
  %450 = load i8*, i8** %28, align 8
  store i8* %450, i8** %8, align 8
  %451 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 2
  store i8* %450, i8** %452, align 8
  %453 = load i32, i32* @TRUE, align 4
  store i32 %453, i32* %9, align 4
  br label %457

454:                                              ; preds = %436
  %455 = load i8*, i8** %28, align 8
  %456 = call i32 @free(i8* %455)
  br label %457

457:                                              ; preds = %454, %449
  br label %458

458:                                              ; preds = %457, %424
  %459 = load i32, i32* %9, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %463

461:                                              ; preds = %458
  %462 = load i8*, i8** %8, align 8
  br label %466

463:                                              ; preds = %458
  %464 = load i8*, i8** %8, align 8
  %465 = call i8* @strdup(i8* %464)
  br label %466

466:                                              ; preds = %463, %461
  %467 = phi i8* [ %462, %461 ], [ %465, %463 ]
  %468 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 5
  store i8* %467, i8** %469, align 8
  %470 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 5
  %472 = load i8*, i8** %471, align 8
  %473 = icmp ne i8* %472, null
  br i1 %473, label %476, label %474

474:                                              ; preds = %466
  %475 = load i64, i64* @CURLUE_OUT_OF_MEMORY, align 8
  store i64 %475, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

476:                                              ; preds = %466
  %477 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %478 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %477, i32 0, i32 2
  store i8* null, i8** %478, align 8
  br label %479

479:                                              ; preds = %476, %423
  %480 = load i8*, i8** %10, align 8
  %481 = icmp ne i8* %480, null
  br i1 %481, label %482, label %536

482:                                              ; preds = %479
  %483 = load i8*, i8** %10, align 8
  %484 = call i64 @junkscan(i8* %483)
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %488

486:                                              ; preds = %482
  %487 = load i64, i64* @CURLUE_MALFORMED_INPUT, align 8
  store i64 %487, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

488:                                              ; preds = %482
  %489 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %490 = load %struct.Curl_handler*, %struct.Curl_handler** %20, align 8
  %491 = load i32, i32* %7, align 4
  %492 = call i64 @parse_hostname_login(%struct.TYPE_6__* %489, %struct.Curl_handler* %490, i8** %10, i32 %491)
  store i64 %492, i64* %13, align 8
  %493 = load i64, i64* %13, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %497

495:                                              ; preds = %488
  %496 = load i64, i64* %13, align 8
  store i64 %496, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

497:                                              ; preds = %488
  %498 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %499 = load i8*, i8** %10, align 8
  %500 = call i64 @Curl_parse_port(%struct.TYPE_6__* %498, i8* %499)
  store i64 %500, i64* %13, align 8
  %501 = load i64, i64* %13, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %505

503:                                              ; preds = %497
  %504 = load i64, i64* %13, align 8
  store i64 %504, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

505:                                              ; preds = %497
  %506 = load i8*, i8** %10, align 8
  %507 = call i32 @strlen(i8* %506)
  %508 = icmp eq i32 0, %507
  br i1 %508, label %509, label %515

509:                                              ; preds = %505
  %510 = load i32, i32* %7, align 4
  %511 = load i32, i32* @CURLU_NO_AUTHORITY, align 4
  %512 = and i32 %510, %511
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %515

514:                                              ; preds = %509
  br label %524

515:                                              ; preds = %509, %505
  %516 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %517 = load i8*, i8** %10, align 8
  %518 = call i64 @hostname_check(%struct.TYPE_6__* %516, i8* %517)
  store i64 %518, i64* %13, align 8
  %519 = load i64, i64* %13, align 8
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %523

521:                                              ; preds = %515
  %522 = load i64, i64* %13, align 8
  store i64 %522, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

523:                                              ; preds = %515
  br label %524

524:                                              ; preds = %523, %514
  %525 = load i8*, i8** %10, align 8
  %526 = call i8* @strdup(i8* %525)
  %527 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %527, i32 0, i32 6
  store i8* %526, i8** %528, align 8
  %529 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %529, i32 0, i32 6
  %531 = load i8*, i8** %530, align 8
  %532 = icmp ne i8* %531, null
  br i1 %532, label %535, label %533

533:                                              ; preds = %524
  %534 = load i64, i64* @CURLUE_OUT_OF_MEMORY, align 8
  store i64 %534, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

535:                                              ; preds = %524
  br label %536

536:                                              ; preds = %535, %479
  %537 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 0
  %539 = load i8*, i8** %538, align 8
  %540 = call i32 @Curl_safefree(i8* %539)
  %541 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %542 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %541, i32 0, i32 2
  %543 = load i8*, i8** %542, align 8
  %544 = call i32 @Curl_safefree(i8* %543)
  %545 = load i64, i64* @CURLUE_OK, align 8
  store i64 %545, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %546

546:                                              ; preds = %536, %533, %521, %503, %495, %486, %474, %434, %415, %395, %363, %343, %332, %265, %214, %204, %198, %187, %150, %128, %94, %59, %47, %38
  %547 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %547)
  %548 = load i64, i64* %4, align 8
  ret i64 %548
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i64 @Curl_is_absolute_url(i8*, i8*, i32) #2

declare dso_local i64 @strcasecompare(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i64 @STARTS_WITH_URL_DRIVE_PREFIX(i8*) #2

declare dso_local i64 @checkprefix(i8*, i8*) #2

declare dso_local %struct.Curl_handler* @Curl_builtin_scheme(i8*) #2

declare dso_local i64 @junkscan(i8*) #2

declare dso_local i32 @HOSTNAME_END(i8 signext) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @strcpy_url(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @Curl_dedotdotify(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @Curl_safefree(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @parse_hostname_login(%struct.TYPE_6__*, %struct.Curl_handler*, i8**, i32) #2

declare dso_local i64 @Curl_parse_port(%struct.TYPE_6__*, i8*) #2

declare dso_local i64 @hostname_check(%struct.TYPE_6__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
