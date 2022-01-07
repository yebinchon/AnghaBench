; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_pretransfer.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_pretransfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_14__, %struct.WildcardData, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i8*, i64, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.WildcardData = type { i64 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i64, i32, i32, i64, i64, %struct.TYPE_8__, i32**, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i32*, i8* }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"No URL set!\00", align 1
@CURLE_URL_MALFORMAT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@CURLUPART_URL = common dso_local global i32 0, align 4
@STRING_SET_URL = common dso_local global i64 0, align 8
@HTTPREQ_PUT = common dso_local global i64 0, align 8
@HTTPREQ_GET = common dso_local global i64 0, align 8
@HTTPREQ_HEAD = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CURLWC_INIT = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_pretransfer(%struct.Curl_easy* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.WildcardData*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  %7 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %8 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %14 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 11
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %20 = call i32 @failf(%struct.Curl_easy* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @CURLE_URL_MALFORMAT, align 8
  store i64 %21, i64* %2, align 8
  br label %287

22:                                               ; preds = %12, %1
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %24 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %30 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @Curl_safefree(i32* %32)
  %34 = load i8*, i8** @FALSE, align 8
  %35 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %36 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  store i8* %34, i8** %37, align 8
  br label %38

38:                                               ; preds = %28, %22
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %40 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %70, label %44

44:                                               ; preds = %38
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %46 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 11
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %52 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 11
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @CURLUPART_URL, align 4
  %56 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %57 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 10
  %59 = load i32**, i32*** %58, align 8
  %60 = load i64, i64* @STRING_SET_URL, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = call i64 @curl_url_get(i64 %54, i32 %55, i32** %61, i32 0)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %50
  %66 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %67 = call i32 @failf(%struct.Curl_easy* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %68 = load i64, i64* @CURLE_URL_MALFORMAT, align 8
  store i64 %68, i64* %2, align 8
  br label %287

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %44, %38
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %72 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 10
  %74 = load i32**, i32*** %73, align 8
  %75 = load i64, i64* @STRING_SET_URL, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %79 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  store i32* %77, i32** %80, align 8
  %81 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %82 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %83 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @Curl_ssl_initsessions(%struct.Curl_easy* %81, i32 %86)
  store i64 %87, i64* %4, align 8
  %88 = load i64, i64* %4, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %70
  %91 = load i64, i64* %4, align 8
  store i64 %91, i64* %2, align 8
  br label %287

92:                                               ; preds = %70
  %93 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %94 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %98 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  store i64 %96, i64* %99, align 8
  %100 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %101 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 7
  store i64 0, i64* %102, align 8
  %103 = load i8*, i8** @FALSE, align 8
  %104 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %105 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 9
  store i8* %103, i8** %106, align 8
  %107 = load i8*, i8** @FALSE, align 8
  %108 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %109 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 8
  store i8* %107, i8** %110, align 8
  %111 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %112 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 7
  store i64 0, i64* %113, align 8
  %114 = load i8*, i8** @FALSE, align 8
  %115 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %116 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 6
  store i8* %114, i8** %117, align 8
  %118 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %119 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %123 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 8
  %126 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %127 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %131 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  store i32 %129, i32* %133, align 8
  %134 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %135 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @Curl_safefree(i32* %137)
  %139 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %140 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i32* null, i32** %141, align 8
  %142 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %143 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @HTTPREQ_PUT, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %92
  %149 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %150 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %154 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  br label %205

156:                                              ; preds = %92
  %157 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %158 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @HTTPREQ_GET, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %200

163:                                              ; preds = %156
  %164 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %165 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @HTTPREQ_HEAD, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %200

170:                                              ; preds = %163
  %171 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %172 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %176 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  %178 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %179 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %199

183:                                              ; preds = %170
  %184 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %185 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %199

189:                                              ; preds = %183
  %190 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %191 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @strlen(i64 %193)
  %195 = trunc i64 %194 to i32
  %196 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %197 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 8
  br label %199

199:                                              ; preds = %189, %183, %170
  br label %204

200:                                              ; preds = %163, %156
  %201 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %202 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  br label %204

204:                                              ; preds = %200, %199
  br label %205

205:                                              ; preds = %204, %148
  %206 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %207 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %213 = call i32 @Curl_cookie_loadfiles(%struct.Curl_easy* %212)
  br label %214

214:                                              ; preds = %211, %205
  %215 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %216 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  %221 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %222 = call i64 @Curl_loadhostpairs(%struct.Curl_easy* %221)
  store i64 %222, i64* %4, align 8
  br label %223

223:                                              ; preds = %220, %214
  %224 = load i64, i64* %4, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %285, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* @TRUE, align 4
  %228 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %229 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 5
  store i32 %227, i32* %230, align 4
  %231 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %232 = call i32 @Curl_initinfo(%struct.Curl_easy* %231)
  %233 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %234 = call i32 @Curl_pgrsResetTransferSizes(%struct.Curl_easy* %233)
  %235 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %236 = call i32 @Curl_pgrsStartNow(%struct.Curl_easy* %235)
  %237 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %238 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %243 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, %241
  store i32 %247, i32* %245, align 4
  %248 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %249 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %254 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, %252
  store i32 %258, i32* %256, align 4
  %259 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %260 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %281

264:                                              ; preds = %226
  %265 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %266 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %265, i32 0, i32 1
  store %struct.WildcardData* %266, %struct.WildcardData** %6, align 8
  %267 = load %struct.WildcardData*, %struct.WildcardData** %6, align 8
  %268 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @CURLWC_INIT, align 8
  %271 = icmp slt i64 %269, %270
  br i1 %271, label %272, label %280

272:                                              ; preds = %264
  %273 = load %struct.WildcardData*, %struct.WildcardData** %6, align 8
  %274 = call i64 @Curl_wildcard_init(%struct.WildcardData* %273)
  store i64 %274, i64* %4, align 8
  %275 = load i64, i64* %4, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %272
  %278 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %278, i64* %2, align 8
  br label %287

279:                                              ; preds = %272
  br label %280

280:                                              ; preds = %279, %264
  br label %281

281:                                              ; preds = %280, %226
  %282 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %283 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %282, i32 0, i32 0
  %284 = call i32 @Curl_http2_init_state(%struct.TYPE_14__* %283)
  br label %285

285:                                              ; preds = %281, %223
  %286 = load i64, i64* %4, align 8
  store i64 %286, i64* %2, align 8
  br label %287

287:                                              ; preds = %285, %277, %90, %65, %18
  %288 = load i64, i64* %2, align 8
  ret i64 %288
}

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @Curl_safefree(i32*) #1

declare dso_local i64 @curl_url_get(i64, i32, i32**, i32) #1

declare dso_local i64 @Curl_ssl_initsessions(%struct.Curl_easy*, i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @Curl_cookie_loadfiles(%struct.Curl_easy*) #1

declare dso_local i64 @Curl_loadhostpairs(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_initinfo(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_pgrsResetTransferSizes(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_pgrsStartNow(%struct.Curl_easy*) #1

declare dso_local i64 @Curl_wildcard_init(%struct.WildcardData*) #1

declare dso_local i32 @Curl_http2_init_state(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
