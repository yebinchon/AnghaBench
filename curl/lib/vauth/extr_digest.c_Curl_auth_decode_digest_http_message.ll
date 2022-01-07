; ModuleID = '/home/carl/AnghaBench/curl/lib/vauth/extr_digest.c_Curl_auth_decode_digest_http_message.c'
source_filename = "/home/carl/AnghaBench/curl/lib/vauth/extr_digest.c_Curl_auth_decode_digest_http_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.digestdata = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@DIGEST_MAX_VALUE_LENGTH = common dso_local global i32 0, align 4
@DIGEST_MAX_CONTENT_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nonce\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stale\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"realm\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"qop\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@DIGEST_QOP_VALUE_STRING_AUTH = common dso_local global i8* null, align 8
@DIGEST_QOP_VALUE_STRING_AUTH_INT = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"MD5-sess\00", align 1
@CURLDIGESTALGO_MD5SESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@CURLDIGESTALGO_MD5 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"SHA-256\00", align 1
@CURLDIGESTALGO_SHA256 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"SHA-256-SESS\00", align 1
@CURLDIGESTALGO_SHA256SESS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"SHA-512-256\00", align 1
@CURLDIGESTALGO_SHA512_256 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"SHA-512-256-SESS\00", align 1
@CURLDIGESTALGO_SHA512_256SESS = common dso_local global i32 0, align 4
@CURLE_BAD_CONTENT_ENCODING = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"userhash\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_auth_decode_digest_http_message(i8* %0, %struct.digestdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.digestdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.digestdata* %1, %struct.digestdata** %5, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %19 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %20 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i8*, i8** @TRUE, align 8
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %28 = call i32 @Curl_auth_digest_cleanup(%struct.digestdata* %27)
  br label %29

29:                                               ; preds = %314, %26
  %30 = load i32, i32* @DIGEST_MAX_VALUE_LENGTH, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %11, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %34 = load i32, i32* @DIGEST_MAX_CONTENT_LENGTH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %13, align 8
  br label %37

37:                                               ; preds = %49, %29
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @ISSPACE(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %4, align 8
  br label %37

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @Curl_auth_digest_get_pair(i8* %53, i8* %33, i8* %36, i8** %4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %285

56:                                               ; preds = %52
  %57 = call i64 @strcasecompare(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %61 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @free(i8* %62)
  %64 = call i8* @strdup(i8* %36)
  %65 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %66 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %68 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

73:                                               ; preds = %59
  br label %284

74:                                               ; preds = %56
  %75 = call i64 @strcasecompare(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = call i64 @strcasecompare(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i8*, i8** @TRUE, align 8
  %82 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %83 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  %84 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %85 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %84, i32 0, i32 1
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %77
  br label %283

87:                                               ; preds = %74
  %88 = call i64 @strcasecompare(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %92 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @free(i8* %93)
  %95 = call i8* @strdup(i8* %36)
  %96 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %97 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %99 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %90
  %103 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

104:                                              ; preds = %90
  br label %282

105:                                              ; preds = %87
  %106 = call i64 @strcasecompare(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %110 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @free(i8* %111)
  %113 = call i8* @strdup(i8* %36)
  %114 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %115 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %117 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %108
  %121 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

122:                                              ; preds = %108
  br label %281

123:                                              ; preds = %105
  %124 = call i64 @strcasecompare(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %199

126:                                              ; preds = %123
  store i8* null, i8** %15, align 8
  %127 = call i8* @strdup(i8* %36)
  store i8* %127, i8** %10, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %131, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

132:                                              ; preds = %126
  %133 = load i8*, i8** %10, align 8
  %134 = call i8* @strtok_r(i8* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %15)
  store i8* %134, i8** %9, align 8
  br label %135

135:                                              ; preds = %155, %132
  %136 = load i8*, i8** %9, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = load i8*, i8** %9, align 8
  %140 = load i8*, i8** @DIGEST_QOP_VALUE_STRING_AUTH, align 8
  %141 = call i64 @strcasecompare(i8* %139, i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i8*, i8** @TRUE, align 8
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %7, align 4
  br label %155

146:                                              ; preds = %138
  %147 = load i8*, i8** %9, align 8
  %148 = load i8*, i8** @DIGEST_QOP_VALUE_STRING_AUTH_INT, align 8
  %149 = call i64 @strcasecompare(i8* %147, i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i8*, i8** @TRUE, align 8
  %153 = ptrtoint i8* %152 to i32
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %151, %146
  br label %155

155:                                              ; preds = %154, %143
  %156 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %15)
  store i8* %156, i8** %9, align 8
  br label %135

157:                                              ; preds = %135
  %158 = load i8*, i8** %10, align 8
  %159 = call i32 @free(i8* %158)
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %157
  %163 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %164 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @free(i8* %165)
  %167 = load i8*, i8** @DIGEST_QOP_VALUE_STRING_AUTH, align 8
  %168 = call i8* @strdup(i8* %167)
  %169 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %170 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  %171 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %172 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %171, i32 0, i32 4
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %162
  %176 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %176, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

177:                                              ; preds = %162
  br label %198

178:                                              ; preds = %157
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %178
  %182 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %183 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %182, i32 0, i32 4
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @free(i8* %184)
  %186 = load i8*, i8** @DIGEST_QOP_VALUE_STRING_AUTH_INT, align 8
  %187 = call i8* @strdup(i8* %186)
  %188 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %189 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  %190 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %191 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %190, i32 0, i32 4
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %181
  %195 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %195, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

196:                                              ; preds = %181
  br label %197

197:                                              ; preds = %196, %178
  br label %198

198:                                              ; preds = %197, %177
  br label %280

199:                                              ; preds = %123
  %200 = call i64 @strcasecompare(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %266

202:                                              ; preds = %199
  %203 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %204 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %203, i32 0, i32 5
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @free(i8* %205)
  %207 = call i8* @strdup(i8* %36)
  %208 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %209 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %208, i32 0, i32 5
  store i8* %207, i8** %209, align 8
  %210 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %211 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %210, i32 0, i32 5
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %202
  %215 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %215, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

216:                                              ; preds = %202
  %217 = call i64 @strcasecompare(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load i32, i32* @CURLDIGESTALGO_MD5SESS, align 4
  %221 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %222 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %221, i32 0, i32 8
  store i32 %220, i32* %222, align 8
  br label %265

223:                                              ; preds = %216
  %224 = call i64 @strcasecompare(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i32, i32* @CURLDIGESTALGO_MD5, align 4
  %228 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %229 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %228, i32 0, i32 8
  store i32 %227, i32* %229, align 8
  br label %264

230:                                              ; preds = %223
  %231 = call i64 @strcasecompare(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i32, i32* @CURLDIGESTALGO_SHA256, align 4
  %235 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %236 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %235, i32 0, i32 8
  store i32 %234, i32* %236, align 8
  br label %263

237:                                              ; preds = %230
  %238 = call i64 @strcasecompare(i8* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load i32, i32* @CURLDIGESTALGO_SHA256SESS, align 4
  %242 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %243 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %242, i32 0, i32 8
  store i32 %241, i32* %243, align 8
  br label %262

244:                                              ; preds = %237
  %245 = call i64 @strcasecompare(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load i32, i32* @CURLDIGESTALGO_SHA512_256, align 4
  %249 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %250 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %249, i32 0, i32 8
  store i32 %248, i32* %250, align 8
  br label %261

251:                                              ; preds = %244
  %252 = call i64 @strcasecompare(i8* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = load i32, i32* @CURLDIGESTALGO_SHA512_256SESS, align 4
  %256 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %257 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %256, i32 0, i32 8
  store i32 %255, i32* %257, align 8
  br label %260

258:                                              ; preds = %251
  %259 = load i32, i32* @CURLE_BAD_CONTENT_ENCODING, align 4
  store i32 %259, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

260:                                              ; preds = %254
  br label %261

261:                                              ; preds = %260, %247
  br label %262

262:                                              ; preds = %261, %240
  br label %263

263:                                              ; preds = %262, %233
  br label %264

264:                                              ; preds = %263, %226
  br label %265

265:                                              ; preds = %264, %219
  br label %279

266:                                              ; preds = %199
  %267 = call i64 @strcasecompare(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %266
  %270 = call i64 @strcasecompare(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load i8*, i8** @TRUE, align 8
  %274 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %275 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %274, i32 0, i32 7
  store i8* %273, i8** %275, align 8
  br label %276

276:                                              ; preds = %272, %269
  br label %278

277:                                              ; preds = %266
  br label %278

278:                                              ; preds = %277, %276
  br label %279

279:                                              ; preds = %278, %265
  br label %280

280:                                              ; preds = %279, %198
  br label %281

281:                                              ; preds = %280, %122
  br label %282

282:                                              ; preds = %281, %104
  br label %283

283:                                              ; preds = %282, %86
  br label %284

284:                                              ; preds = %283, %73
  br label %286

285:                                              ; preds = %52
  store i32 2, i32* %14, align 4
  br label %311

286:                                              ; preds = %284
  br label %287

287:                                              ; preds = %299, %286
  %288 = load i8*, i8** %4, align 8
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %287
  %293 = load i8*, i8** %4, align 8
  %294 = load i8, i8* %293, align 1
  %295 = call i64 @ISSPACE(i8 signext %294)
  %296 = icmp ne i64 %295, 0
  br label %297

297:                                              ; preds = %292, %287
  %298 = phi i1 [ false, %287 ], [ %296, %292 ]
  br i1 %298, label %299, label %302

299:                                              ; preds = %297
  %300 = load i8*, i8** %4, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %4, align 8
  br label %287

302:                                              ; preds = %297
  %303 = load i8*, i8** %4, align 8
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp eq i32 44, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = load i8*, i8** %4, align 8
  %309 = getelementptr inbounds i8, i8* %308, i32 1
  store i8* %309, i8** %4, align 8
  br label %310

310:                                              ; preds = %307, %302
  store i32 0, i32* %14, align 4
  br label %311

311:                                              ; preds = %310, %285, %258, %214, %194, %175, %130, %120, %102, %71
  %312 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %312)
  %313 = load i32, i32* %14, align 4
  switch i32 %313, label %336 [
    i32 0, label %314
    i32 1, label %334
    i32 2, label %315
  ]

314:                                              ; preds = %311
  br label %29

315:                                              ; preds = %311
  %316 = load i32, i32* %6, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %315
  %319 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %320 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %319, i32 0, i32 6
  %321 = load i8*, i8** %320, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %325, label %323

323:                                              ; preds = %318
  %324 = load i32, i32* @CURLE_BAD_CONTENT_ENCODING, align 4
  store i32 %324, i32* %3, align 4
  br label %334

325:                                              ; preds = %318, %315
  %326 = load %struct.digestdata*, %struct.digestdata** %5, align 8
  %327 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %326, i32 0, i32 0
  %328 = load i8*, i8** %327, align 8
  %329 = icmp ne i8* %328, null
  br i1 %329, label %332, label %330

330:                                              ; preds = %325
  %331 = load i32, i32* @CURLE_BAD_CONTENT_ENCODING, align 4
  store i32 %331, i32* %3, align 4
  br label %334

332:                                              ; preds = %325
  %333 = load i32, i32* @CURLE_OK, align 4
  store i32 %333, i32* %3, align 4
  br label %334

334:                                              ; preds = %332, %330, %323, %311
  %335 = load i32, i32* %3, align 4
  ret i32 %335

336:                                              ; preds = %311
  unreachable
}

declare dso_local i32 @Curl_auth_digest_cleanup(%struct.digestdata*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i64 @Curl_auth_digest_get_pair(i8*, i8*, i8*, i8**) #1

declare dso_local i64 @strcasecompare(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
