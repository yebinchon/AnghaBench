; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mime.c_Curl_mime_prepare_headers.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mime.c_Curl_mime_prepare_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_7__*, i32*, %struct.TYPE_9__, %struct.TYPE_6__*, i32, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__* }

@CURLE_OK = common dso_local global i64 0, align 8
@MIMESTATE_CURLHEADERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@MULTIPART_CONTENTTYPE_DEFAULT = common dso_local global i8* null, align 8
@FILE_CONTENTTYPE_DEFAULT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@MIMESTRATEGY_MAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Content-Disposition\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"multipart/\00", align 1
@DISPOSITION_DEFAULT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"attachment\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"Content-Disposition: %s%s%s%s%s%s%s\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"; name=\22\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"; filename=\22\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Content-Transfer-Encoding\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"8bit\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Content-Transfer-Encoding: %s\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"multipart/form-data\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"form-data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_mime_prepare_headers(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %13, align 8
  %18 = load i64, i64* @CURLE_OK, align 8
  store i64 %18, i64* %14, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @curl_slist_free_all(i32* %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MIMESTATE_CURLHEADERS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = load i64, i64* @MIMESTATE_CURLHEADERS, align 8
  %35 = call i32 @mimesetstate(%struct.TYPE_9__* %33, i64 %34, i32* null)
  br label %36

36:                                               ; preds = %31, %4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @search_header(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %46, i8** %12, align 8
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i8*, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i8*, i8** %12, align 8
  store i8* %51, i8** %7, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %90, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %84 [
    i32 128, label %59
    i32 129, label %61
  ]

59:                                               ; preds = %55
  %60 = load i8*, i8** @MULTIPART_CONTENTTYPE_DEFAULT, align 8
  store i8* %60, i8** %7, align 8
  br label %89

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @Curl_mime_contenttype(i64 %64)
  store i8* %65, i8** %7, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 10
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @Curl_mime_contenttype(i64 %71)
  store i8* %72, i8** %7, align 8
  br label %73

73:                                               ; preds = %68, %61
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** @FILE_CONTENTTYPE_DEFAULT, align 8
  store i8* %82, i8** %7, align 8
  br label %83

83:                                               ; preds = %81, %76, %73
  br label %89

84:                                               ; preds = %55
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @Curl_mime_contenttype(i64 %87)
  store i8* %88, i8** %7, align 8
  br label %89

89:                                               ; preds = %84, %83, %59
  br label %90

90:                                               ; preds = %89, %52
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 128
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %10, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %101 = icmp ne %struct.TYPE_8__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %11, align 8
  br label %106

106:                                              ; preds = %102, %95
  br label %129

107:                                              ; preds = %90
  %108 = load i8*, i8** %7, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load i8*, i8** %12, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %128, label %113

113:                                              ; preds = %110
  %114 = load i8*, i8** %7, align 8
  %115 = call i64 @strcasecompare(i8* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @MIMESTRATEGY_MAIL, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121, %117
  store i8* null, i8** %7, align 8
  br label %127

127:                                              ; preds = %126, %121
  br label %128

128:                                              ; preds = %127, %113, %110, %107
  br label %129

129:                                              ; preds = %128, %106
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @search_header(i32 %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %134 = icmp ne i8* %133, null
  br i1 %134, label %261, label %135

135:                                              ; preds = %129
  %136 = load i8*, i8** %8, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %158, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 7
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %138
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 8
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %143
  %149 = load i8*, i8** %7, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @strncasecompare(i8* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %151, %143, %138
  %156 = load i8*, i8** @DISPOSITION_DEFAULT, align 8
  store i8* %156, i8** %8, align 8
  br label %157

157:                                              ; preds = %155, %151, %148
  br label %158

158:                                              ; preds = %157, %135
  %159 = load i8*, i8** %8, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = load i8*, i8** %8, align 8
  %163 = call i64 @curl_strequal(i8* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %161
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %165
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 7
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  store i8* null, i8** %8, align 8
  br label %176

176:                                              ; preds = %175, %170, %165, %161, %158
  %177 = load i8*, i8** %8, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %260

179:                                              ; preds = %176
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 8
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 8
  %187 = load i64, i64* %186, align 8
  %188 = call i8* @escape_string(i64 %187)
  store i8* %188, i8** %15, align 8
  %189 = load i8*, i8** %15, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %184
  %192 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %192, i64* %14, align 8
  br label %193

193:                                              ; preds = %191, %184
  br label %194

194:                                              ; preds = %193, %179
  %195 = load i64, i64* %14, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %212, label %197

197:                                              ; preds = %194
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 7
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %197
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 7
  %205 = load i64, i64* %204, align 8
  %206 = call i8* @escape_string(i64 %205)
  store i8* %206, i8** %16, align 8
  %207 = load i8*, i8** %16, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %202
  %210 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %210, i64* %14, align 8
  br label %211

211:                                              ; preds = %209, %202
  br label %212

212:                                              ; preds = %211, %197, %194
  %213 = load i64, i64* %14, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %250, label %215

215:                                              ; preds = %212
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 3
  %218 = load i8*, i8** %8, align 8
  %219 = load i8*, i8** %15, align 8
  %220 = icmp ne i8* %219, null
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %223 = load i8*, i8** %15, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %215
  %226 = load i8*, i8** %15, align 8
  br label %228

227:                                              ; preds = %215
  br label %228

228:                                              ; preds = %227, %225
  %229 = phi i8* [ %226, %225 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %227 ]
  %230 = load i8*, i8** %15, align 8
  %231 = icmp ne i8* %230, null
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %234 = load i8*, i8** %16, align 8
  %235 = icmp ne i8* %234, null
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %238 = load i8*, i8** %16, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %242

240:                                              ; preds = %228
  %241 = load i8*, i8** %16, align 8
  br label %243

242:                                              ; preds = %228
  br label %243

243:                                              ; preds = %242, %240
  %244 = phi i8* [ %241, %240 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %242 ]
  %245 = load i8*, i8** %16, align 8
  %246 = icmp ne i8* %245, null
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %249 = call i64 (i32**, i8*, i8*, ...) @Curl_mime_add_header(i32** %217, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %218, i8* %222, i8* %229, i8* %233, i8* %237, i8* %244, i8* %248)
  store i64 %249, i64* %14, align 8
  br label %250

250:                                              ; preds = %243, %212
  %251 = load i8*, i8** %15, align 8
  %252 = call i32 @Curl_safefree(i8* %251)
  %253 = load i8*, i8** %16, align 8
  %254 = call i32 @Curl_safefree(i8* %253)
  %255 = load i64, i64* %14, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %250
  %258 = load i64, i64* %14, align 8
  store i64 %258, i64* %5, align 8
  br label %372

259:                                              ; preds = %250
  br label %260

260:                                              ; preds = %259, %176
  br label %261

261:                                              ; preds = %260, %129
  %262 = load i8*, i8** %7, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 3
  %267 = load i8*, i8** %7, align 8
  %268 = load i8*, i8** %11, align 8
  %269 = call i64 @add_content_type(i32** %266, i8* %267, i8* %268)
  store i64 %269, i64* %14, align 8
  %270 = load i64, i64* %14, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %264
  %273 = load i64, i64* %14, align 8
  store i64 %273, i64* %5, align 8
  br label %372

274:                                              ; preds = %264
  br label %275

275:                                              ; preds = %274, %261
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 8
  %279 = call i8* @search_header(i32 %278, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %280 = icmp ne i8* %279, null
  br i1 %280, label %320, label %281

281:                                              ; preds = %275
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 5
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = icmp ne %struct.TYPE_6__* %284, null
  br i1 %285, label %286, label %292

286:                                              ; preds = %281
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 5
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  store i8* %291, i8** %13, align 8
  br label %306

292:                                              ; preds = %281
  %293 = load i8*, i8** %7, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %305

295:                                              ; preds = %292
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* @MIMESTRATEGY_MAIL, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %305

299:                                              ; preds = %295
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 128
  br i1 %303, label %304, label %305

304:                                              ; preds = %299
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %13, align 8
  br label %305

305:                                              ; preds = %304, %299, %295, %292
  br label %306

306:                                              ; preds = %305, %286
  %307 = load i8*, i8** %13, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %319

309:                                              ; preds = %306
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 3
  %312 = load i8*, i8** %13, align 8
  %313 = call i64 (i32**, i8*, i8*, ...) @Curl_mime_add_header(i32** %311, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %312)
  store i64 %313, i64* %14, align 8
  %314 = load i64, i64* %14, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %309
  %317 = load i64, i64* %14, align 8
  store i64 %317, i64* %5, align 8
  br label %372

318:                                              ; preds = %309
  br label %319

319:                                              ; preds = %318, %306
  br label %320

320:                                              ; preds = %319, %275
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 4
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @MIMESTATE_CURLHEADERS, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %335

327:                                              ; preds = %320
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 4
  %330 = load i64, i64* @MIMESTATE_CURLHEADERS, align 8
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 3
  %333 = load i32*, i32** %332, align 8
  %334 = call i32 @mimesetstate(%struct.TYPE_9__* %329, i64 %330, i32* %333)
  br label %335

335:                                              ; preds = %327, %320
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = icmp eq i32 %338, 128
  br i1 %339, label %340, label %370

340:                                              ; preds = %335
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %342 = icmp ne %struct.TYPE_8__* %341, null
  br i1 %342, label %343, label %370

343:                                              ; preds = %340
  store i8* null, i8** %8, align 8
  %344 = load i8*, i8** %7, align 8
  %345 = call i64 @strcasecompare(i8* %344, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %343
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %8, align 8
  br label %348

348:                                              ; preds = %347, %343
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %350, align 8
  store %struct.TYPE_7__* %351, %struct.TYPE_7__** %17, align 8
  br label %352

352:                                              ; preds = %365, %348
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %354 = icmp ne %struct.TYPE_7__* %353, null
  br i1 %354, label %355, label %369

355:                                              ; preds = %352
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %357 = load i8*, i8** %8, align 8
  %358 = load i32, i32* %9, align 4
  %359 = call i64 @Curl_mime_prepare_headers(%struct.TYPE_7__* %356, i8* null, i8* %357, i32 %358)
  store i64 %359, i64* %14, align 8
  %360 = load i64, i64* %14, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %355
  %363 = load i64, i64* %14, align 8
  store i64 %363, i64* %5, align 8
  br label %372

364:                                              ; preds = %355
  br label %365

365:                                              ; preds = %364
  %366 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 2
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %367, align 8
  store %struct.TYPE_7__* %368, %struct.TYPE_7__** %17, align 8
  br label %352

369:                                              ; preds = %352
  br label %370

370:                                              ; preds = %369, %340, %335
  %371 = load i64, i64* %14, align 8
  store i64 %371, i64* %5, align 8
  br label %372

372:                                              ; preds = %370, %362, %316, %272, %257
  %373 = load i64, i64* %5, align 8
  ret i64 %373
}

declare dso_local i32 @curl_slist_free_all(i32*) #1

declare dso_local i32 @mimesetstate(%struct.TYPE_9__*, i64, i32*) #1

declare dso_local i8* @search_header(i32, i8*) #1

declare dso_local i8* @Curl_mime_contenttype(i64) #1

declare dso_local i64 @strcasecompare(i8*, i8*) #1

declare dso_local i32 @strncasecompare(i8*, i8*, i32) #1

declare dso_local i64 @curl_strequal(i8*, i8*) #1

declare dso_local i8* @escape_string(i64) #1

declare dso_local i64 @Curl_mime_add_header(i32**, i8*, i8*, ...) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i64 @add_content_type(i32**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
