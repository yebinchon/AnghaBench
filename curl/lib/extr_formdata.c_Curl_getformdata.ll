; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_formdata.c_Curl_getformdata.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_formdata.c_Curl_getformdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.curl_httppost = type { i32, i32, i32, i32, i8*, i32*, %struct.curl_httppost*, i32, i32, i32, i32, i64, i32, %struct.curl_httppost* }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURL_HTTPPOST_LARGE = common dso_local global i32 0, align 4
@HTTPPOST_FILENAME = common dso_local global i32 0, align 4
@HTTPPOST_READFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@fread = common dso_local global i64 0, align 8
@curl_seek_callback = common dso_local global i32 0, align 4
@fseek = common dso_local global i32 0, align 4
@stdin = common dso_local global i64 0, align 8
@HTTPPOST_BUFFER = common dso_local global i32 0, align 4
@HTTPPOST_CALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_getformdata(%struct.Curl_easy* %0, %struct.TYPE_13__* %1, %struct.curl_httppost* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.curl_httppost*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.curl_httppost*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.curl_httppost* %2, %struct.curl_httppost** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* @CURLE_OK, align 8
  store i64 %16, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = call i32 @Curl_mime_cleanpart(%struct.TYPE_13__* %17)
  %19 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %20 = icmp ne %struct.curl_httppost* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %10, align 8
  store i64 %22, i64* %5, align 8
  br label %311

23:                                               ; preds = %4
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %25 = call i32* @curl_mime_init(%struct.Curl_easy* %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i64 @curl_mime_subparts(%struct.TYPE_13__* %34, i32* %35)
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %299, %37
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %43 = icmp ne %struct.curl_httppost* %42, null
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ false, %38 ], [ %43, %41 ]
  br i1 %45, label %46, label %303

46:                                               ; preds = %44
  %47 = load i32*, i32** %11, align 8
  store i32* %47, i32** %14, align 8
  %48 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %49 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %48, i32 0, i32 6
  %50 = load %struct.curl_httppost*, %struct.curl_httppost** %49, align 8
  %51 = icmp ne %struct.curl_httppost* %50, null
  br i1 %51, label %52, label %90

52:                                               ; preds = %46
  %53 = load i32*, i32** %11, align 8
  %54 = call %struct.TYPE_13__* @curl_mime_addpart(i32* %53)
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %12, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %56 = icmp ne %struct.TYPE_13__* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i64, i64* %10, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %64 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %65 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %68 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @setname(%struct.TYPE_13__* %63, i32 %66, i32 %69)
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %62, %59
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %76 = call i32* @curl_mime_init(%struct.Curl_easy* %75)
  store i32* %76, i32** %14, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %79, %74
  br label %82

82:                                               ; preds = %81, %71
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = call i64 @curl_mime_subparts(%struct.TYPE_13__* %86, i32* %87)
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %85, %82
  br label %90

90:                                               ; preds = %89, %46
  %91 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  store %struct.curl_httppost* %91, %struct.curl_httppost** %13, align 8
  br label %92

92:                                               ; preds = %294, %90
  %93 = load i64, i64* %10, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load %struct.curl_httppost*, %struct.curl_httppost** %13, align 8
  %97 = icmp ne %struct.curl_httppost* %96, null
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i1 [ false, %92 ], [ %97, %95 ]
  br i1 %99, label %100, label %298

100:                                              ; preds = %98
  %101 = load i32*, i32** %14, align 8
  %102 = call %struct.TYPE_13__* @curl_mime_addpart(i32* %101)
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %12, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %104 = icmp ne %struct.TYPE_13__* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %106, i64* %10, align 8
  br label %107

107:                                              ; preds = %105, %100
  %108 = load i64, i64* %10, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %112 = load %struct.curl_httppost*, %struct.curl_httppost** %13, align 8
  %113 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @curl_mime_headers(%struct.TYPE_13__* %111, i32 %114, i32 0)
  store i64 %115, i64* %10, align 8
  br label %116

116:                                              ; preds = %110, %107
  %117 = load i64, i64* %10, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %116
  %120 = load %struct.curl_httppost*, %struct.curl_httppost** %13, align 8
  %121 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %120, i32 0, i32 11
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %126 = load %struct.curl_httppost*, %struct.curl_httppost** %13, align 8
  %127 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %126, i32 0, i32 11
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @curl_mime_type(%struct.TYPE_13__* %125, i64 %128)
  store i64 %129, i64* %10, align 8
  br label %130

130:                                              ; preds = %124, %119, %116
  %131 = load i64, i64* %10, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %147, label %133

133:                                              ; preds = %130
  %134 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %135 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %134, i32 0, i32 6
  %136 = load %struct.curl_httppost*, %struct.curl_httppost** %135, align 8
  %137 = icmp ne %struct.curl_httppost* %136, null
  br i1 %137, label %147, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %140 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %141 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %144 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @setname(%struct.TYPE_13__* %139, i32 %142, i32 %145)
  store i64 %146, i64* %10, align 8
  br label %147

147:                                              ; preds = %138, %133, %130
  %148 = load i64, i64* %10, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %262, label %150

150:                                              ; preds = %147
  %151 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %152 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %15, align 4
  %154 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %155 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @CURL_HTTPPOST_LARGE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %150
  %161 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %162 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %15, align 4
  br label %164

164:                                              ; preds = %160, %150
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  store i32 -1, i32* %15, align 4
  br label %168

168:                                              ; preds = %167, %164
  %169 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %170 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @HTTPPOST_FILENAME, align 4
  %173 = load i32, i32* @HTTPPOST_READFILE, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %171, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %213

177:                                              ; preds = %168
  %178 = load %struct.curl_httppost*, %struct.curl_httppost** %13, align 8
  %179 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @strcmp(i32 %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %177
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %185 = load i64, i64* @fread, align 8
  %186 = trunc i64 %185 to i32
  %187 = load i32, i32* @curl_seek_callback, align 4
  %188 = load i32, i32* @fseek, align 4
  %189 = call i32* @CURLX_FUNCTION_CAST(i32 %187, i32 %188)
  %190 = load i64, i64* @stdin, align 8
  %191 = inttoptr i64 %190 to i8*
  %192 = call i64 @curl_mime_data_cb(%struct.TYPE_13__* %184, i32 -1, i32 %186, i32* %189, i32* null, i8* %191)
  store i64 %192, i64* %10, align 8
  br label %199

193:                                              ; preds = %177
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %195 = load %struct.curl_httppost*, %struct.curl_httppost** %13, align 8
  %196 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @curl_mime_filedata(%struct.TYPE_13__* %194, i32 %197)
  store i64 %198, i64* %10, align 8
  br label %199

199:                                              ; preds = %193, %183
  %200 = load i64, i64* %10, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %212, label %202

202:                                              ; preds = %199
  %203 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %204 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @HTTPPOST_READFILE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %211 = call i64 @curl_mime_filename(%struct.TYPE_13__* %210, i32* null)
  store i64 %211, i64* %10, align 8
  br label %212

212:                                              ; preds = %209, %202, %199
  br label %261

213:                                              ; preds = %168
  %214 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %215 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @HTTPPOST_BUFFER, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %237

220:                                              ; preds = %213
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %222 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %223 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %222, i32 0, i32 8
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %226 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %220
  %230 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %231 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  br label %234

233:                                              ; preds = %220
  br label %234

234:                                              ; preds = %233, %229
  %235 = phi i32 [ %232, %229 ], [ -1, %233 ]
  %236 = call i64 @curl_mime_data(%struct.TYPE_13__* %221, i32 %224, i32 %235)
  store i64 %236, i64* %10, align 8
  br label %260

237:                                              ; preds = %213
  %238 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %239 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @HTTPPOST_CALLBACK, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %237
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* %9, align 4
  %248 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %249 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %248, i32 0, i32 4
  %250 = load i8*, i8** %249, align 8
  %251 = call i64 @curl_mime_data_cb(%struct.TYPE_13__* %245, i32 %246, i32 %247, i32* null, i32* null, i8* %250)
  store i64 %251, i64* %10, align 8
  br label %259

252:                                              ; preds = %237
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %254 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %255 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* %15, align 4
  %258 = call i64 @curl_mime_data(%struct.TYPE_13__* %253, i32 %256, i32 %257)
  store i64 %258, i64* %10, align 8
  br label %259

259:                                              ; preds = %252, %244
  br label %260

260:                                              ; preds = %259, %234
  br label %261

261:                                              ; preds = %260, %212
  br label %262

262:                                              ; preds = %261, %147
  %263 = load i64, i64* %10, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %293, label %265

265:                                              ; preds = %262
  %266 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %267 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %266, i32 0, i32 5
  %268 = load i32*, i32** %267, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %293

270:                                              ; preds = %265
  %271 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %272 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %271, i32 0, i32 6
  %273 = load %struct.curl_httppost*, %struct.curl_httppost** %272, align 8
  %274 = icmp ne %struct.curl_httppost* %273, null
  br i1 %274, label %286, label %275

275:                                              ; preds = %270
  %276 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %277 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @HTTPPOST_FILENAME, align 4
  %280 = load i32, i32* @HTTPPOST_BUFFER, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @HTTPPOST_CALLBACK, align 4
  %283 = or i32 %281, %282
  %284 = and i32 %278, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %275, %270
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %288 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %289 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %288, i32 0, i32 5
  %290 = load i32*, i32** %289, align 8
  %291 = call i64 @curl_mime_filename(%struct.TYPE_13__* %287, i32* %290)
  store i64 %291, i64* %10, align 8
  br label %292

292:                                              ; preds = %286, %275
  br label %293

293:                                              ; preds = %292, %265, %262
  br label %294

294:                                              ; preds = %293
  %295 = load %struct.curl_httppost*, %struct.curl_httppost** %13, align 8
  %296 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %295, i32 0, i32 6
  %297 = load %struct.curl_httppost*, %struct.curl_httppost** %296, align 8
  store %struct.curl_httppost* %297, %struct.curl_httppost** %13, align 8
  br label %92

298:                                              ; preds = %98
  br label %299

299:                                              ; preds = %298
  %300 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %301 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %300, i32 0, i32 13
  %302 = load %struct.curl_httppost*, %struct.curl_httppost** %301, align 8
  store %struct.curl_httppost* %302, %struct.curl_httppost** %8, align 8
  br label %38

303:                                              ; preds = %44
  %304 = load i64, i64* %10, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %308 = call i32 @Curl_mime_cleanpart(%struct.TYPE_13__* %307)
  br label %309

309:                                              ; preds = %306, %303
  %310 = load i64, i64* %10, align 8
  store i64 %310, i64* %5, align 8
  br label %311

311:                                              ; preds = %309, %21
  %312 = load i64, i64* %5, align 8
  ret i64 %312
}

declare dso_local i32 @Curl_mime_cleanpart(%struct.TYPE_13__*) #1

declare dso_local i32* @curl_mime_init(%struct.Curl_easy*) #1

declare dso_local i64 @curl_mime_subparts(%struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_13__* @curl_mime_addpart(i32*) #1

declare dso_local i64 @setname(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @curl_mime_headers(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @curl_mime_type(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @curl_mime_data_cb(%struct.TYPE_13__*, i32, i32, i32*, i32*, i8*) #1

declare dso_local i32* @CURLX_FUNCTION_CAST(i32, i32) #1

declare dso_local i64 @curl_mime_filedata(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @curl_mime_filename(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @curl_mime_data(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
