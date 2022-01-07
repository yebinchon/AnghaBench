; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_follow.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_follow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i8*, i32, i32, i64 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i8*, i32, i8* }

@FALSE = common dso_local global i8* null, align 8
@FOLLOW_REDIR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FOLLOW_FAKE = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@MAX_SCHEME_LEN = common dso_local global i32 0, align 4
@CURLUPART_URL = common dso_local global i32 0, align 4
@CURLU_NON_SUPPORT_SCHEME = common dso_local global i32 0, align 4
@CURLU_URLENCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Maximum (%ld) redirects followed\00", align 1
@CURLE_TOO_MANY_REDIRECTS = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Issue another request to this URL: '%s'\0A\00", align 1
@HTTPREQ_POST = common dso_local global i8* null, align 8
@HTTPREQ_POST_FORM = common dso_local global i8* null, align 8
@HTTPREQ_POST_MIME = common dso_local global i8* null, align 8
@CURL_REDIR_POST_301 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Switch from POST to GET\0A\00", align 1
@HTTPREQ_GET = common dso_local global i8* null, align 8
@CURL_REDIR_POST_302 = common dso_local global i32 0, align 4
@CURL_REDIR_POST_303 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Disables POST, goes with %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@TIMER_REDIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_follow(%struct.Curl_easy* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** @FALSE, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** @FALSE, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @FOLLOW_REDIR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %94

18:                                               ; preds = %3
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %26 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %30 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %28, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i8*, i8** @TRUE, align 8
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i64, i64* @FOLLOW_FAKE, align 8
  store i64 %37, i64* %7, align 8
  br label %93

38:                                               ; preds = %24, %18
  %39 = load i8*, i8** @TRUE, align 8
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %41 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %44 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %49 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %92

53:                                               ; preds = %38
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %55 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %61 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @Curl_safefree(i8* %63)
  %65 = load i8*, i8** @FALSE, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %68 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %70

70:                                               ; preds = %59, %53
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %72 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @strdup(i8* %74)
  %76 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %77 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %80 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %70
  %85 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %85, i32* %4, align 4
  br label %336

86:                                               ; preds = %70
  %87 = load i8*, i8** @TRUE, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %90 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  br label %92

92:                                               ; preds = %86, %38
  br label %93

93:                                               ; preds = %92, %34
  br label %94

94:                                               ; preds = %93, %3
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* @MAX_SCHEME_LEN, align 4
  %97 = call i64 @Curl_is_absolute_url(i8* %95, i32* null, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i8*, i8** @TRUE, align 8
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %104 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @DEBUGASSERT(i32 %106)
  %108 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %109 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CURLUPART_URL, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* @FOLLOW_FAKE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %102
  %118 = load i32, i32* @CURLU_NON_SUPPORT_SCHEME, align 4
  br label %128

119:                                              ; preds = %102
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* @FOLLOW_REDIR, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @CURLU_URLENCODE, align 4
  br label %126

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i32 [ %124, %123 ], [ 0, %125 ]
  br label %128

128:                                              ; preds = %126, %117
  %129 = phi i32 [ %118, %117 ], [ %127, %126 ]
  %130 = call i64 @curl_url_set(i32 %111, i32 %112, i8* %113, i32 %129)
  store i64 %130, i64* %10, align 8
  %131 = load i64, i64* %10, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %128
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* @FOLLOW_FAKE, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i64, i64* %10, align 8
  %139 = call i32 @Curl_uc_to_curlcode(i64 %138)
  store i32 %139, i32* %4, align 4
  br label %336

140:                                              ; preds = %133
  %141 = load i8*, i8** %6, align 8
  %142 = call i8* @strdup(i8* %141)
  store i8* %142, i8** %6, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %146, i32* %4, align 4
  br label %336

147:                                              ; preds = %140
  br label %161

148:                                              ; preds = %128
  %149 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %150 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @CURLUPART_URL, align 4
  %154 = call i64 @curl_url_get(i32 %152, i32 %153, i8** %6, i32 0)
  store i64 %154, i64* %10, align 8
  %155 = load i64, i64* %10, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %148
  %158 = load i64, i64* %10, align 8
  %159 = call i32 @Curl_uc_to_curlcode(i64 %158)
  store i32 %159, i32* %4, align 4
  br label %336

160:                                              ; preds = %148
  br label %161

161:                                              ; preds = %160, %147
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* @FOLLOW_FAKE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %161
  %166 = load i8*, i8** %6, align 8
  %167 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %168 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  store i8* %166, i8** %169, align 8
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %165
  %173 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %174 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %175 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @failf(%struct.Curl_easy* %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* @CURLE_TOO_MANY_REDIRECTS, align 4
  store i32 %179, i32* %4, align 4
  br label %336

180:                                              ; preds = %165
  %181 = load i32, i32* @CURLE_OK, align 4
  store i32 %181, i32* %4, align 4
  br label %336

182:                                              ; preds = %161
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i8*, i8** @FALSE, align 8
  %187 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %188 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  store i8* %186, i8** %189, align 8
  br label %190

190:                                              ; preds = %185, %182
  %191 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %192 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %198 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @Curl_safefree(i8* %200)
  br label %202

202:                                              ; preds = %196, %190
  %203 = load i8*, i8** %6, align 8
  %204 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %205 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  store i8* %203, i8** %206, align 8
  %207 = load i8*, i8** @TRUE, align 8
  %208 = ptrtoint i8* %207 to i32
  %209 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %210 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 3
  store i32 %208, i32* %211, align 8
  %212 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %213 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %214 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %212, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %216)
  %218 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %219 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  switch i32 %221, label %222 [
    i32 301, label %223
    i32 302, label %260
    i32 303, label %297
    i32 304, label %327
    i32 305, label %328
  ]

222:                                              ; preds = %202
  br label %329

223:                                              ; preds = %202
  %224 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %225 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = load i8*, i8** @HTTPREQ_POST, align 8
  %229 = icmp eq i8* %227, %228
  br i1 %229, label %244, label %230

230:                                              ; preds = %223
  %231 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %232 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 2
  %234 = load i8*, i8** %233, align 8
  %235 = load i8*, i8** @HTTPREQ_POST_FORM, align 8
  %236 = icmp eq i8* %234, %235
  br i1 %236, label %244, label %237

237:                                              ; preds = %230
  %238 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %239 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i8*, i8** %240, align 8
  %242 = load i8*, i8** @HTTPREQ_POST_MIME, align 8
  %243 = icmp eq i8* %241, %242
  br i1 %243, label %244, label %259

244:                                              ; preds = %237, %230, %223
  %245 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %246 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @CURL_REDIR_POST_301, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %259, label %252

252:                                              ; preds = %244
  %253 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %254 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %253, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %255 = load i8*, i8** @HTTPREQ_GET, align 8
  %256 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %257 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 2
  store i8* %255, i8** %258, align 8
  br label %259

259:                                              ; preds = %252, %244, %237
  br label %329

260:                                              ; preds = %202
  %261 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %262 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 2
  %264 = load i8*, i8** %263, align 8
  %265 = load i8*, i8** @HTTPREQ_POST, align 8
  %266 = icmp eq i8* %264, %265
  br i1 %266, label %281, label %267

267:                                              ; preds = %260
  %268 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %269 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 2
  %271 = load i8*, i8** %270, align 8
  %272 = load i8*, i8** @HTTPREQ_POST_FORM, align 8
  %273 = icmp eq i8* %271, %272
  br i1 %273, label %281, label %274

274:                                              ; preds = %267
  %275 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %276 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 2
  %278 = load i8*, i8** %277, align 8
  %279 = load i8*, i8** @HTTPREQ_POST_MIME, align 8
  %280 = icmp eq i8* %278, %279
  br i1 %280, label %281, label %296

281:                                              ; preds = %274, %267, %260
  %282 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %283 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @CURL_REDIR_POST_302, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %281
  %290 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %291 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %290, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %292 = load i8*, i8** @HTTPREQ_GET, align 8
  %293 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %294 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 2
  store i8* %292, i8** %295, align 8
  br label %296

296:                                              ; preds = %289, %281, %274
  br label %329

297:                                              ; preds = %202
  %298 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %299 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 2
  %301 = load i8*, i8** %300, align 8
  %302 = load i8*, i8** @HTTPREQ_GET, align 8
  %303 = icmp ne i8* %301, %302
  br i1 %303, label %304, label %326

304:                                              ; preds = %297
  %305 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %306 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @CURL_REDIR_POST_303, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %326, label %312

312:                                              ; preds = %304
  %313 = load i8*, i8** @HTTPREQ_GET, align 8
  %314 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %315 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 2
  store i8* %313, i8** %316, align 8
  %317 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %318 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %319 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  %323 = zext i1 %322 to i64
  %324 = select i1 %322, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %325 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %317, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %324)
  br label %326

326:                                              ; preds = %312, %304, %297
  br label %329

327:                                              ; preds = %202
  br label %329

328:                                              ; preds = %202
  br label %329

329:                                              ; preds = %328, %327, %326, %296, %259, %222
  %330 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %331 = load i32, i32* @TIMER_REDIRECT, align 4
  %332 = call i32 @Curl_pgrsTime(%struct.Curl_easy* %330, i32 %331)
  %333 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %334 = call i32 @Curl_pgrsResetTransferSizes(%struct.Curl_easy* %333)
  %335 = load i32, i32* @CURLE_OK, align 4
  store i32 %335, i32* %4, align 4
  br label %336

336:                                              ; preds = %329, %180, %172, %157, %145, %137, %84
  %337 = load i32, i32* %4, align 4
  ret i32 %337
}

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @Curl_is_absolute_url(i8*, i32*, i32) #1

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i64 @curl_url_set(i32, i32, i8*, i32) #1

declare dso_local i32 @Curl_uc_to_curlcode(i64) #1

declare dso_local i64 @curl_url_get(i32, i32, i8**, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i32 @Curl_pgrsTime(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_pgrsResetTransferSizes(%struct.Curl_easy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
