; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_urlapi.c_curl_url_set.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_urlapi.c_curl_url_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8* }

@CURLU_URLENCODE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CURLUE_BAD_HANDLE = common dso_local global i32 0, align 4
@CURLUE_UNKNOWN_PART = common dso_local global i32 0, align 4
@CURLUE_OK = common dso_local global i32 0, align 4
@MAX_SCHEME_LEN = common dso_local global i64 0, align 8
@CURLUE_MALFORMED_INPUT = common dso_local global i32 0, align 4
@CURLU_NON_SUPPORT_SCHEME = common dso_local global i32 0, align 4
@CURLUE_UNSUPPORTED_SCHEME = common dso_local global i32 0, align 4
@CURLUE_BAD_PORT_NUMBER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CURLU_APPENDQUERY = common dso_local global i32 0, align 4
@CURLUE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURL_MAX_INPUT_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%%%02x\00", align 1
@CURLU_NO_AUTHORITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_url_set(%struct.TYPE_10__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** null, i8*** %10, align 8
  store i64 0, i64* %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @CURLU_URLENCODE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %4
  %46 = load i32, i32* @CURLUE_BAD_HANDLE, align 4
  store i32 %46, i32* %5, align 4
  br label %598

47:                                               ; preds = %4
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %101, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  switch i32 %51, label %85 [
    i32 130, label %52
    i32 131, label %53
    i32 129, label %56
    i32 135, label %59
    i32 136, label %62
    i32 137, label %65
    i32 128, label %68
    i32 133, label %71
    i32 134, label %76
    i32 132, label %79
    i32 138, label %82
  ]

52:                                               ; preds = %50
  br label %87

53:                                               ; preds = %50
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i8** %55, i8*** %10, align 8
  br label %87

56:                                               ; preds = %50
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store i8** %58, i8*** %10, align 8
  br label %87

59:                                               ; preds = %50
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  store i8** %61, i8*** %10, align 8
  br label %87

62:                                               ; preds = %50
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  store i8** %64, i8*** %10, align 8
  br label %87

65:                                               ; preds = %50
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  store i8** %67, i8*** %10, align 8
  br label %87

68:                                               ; preds = %50
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 5
  store i8** %70, i8*** %10, align 8
  br label %87

71:                                               ; preds = %50
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 7
  store i8** %75, i8*** %10, align 8
  br label %87

76:                                               ; preds = %50
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 8
  store i8** %78, i8*** %10, align 8
  br label %87

79:                                               ; preds = %50
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 9
  store i8** %81, i8*** %10, align 8
  br label %87

82:                                               ; preds = %50
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 10
  store i8** %84, i8*** %10, align 8
  br label %87

85:                                               ; preds = %50
  %86 = load i32, i32* @CURLUE_UNKNOWN_PART, align 4
  store i32 %86, i32* %5, align 4
  br label %598

87:                                               ; preds = %82, %79, %76, %71, %68, %65, %62, %59, %56, %53, %52
  %88 = load i8**, i8*** %10, align 8
  %89 = icmp ne i8** %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i8**, i8*** %10, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8**, i8*** %10, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i8**, i8*** %10, align 8
  store i8* null, i8** %98, align 8
  br label %99

99:                                               ; preds = %94, %90, %87
  %100 = load i32, i32* @CURLUE_OK, align 4
  store i32 %100, i32* %5, align 4
  br label %598

101:                                              ; preds = %47
  %102 = load i32, i32* %7, align 4
  switch i32 %102, label %277 [
    i32 131, label %103
    i32 129, label %125
    i32 135, label %128
    i32 136, label %131
    i32 137, label %134
    i32 128, label %143
    i32 133, label %146
    i32 134, label %166
    i32 132, label %170
    i32 138, label %181
    i32 130, label %184
  ]

103:                                              ; preds = %101
  %104 = load i8*, i8** %8, align 8
  %105 = call i64 @strlen(i8* %104)
  %106 = load i64, i64* @MAX_SCHEME_LEN, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @CURLUE_MALFORMED_INPUT, align 4
  store i32 %109, i32* %5, align 4
  br label %598

110:                                              ; preds = %103
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @CURLU_NON_SUPPORT_SCHEME, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @Curl_builtin_scheme(i8* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @CURLUE_UNSUPPORTED_SCHEME, align 4
  store i32 %120, i32* %5, align 4
  br label %598

121:                                              ; preds = %115, %110
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i8** %123, i8*** %10, align 8
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %12, align 4
  br label %279

125:                                              ; preds = %101
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  store i8** %127, i8*** %10, align 8
  br label %279

128:                                              ; preds = %101
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  store i8** %130, i8*** %10, align 8
  br label %279

131:                                              ; preds = %101
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  store i8** %133, i8*** %10, align 8
  br label %279

134:                                              ; preds = %101
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  store i8** %136, i8*** %10, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 5
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 5
  store i8* null, i8** %142, align 8
  br label %279

143:                                              ; preds = %101
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 5
  store i8** %145, i8*** %10, align 8
  br label %279

146:                                              ; preds = %101
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %12, align 4
  %148 = load i8*, i8** %8, align 8
  %149 = call i64 @strtol(i8* %148, i8** %17, i32 10)
  store i64 %149, i64* %11, align 8
  %150 = load i64, i64* %11, align 8
  %151 = icmp sle i64 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %146
  %153 = load i64, i64* %11, align 8
  %154 = icmp sgt i64 %153, 65535
  br i1 %154, label %155, label %157

155:                                              ; preds = %152, %146
  %156 = load i32, i32* @CURLUE_BAD_PORT_NUMBER, align 4
  store i32 %156, i32* %5, align 4
  br label %598

157:                                              ; preds = %152
  %158 = load i8*, i8** %17, align 8
  %159 = load i8, i8* %158, align 1
  %160 = icmp ne i8 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* @CURLUE_MALFORMED_INPUT, align 4
  store i32 %162, i32* %5, align 4
  br label %598

163:                                              ; preds = %157
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 7
  store i8** %165, i8*** %10, align 8
  br label %279

166:                                              ; preds = %101
  %167 = load i32, i32* @TRUE, align 4
  store i32 %167, i32* %14, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 8
  store i8** %169, i8*** %10, align 8
  br label %279

170:                                              ; preds = %101
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @CURLU_APPENDQUERY, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 1, i32 0
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %16, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 9
  store i8** %180, i8*** %10, align 8
  br label %279

181:                                              ; preds = %101
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 10
  store i8** %183, i8*** %10, align 8
  br label %279

184:                                              ; preds = %101
  %185 = load i8*, i8** %8, align 8
  %186 = load i64, i64* @MAX_SCHEME_LEN, align 8
  %187 = add i64 %186, 1
  %188 = trunc i64 %187 to i32
  %189 = call i32 @Curl_is_absolute_url(i8* %185, i32* null, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %213

191:                                              ; preds = %184
  %192 = call %struct.TYPE_10__* (...) @curl_url()
  store %struct.TYPE_10__* %192, %struct.TYPE_10__** %21, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %194 = icmp ne %struct.TYPE_10__* %193, null
  br i1 %194, label %197, label %195

195:                                              ; preds = %191
  %196 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %196, i32* %5, align 4
  br label %598

197:                                              ; preds = %191
  %198 = load i8*, i8** %8, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @parseurl(i8* %198, %struct.TYPE_10__* %199, i32 %200)
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %18, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %197
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %207 = call i32 @mv_urlhandle(%struct.TYPE_10__* %205, %struct.TYPE_10__* %206)
  br label %211

208:                                              ; preds = %197
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %210 = call i32 @curl_url_cleanup(%struct.TYPE_10__* %209)
  br label %211

211:                                              ; preds = %208, %204
  %212 = load i32, i32* %18, align 4
  store i32 %212, i32* %5, align 4
  br label %598

213:                                              ; preds = %184
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @curl_url_get(%struct.TYPE_10__* %214, i32 130, i8** %19, i32 %215)
  store i32 %216, i32* %18, align 4
  %217 = load i32, i32* %18, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %241

219:                                              ; preds = %213
  %220 = call %struct.TYPE_10__* (...) @curl_url()
  store %struct.TYPE_10__* %220, %struct.TYPE_10__** %21, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %222 = icmp ne %struct.TYPE_10__* %221, null
  br i1 %222, label %225, label %223

223:                                              ; preds = %219
  %224 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %224, i32* %5, align 4
  br label %598

225:                                              ; preds = %219
  %226 = load i8*, i8** %8, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @parseurl(i8* %226, %struct.TYPE_10__* %227, i32 %228)
  store i32 %229, i32* %18, align 4
  %230 = load i32, i32* %18, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %225
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %235 = call i32 @mv_urlhandle(%struct.TYPE_10__* %233, %struct.TYPE_10__* %234)
  br label %239

236:                                              ; preds = %225
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %238 = call i32 @curl_url_cleanup(%struct.TYPE_10__* %237)
  br label %239

239:                                              ; preds = %236, %232
  %240 = load i32, i32* %18, align 4
  store i32 %240, i32* %5, align 4
  br label %598

241:                                              ; preds = %213
  %242 = load i8*, i8** %19, align 8
  %243 = load i8*, i8** %8, align 8
  %244 = call i8* @concat_url(i8* %242, i8* %243)
  store i8* %244, i8** %20, align 8
  %245 = load i8*, i8** %19, align 8
  %246 = call i32 @free(i8* %245)
  %247 = load i8*, i8** %20, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %241
  %250 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %250, i32* %5, align 4
  br label %598

251:                                              ; preds = %241
  %252 = call %struct.TYPE_10__* (...) @curl_url()
  store %struct.TYPE_10__* %252, %struct.TYPE_10__** %21, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %254 = icmp ne %struct.TYPE_10__* %253, null
  br i1 %254, label %259, label %255

255:                                              ; preds = %251
  %256 = load i8*, i8** %20, align 8
  %257 = call i32 @free(i8* %256)
  %258 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %258, i32* %5, align 4
  br label %598

259:                                              ; preds = %251
  %260 = load i8*, i8** %20, align 8
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %262 = load i32, i32* %9, align 4
  %263 = call i32 @parseurl(i8* %260, %struct.TYPE_10__* %261, i32 %262)
  store i32 %263, i32* %18, align 4
  %264 = load i8*, i8** %20, align 8
  %265 = call i32 @free(i8* %264)
  %266 = load i32, i32* %18, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %259
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %271 = call i32 @mv_urlhandle(%struct.TYPE_10__* %269, %struct.TYPE_10__* %270)
  br label %275

272:                                              ; preds = %259
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %274 = call i32 @curl_url_cleanup(%struct.TYPE_10__* %273)
  br label %275

275:                                              ; preds = %272, %268
  %276 = load i32, i32* %18, align 4
  store i32 %276, i32* %5, align 4
  br label %598

277:                                              ; preds = %101
  %278 = load i32, i32* @CURLUE_UNKNOWN_PART, align 4
  store i32 %278, i32* %5, align 4
  br label %598

279:                                              ; preds = %181, %170, %166, %163, %143, %134, %131, %128, %125, %121
  %280 = load i8**, i8*** %10, align 8
  %281 = call i32 @DEBUGASSERT(i8** %280)
  %282 = load i8*, i8** %8, align 8
  store i8* %282, i8** %22, align 8
  %283 = load i8*, i8** %8, align 8
  %284 = call i64 @strlen(i8* %283)
  store i64 %284, i64* %23, align 8
  %285 = load i64, i64* %23, align 8
  %286 = load i64, i64* @CURL_MAX_INPUT_LENGTH, align 8
  %287 = icmp ugt i64 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %279
  %289 = load i32, i32* @CURLUE_MALFORMED_INPUT, align 4
  store i32 %289, i32* %5, align 4
  br label %598

290:                                              ; preds = %279
  %291 = load i32, i32* %12, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %416

293:                                              ; preds = %290
  %294 = load i32, i32* @FALSE, align 4
  store i32 %294, i32* %26, align 4
  %295 = load i64, i64* %23, align 8
  %296 = mul i64 %295, 3
  %297 = add i64 %296, 1
  %298 = call i8* @malloc(i64 %297)
  store i8* %298, i8** %27, align 8
  %299 = load i8*, i8** %27, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %303, label %301

301:                                              ; preds = %293
  %302 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %302, i32* %5, align 4
  br label %598

303:                                              ; preds = %293
  %304 = load i32, i32* %13, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %344

306:                                              ; preds = %303
  %307 = load i8*, i8** %8, align 8
  store i8* %307, i8** %24, align 8
  %308 = load i8*, i8** %27, align 8
  store i8* %308, i8** %25, align 8
  br label %309

309:                                              ; preds = %327, %306
  %310 = load i8*, i8** %24, align 8
  %311 = load i8, i8* %310, align 1
  %312 = icmp ne i8 %311, 0
  br i1 %312, label %313, label %332

313:                                              ; preds = %309
  %314 = load i8*, i8** %24, align 8
  %315 = load i8, i8* %314, align 1
  %316 = zext i8 %315 to i32
  %317 = icmp eq i32 %316, 32
  br i1 %317, label %318, label %319

318:                                              ; preds = %313
  br label %323

319:                                              ; preds = %313
  %320 = load i8*, i8** %24, align 8
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  br label %323

323:                                              ; preds = %319, %318
  %324 = phi i32 [ 43, %318 ], [ %322, %319 ]
  %325 = trunc i32 %324 to i8
  %326 = load i8*, i8** %25, align 8
  store i8 %325, i8* %326, align 1
  br label %327

327:                                              ; preds = %323
  %328 = load i8*, i8** %25, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %25, align 8
  %330 = load i8*, i8** %24, align 8
  %331 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %331, i8** %24, align 8
  br label %309

332:                                              ; preds = %309
  %333 = load i8*, i8** %25, align 8
  store i8 0, i8* %333, align 1
  %334 = load i8*, i8** %27, align 8
  %335 = call i8* @strdup(i8* %334)
  store i8* %335, i8** %8, align 8
  %336 = load i8*, i8** %8, align 8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %342, label %338

338:                                              ; preds = %332
  %339 = load i8*, i8** %27, align 8
  %340 = call i32 @free(i8* %339)
  %341 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %341, i32* %5, align 4
  br label %598

342:                                              ; preds = %332
  %343 = load i32, i32* @TRUE, align 4
  store i32 %343, i32* %26, align 4
  br label %344

344:                                              ; preds = %342, %303
  %345 = load i8*, i8** %8, align 8
  store i8* %345, i8** %24, align 8
  %346 = load i8*, i8** %27, align 8
  store i8* %346, i8** %25, align 8
  br label %347

347:                                              ; preds = %404, %344
  %348 = load i8*, i8** %24, align 8
  %349 = load i8, i8* %348, align 1
  %350 = icmp ne i8 %349, 0
  br i1 %350, label %351, label %407

351:                                              ; preds = %347
  %352 = load i8*, i8** %24, align 8
  %353 = load i8, i8* %352, align 1
  %354 = call i64 @Curl_isunreserved(i8 zeroext %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %380, label %356

356:                                              ; preds = %351
  %357 = load i8*, i8** %24, align 8
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = icmp eq i32 %359, 47
  br i1 %360, label %361, label %364

361:                                              ; preds = %356
  %362 = load i32, i32* %14, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %380, label %364

364:                                              ; preds = %361, %356
  %365 = load i8*, i8** %24, align 8
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  %368 = icmp eq i32 %367, 61
  br i1 %368, label %369, label %372

369:                                              ; preds = %364
  %370 = load i32, i32* %16, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %380, label %372

372:                                              ; preds = %369, %364
  %373 = load i8*, i8** %24, align 8
  %374 = load i8, i8* %373, align 1
  %375 = zext i8 %374 to i32
  %376 = icmp eq i32 %375, 43
  br i1 %376, label %377, label %396

377:                                              ; preds = %372
  %378 = load i32, i32* %13, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %396

380:                                              ; preds = %377, %369, %361, %351
  %381 = load i8*, i8** %24, align 8
  %382 = load i8, i8* %381, align 1
  %383 = zext i8 %382 to i32
  %384 = icmp eq i32 %383, 61
  br i1 %384, label %385, label %390

385:                                              ; preds = %380
  %386 = load i32, i32* %16, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %385
  %389 = load i32, i32* @FALSE, align 4
  store i32 %389, i32* %16, align 4
  br label %390

390:                                              ; preds = %388, %385, %380
  %391 = load i8*, i8** %24, align 8
  %392 = load i8, i8* %391, align 1
  %393 = load i8*, i8** %25, align 8
  store i8 %392, i8* %393, align 1
  %394 = load i8*, i8** %25, align 8
  %395 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %395, i8** %25, align 8
  br label %403

396:                                              ; preds = %377, %372
  %397 = load i8*, i8** %25, align 8
  %398 = load i8*, i8** %24, align 8
  %399 = load i8, i8* %398, align 1
  %400 = call i32 @msnprintf(i8* %397, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 zeroext %399)
  %401 = load i8*, i8** %25, align 8
  %402 = getelementptr inbounds i8, i8* %401, i64 3
  store i8* %402, i8** %25, align 8
  br label %403

403:                                              ; preds = %396, %390
  br label %404

404:                                              ; preds = %403
  %405 = load i8*, i8** %24, align 8
  %406 = getelementptr inbounds i8, i8* %405, i32 1
  store i8* %406, i8** %24, align 8
  br label %347

407:                                              ; preds = %347
  %408 = load i8*, i8** %25, align 8
  store i8 0, i8* %408, align 1
  %409 = load i8*, i8** %27, align 8
  store i8* %409, i8** %22, align 8
  %410 = load i32, i32* %26, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %407
  %413 = load i8*, i8** %8, align 8
  %414 = call i32 @free(i8* %413)
  br label %415

415:                                              ; preds = %412, %407
  br label %480

416:                                              ; preds = %290
  %417 = load i8*, i8** %8, align 8
  %418 = call i8* @strdup(i8* %417)
  store i8* %418, i8** %22, align 8
  %419 = load i8*, i8** %22, align 8
  %420 = icmp ne i8* %419, null
  br i1 %420, label %423, label %421

421:                                              ; preds = %416
  %422 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %422, i32* %5, align 4
  br label %598

423:                                              ; preds = %416
  %424 = load i8*, i8** %22, align 8
  store i8* %424, i8** %28, align 8
  br label %425

425:                                              ; preds = %478, %423
  %426 = load i8*, i8** %28, align 8
  %427 = load i8, i8* %426, align 1
  %428 = icmp ne i8 %427, 0
  br i1 %428, label %429, label %479

429:                                              ; preds = %425
  %430 = load i8*, i8** %28, align 8
  %431 = load i8, i8* %430, align 1
  %432 = sext i8 %431 to i32
  %433 = icmp eq i32 %432, 37
  br i1 %433, label %434, label %475

434:                                              ; preds = %429
  %435 = load i8*, i8** %28, align 8
  %436 = getelementptr inbounds i8, i8* %435, i64 1
  %437 = load i8, i8* %436, align 1
  %438 = call i64 @ISXDIGIT(i8 signext %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %475

440:                                              ; preds = %434
  %441 = load i8*, i8** %28, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 2
  %443 = load i8, i8* %442, align 1
  %444 = call i64 @ISXDIGIT(i8 signext %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %475

446:                                              ; preds = %440
  %447 = load i8*, i8** %28, align 8
  %448 = getelementptr inbounds i8, i8* %447, i64 1
  %449 = load i8, i8* %448, align 1
  %450 = call i64 @ISUPPER(i8 signext %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %458, label %452

452:                                              ; preds = %446
  %453 = load i8*, i8** %28, align 8
  %454 = getelementptr inbounds i8, i8* %453, i64 2
  %455 = load i8, i8* %454, align 1
  %456 = call i64 @ISUPPER(i8 signext %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %475

458:                                              ; preds = %452, %446
  %459 = load i8*, i8** %28, align 8
  %460 = getelementptr inbounds i8, i8* %459, i64 1
  %461 = load i8, i8* %460, align 1
  %462 = call i64 @TOLOWER(i8 signext %461)
  %463 = trunc i64 %462 to i8
  %464 = load i8*, i8** %28, align 8
  %465 = getelementptr inbounds i8, i8* %464, i64 1
  store i8 %463, i8* %465, align 1
  %466 = load i8*, i8** %28, align 8
  %467 = getelementptr inbounds i8, i8* %466, i64 2
  %468 = load i8, i8* %467, align 1
  %469 = call i64 @TOLOWER(i8 signext %468)
  %470 = trunc i64 %469 to i8
  %471 = load i8*, i8** %28, align 8
  %472 = getelementptr inbounds i8, i8* %471, i64 2
  store i8 %470, i8* %472, align 1
  %473 = load i8*, i8** %28, align 8
  %474 = getelementptr inbounds i8, i8* %473, i64 3
  store i8* %474, i8** %28, align 8
  br label %478

475:                                              ; preds = %452, %440, %434, %429
  %476 = load i8*, i8** %28, align 8
  %477 = getelementptr inbounds i8, i8* %476, i32 1
  store i8* %477, i8** %28, align 8
  br label %478

478:                                              ; preds = %475, %458
  br label %425

479:                                              ; preds = %425
  br label %480

480:                                              ; preds = %479, %415
  %481 = load i32, i32* %15, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %560

483:                                              ; preds = %480
  %484 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %484, i32 0, i32 9
  %486 = load i8*, i8** %485, align 8
  %487 = icmp ne i8* %486, null
  br i1 %487, label %488, label %493

488:                                              ; preds = %483
  %489 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %489, i32 0, i32 9
  %491 = load i8*, i8** %490, align 8
  %492 = call i64 @strlen(i8* %491)
  br label %494

493:                                              ; preds = %483
  br label %494

494:                                              ; preds = %493, %488
  %495 = phi i64 [ %492, %488 ], [ 0, %493 ]
  store i64 %495, i64* %29, align 8
  %496 = load i64, i64* %29, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %508

498:                                              ; preds = %494
  %499 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 9
  %501 = load i8*, i8** %500, align 8
  %502 = load i64, i64* %29, align 8
  %503 = sub i64 %502, 1
  %504 = getelementptr inbounds i8, i8* %501, i64 %503
  %505 = load i8, i8* %504, align 1
  %506 = sext i8 %505 to i32
  %507 = icmp ne i32 %506, 38
  br label %508

508:                                              ; preds = %498, %494
  %509 = phi i1 [ false, %494 ], [ %507, %498 ]
  %510 = zext i1 %509 to i32
  store i32 %510, i32* %30, align 4
  %511 = load i64, i64* %29, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %559

513:                                              ; preds = %508
  %514 = load i8*, i8** %22, align 8
  %515 = call i64 @strlen(i8* %514)
  store i64 %515, i64* %31, align 8
  %516 = load i64, i64* %29, align 8
  %517 = load i32, i32* %30, align 4
  %518 = sext i32 %517 to i64
  %519 = add i64 %516, %518
  %520 = load i64, i64* %31, align 8
  %521 = add i64 %519, %520
  %522 = add i64 %521, 1
  %523 = call i8* @malloc(i64 %522)
  store i8* %523, i8** %32, align 8
  %524 = load i8*, i8** %32, align 8
  %525 = icmp ne i8* %524, null
  br i1 %525, label %530, label %526

526:                                              ; preds = %513
  %527 = load i8*, i8** %22, align 8
  %528 = call i32 @free(i8* %527)
  %529 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %529, i32* %5, align 4
  br label %598

530:                                              ; preds = %513
  %531 = load i8*, i8** %32, align 8
  %532 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 9
  %534 = load i8*, i8** %533, align 8
  %535 = call i32 @strcpy(i8* %531, i8* %534)
  %536 = load i32, i32* %30, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %542

538:                                              ; preds = %530
  %539 = load i8*, i8** %32, align 8
  %540 = load i64, i64* %29, align 8
  %541 = getelementptr inbounds i8, i8* %539, i64 %540
  store i8 38, i8* %541, align 1
  br label %542

542:                                              ; preds = %538, %530
  %543 = load i8*, i8** %32, align 8
  %544 = load i64, i64* %29, align 8
  %545 = load i32, i32* %30, align 4
  %546 = sext i32 %545 to i64
  %547 = add i64 %544, %546
  %548 = getelementptr inbounds i8, i8* %543, i64 %547
  %549 = load i8*, i8** %22, align 8
  %550 = call i32 @strcpy(i8* %548, i8* %549)
  %551 = load i8*, i8** %22, align 8
  %552 = call i32 @free(i8* %551)
  %553 = load i8**, i8*** %10, align 8
  %554 = load i8*, i8** %553, align 8
  %555 = call i32 @free(i8* %554)
  %556 = load i8*, i8** %32, align 8
  %557 = load i8**, i8*** %10, align 8
  store i8* %556, i8** %557, align 8
  %558 = load i32, i32* @CURLUE_OK, align 4
  store i32 %558, i32* %5, align 4
  br label %598

559:                                              ; preds = %508
  br label %560

560:                                              ; preds = %559, %480
  %561 = load i32, i32* %7, align 4
  %562 = icmp eq i32 %561, 137
  br i1 %562, label %563, label %584

563:                                              ; preds = %560
  %564 = load i8*, i8** %22, align 8
  %565 = call i64 @strlen(i8* %564)
  %566 = icmp eq i64 0, %565
  br i1 %566, label %567, label %573

567:                                              ; preds = %563
  %568 = load i32, i32* %9, align 4
  %569 = load i32, i32* @CURLU_NO_AUTHORITY, align 4
  %570 = and i32 %568, %569
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %573

572:                                              ; preds = %567
  br label %583

573:                                              ; preds = %567, %563
  %574 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %575 = load i8*, i8** %22, align 8
  %576 = call i64 @hostname_check(%struct.TYPE_10__* %574, i8* %575)
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %582

578:                                              ; preds = %573
  %579 = load i8*, i8** %22, align 8
  %580 = call i32 @free(i8* %579)
  %581 = load i32, i32* @CURLUE_MALFORMED_INPUT, align 4
  store i32 %581, i32* %5, align 4
  br label %598

582:                                              ; preds = %573
  br label %583

583:                                              ; preds = %582, %572
  br label %584

584:                                              ; preds = %583, %560
  %585 = load i8**, i8*** %10, align 8
  %586 = load i8*, i8** %585, align 8
  %587 = call i32 @free(i8* %586)
  %588 = load i8*, i8** %22, align 8
  %589 = load i8**, i8*** %10, align 8
  store i8* %588, i8** %589, align 8
  %590 = load i64, i64* %11, align 8
  %591 = icmp ne i64 %590, 0
  br i1 %591, label %592, label %596

592:                                              ; preds = %584
  %593 = load i64, i64* %11, align 8
  %594 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %595 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %594, i32 0, i32 6
  store i64 %593, i64* %595, align 8
  br label %596

596:                                              ; preds = %592, %584
  %597 = load i32, i32* @CURLUE_OK, align 4
  store i32 %597, i32* %5, align 4
  br label %598

598:                                              ; preds = %596, %578, %542, %526, %421, %338, %301, %288, %277, %275, %255, %249, %239, %223, %211, %195, %161, %155, %119, %108, %99, %85, %45
  %599 = load i32, i32* %5, align 4
  ret i32 %599
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @Curl_builtin_scheme(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @Curl_is_absolute_url(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @curl_url(...) #1

declare dso_local i32 @parseurl(i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @mv_urlhandle(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @curl_url_cleanup(%struct.TYPE_10__*) #1

declare dso_local i32 @curl_url_get(%struct.TYPE_10__*, i32, i8**, i32) #1

declare dso_local i8* @concat_url(i8*, i8*) #1

declare dso_local i32 @DEBUGASSERT(i8**) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @Curl_isunreserved(i8 zeroext) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8 zeroext) #1

declare dso_local i64 @ISXDIGIT(i8 signext) #1

declare dso_local i64 @ISUPPER(i8 signext) #1

declare dso_local i64 @TOLOWER(i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @hostname_check(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
