; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_add_custom_headers.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_add_custom_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.Curl_easy* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.Curl_easy = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i32, %struct.curl_slist*, %struct.curl_slist*, i32 }
%struct.curl_slist = type { i8*, %struct.curl_slist* }

@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"Host:\00", align 1
@HTTPREQ_POST_FORM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Content-Type:\00", align 1
@HTTPREQ_POST_MIME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Content-Length:\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Connection:\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Transfer-Encoding:\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Authorization:\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Cookie:\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_add_custom_headers(%struct.connectdata* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x %struct.curl_slist*], align 16
  %10 = alloca %struct.curl_slist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.Curl_easy*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %11, align 4
  %19 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 4
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %20, align 8
  store %struct.Curl_easy* %21, %struct.Curl_easy** %12, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 130, i32* %14, align 4
  br label %42

25:                                               ; preds = %3
  %26 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %27 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %33 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %31, %25
  %39 = phi i1 [ false, %25 ], [ %37, %31 ]
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 129, i32 128
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %38, %24
  %43 = load i32, i32* %14, align 4
  switch i32 %43, label %89 [
    i32 128, label %44
    i32 129, label %50
    i32 130, label %70
  ]

44:                                               ; preds = %42
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %46 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load %struct.curl_slist*, %struct.curl_slist** %47, align 8
  %49 = getelementptr inbounds [2 x %struct.curl_slist*], [2 x %struct.curl_slist*]* %9, i64 0, i64 0
  store %struct.curl_slist* %48, %struct.curl_slist** %49, align 16
  br label %89

50:                                               ; preds = %42
  %51 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %52 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load %struct.curl_slist*, %struct.curl_slist** %53, align 8
  %55 = getelementptr inbounds [2 x %struct.curl_slist*], [2 x %struct.curl_slist*]* %9, i64 0, i64 0
  store %struct.curl_slist* %54, %struct.curl_slist** %55, align 16
  %56 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %57 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %63 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load %struct.curl_slist*, %struct.curl_slist** %64, align 8
  %66 = getelementptr inbounds [2 x %struct.curl_slist*], [2 x %struct.curl_slist*]* %9, i64 0, i64 1
  store %struct.curl_slist* %65, %struct.curl_slist** %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %61, %50
  br label %89

70:                                               ; preds = %42
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %72 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %78 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load %struct.curl_slist*, %struct.curl_slist** %79, align 8
  %81 = getelementptr inbounds [2 x %struct.curl_slist*], [2 x %struct.curl_slist*]* %9, i64 0, i64 0
  store %struct.curl_slist* %80, %struct.curl_slist** %81, align 16
  br label %88

82:                                               ; preds = %70
  %83 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %84 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load %struct.curl_slist*, %struct.curl_slist** %85, align 8
  %87 = getelementptr inbounds [2 x %struct.curl_slist*], [2 x %struct.curl_slist*]* %9, i64 0, i64 0
  store %struct.curl_slist* %86, %struct.curl_slist** %87, align 16
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %42, %88, %69, %44
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %351, %89
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %354

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x %struct.curl_slist*], [2 x %struct.curl_slist*]* %9, i64 0, i64 %96
  %98 = load %struct.curl_slist*, %struct.curl_slist** %97, align 8
  store %struct.curl_slist* %98, %struct.curl_slist** %10, align 8
  br label %99

99:                                               ; preds = %346, %94
  %100 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %101 = icmp ne %struct.curl_slist* %100, null
  br i1 %101, label %102, label %350

102:                                              ; preds = %99
  store i8* null, i8** %15, align 8
  %103 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %104 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @strchr(i8* %105, i8 signext 58)
  store i8* %106, i8** %8, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %179, label %109

109:                                              ; preds = %102
  %110 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %111 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* @strchr(i8* %112, i8 signext 59)
  store i8* %113, i8** %8, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %178

116:                                              ; preds = %109
  %117 = load i8*, i8** %8, align 8
  store i8* %117, i8** %16, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  br label %120

120:                                              ; preds = %132, %116
  %121 = load i8*, i8** %8, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i8*, i8** %8, align 8
  %127 = load i8, i8* %126, align 1
  %128 = call i64 @ISSPACE(i8 signext %127)
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %125, %120
  %131 = phi i1 [ false, %120 ], [ %129, %125 ]
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %8, align 8
  br label %120

135:                                              ; preds = %130
  %136 = load i8*, i8** %8, align 8
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i8* null, i8** %16, align 8
  br label %176

140:                                              ; preds = %135
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 -1
  store i8* %142, i8** %8, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 59
  br i1 %145, label %146, label %175

146:                                              ; preds = %140
  %147 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %148 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @strdup(i8* %149)
  store i8* %150, i8** %15, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %146
  %154 = call i32 @Curl_add_buffer_free(i32** %7)
  %155 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %155, i64* %4, align 8
  br label %356

156:                                              ; preds = %146
  %157 = load i8*, i8** %15, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %160 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = ptrtoint i8* %158 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = getelementptr inbounds i8, i8* %157, i64 %164
  store i8 58, i8* %165, align 1
  %166 = load i8*, i8** %15, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %169 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = ptrtoint i8* %167 to i64
  %172 = ptrtoint i8* %170 to i64
  %173 = sub i64 %171, %172
  %174 = getelementptr inbounds i8, i8* %166, i64 %173
  store i8* %174, i8** %16, align 8
  br label %175

175:                                              ; preds = %156, %140
  br label %176

176:                                              ; preds = %175, %139
  %177 = load i8*, i8** %16, align 8
  store i8* %177, i8** %8, align 8
  br label %178

178:                                              ; preds = %176, %109
  br label %179

179:                                              ; preds = %178, %102
  %180 = load i8*, i8** %8, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %346

182:                                              ; preds = %179
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %8, align 8
  br label %185

185:                                              ; preds = %197, %182
  %186 = load i8*, i8** %8, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i8*, i8** %8, align 8
  %192 = load i8, i8* %191, align 1
  %193 = call i64 @ISSPACE(i8 signext %192)
  %194 = icmp ne i64 %193, 0
  br label %195

195:                                              ; preds = %190, %185
  %196 = phi i1 [ false, %185 ], [ %194, %190 ]
  br i1 %196, label %197, label %200

197:                                              ; preds = %195
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %8, align 8
  br label %185

200:                                              ; preds = %195
  %201 = load i8*, i8** %8, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = load i8*, i8** %15, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %345

208:                                              ; preds = %205, %200
  %209 = load i64, i64* @CURLE_OK, align 8
  store i64 %209, i64* %17, align 8
  %210 = load i8*, i8** %15, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i8*, i8** %15, align 8
  br label %218

214:                                              ; preds = %208
  %215 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %216 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  br label %218

218:                                              ; preds = %214, %212
  %219 = phi i8* [ %213, %212 ], [ %217, %214 ]
  store i8* %219, i8** %18, align 8
  %220 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %221 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %218
  %226 = load i8*, i8** %18, align 8
  %227 = call i64 @checkprefix(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  br label %333

230:                                              ; preds = %225, %218
  %231 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %232 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @HTTPREQ_POST_FORM, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %230
  %238 = load i8*, i8** %18, align 8
  %239 = call i64 @checkprefix(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  br label %332

242:                                              ; preds = %237, %230
  %243 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %244 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @HTTPREQ_POST_MIME, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %242
  %250 = load i8*, i8** %18, align 8
  %251 = call i64 @checkprefix(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  br label %331

254:                                              ; preds = %249, %242
  %255 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %256 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %254
  %261 = load i8*, i8** %18, align 8
  %262 = call i64 @checkprefix(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  br label %330

265:                                              ; preds = %260, %254
  %266 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %267 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %265
  %272 = load i8*, i8** %18, align 8
  %273 = call i64 @checkprefix(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  br label %329

276:                                              ; preds = %271, %265
  %277 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %278 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp sge i32 %279, 20
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load i8*, i8** %18, align 8
  %283 = call i64 @checkprefix(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  br label %328

286:                                              ; preds = %281, %276
  %287 = load i8*, i8** %18, align 8
  %288 = call i64 @checkprefix(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %294, label %290

290:                                              ; preds = %286
  %291 = load i8*, i8** %18, align 8
  %292 = call i64 @checkprefix(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %324

294:                                              ; preds = %290, %286
  %295 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %296 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %324

300:                                              ; preds = %294
  %301 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %302 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %324

306:                                              ; preds = %300
  %307 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %308 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %324, label %312

312:                                              ; preds = %306
  %313 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %314 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %318 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @strcasecompare(i64 %316, i32 %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %312
  br label %327

324:                                              ; preds = %312, %306, %300, %294, %290
  %325 = load i8*, i8** %18, align 8
  %326 = call i64 @Curl_add_bufferf(i32** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %325)
  store i64 %326, i64* %17, align 8
  br label %327

327:                                              ; preds = %324, %323
  br label %328

328:                                              ; preds = %327, %285
  br label %329

329:                                              ; preds = %328, %275
  br label %330

330:                                              ; preds = %329, %264
  br label %331

331:                                              ; preds = %330, %253
  br label %332

332:                                              ; preds = %331, %241
  br label %333

333:                                              ; preds = %332, %229
  %334 = load i8*, i8** %15, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  %337 = load i8*, i8** %15, align 8
  %338 = call i32 @free(i8* %337)
  br label %339

339:                                              ; preds = %336, %333
  %340 = load i64, i64* %17, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %339
  %343 = load i64, i64* %17, align 8
  store i64 %343, i64* %4, align 8
  br label %356

344:                                              ; preds = %339
  br label %345

345:                                              ; preds = %344, %205
  br label %346

346:                                              ; preds = %345, %179
  %347 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %348 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %347, i32 0, i32 1
  %349 = load %struct.curl_slist*, %struct.curl_slist** %348, align 8
  store %struct.curl_slist* %349, %struct.curl_slist** %10, align 8
  br label %99

350:                                              ; preds = %99
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %13, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %13, align 4
  br label %90

354:                                              ; preds = %90
  %355 = load i64, i64* @CURLE_OK, align 8
  store i64 %355, i64* %4, align 8
  br label %356

356:                                              ; preds = %354, %342, %153
  %357 = load i64, i64* %4, align 8
  ret i64 %357
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @Curl_add_buffer_free(i32**) #1

declare dso_local i64 @checkprefix(i8*, i8*) #1

declare dso_local i32 @strcasecompare(i64, i32) #1

declare dso_local i64 @Curl_add_bufferf(i32**, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
