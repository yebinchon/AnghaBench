; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_parse_url_path.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_parse_url_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.Curl_easy* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i8**, i32, i8*, i8*, i8*, i8*, i8* }
%struct.Curl_easy = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.FTP* }
%struct.FTP = type { i64, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@FTPTRANSFER_BODY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Uploading to a URL without a file name!\00", align 1
@CURLE_URL_MALFORMAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Request has same path as previous transfer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @ftp_parse_url_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_parse_url_path(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.FTP*, align 8
  %6 = alloca %struct.ftp_conn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %20 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %21 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %20, i32 0, i32 2
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %21, align 8
  store %struct.Curl_easy* %22, %struct.Curl_easy** %4, align 8
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %24 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.FTP*, %struct.FTP** %25, align 8
  store %struct.FTP* %26, %struct.FTP** %5, align 8
  %27 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %28 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store %struct.ftp_conn* %29, %struct.ftp_conn** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %30 = load i64, i64* @CURLE_OK, align 8
  store i64 %30, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %31 = load i8*, i8** @FALSE, align 8
  %32 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %33 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @FALSE, align 8
  %35 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %36 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %38 = load %struct.FTP*, %struct.FTP** %5, align 8
  %39 = getelementptr inbounds %struct.FTP, %struct.FTP* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** @TRUE, align 8
  %42 = call i64 @Curl_urldecode(%struct.Curl_easy* %37, i32 %40, i32 0, i8** %10, i64* %11, i8* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %2, align 8
  br label %348

47:                                               ; preds = %1
  %48 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %49 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %129 [
    i32 129, label %52
    i32 128, label %66
    i32 130, label %130
  ]

52:                                               ; preds = %47
  %53 = load i64, i64* %11, align 8
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub i64 %57, 1
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 47
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i8*, i8** %10, align 8
  store i8* %64, i8** %8, align 8
  br label %65

65:                                               ; preds = %63, %55, %52
  br label %229

66:                                               ; preds = %47
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* @strrchr(i8* %67, i8 signext 47)
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %126

71:                                               ; preds = %66
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %12, align 8
  br label %82

82:                                               ; preds = %79, %71
  %83 = call i8* @calloc(i32 1, i64 8)
  %84 = bitcast i8* %83 to i8**
  %85 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %86 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %85, i32 0, i32 0
  store i8** %84, i8*** %86, align 8
  %87 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %88 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = icmp ne i8** %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %82
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %94, i64* %2, align 8
  br label %348

95:                                               ; preds = %82
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, 1
  %98 = call i8* @calloc(i32 1, i64 %97)
  %99 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %100 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %99, i32 0, i32 0
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  store i8* %98, i8** %102, align 8
  %103 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %104 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %95
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %112, i64* %2, align 8
  br label %348

113:                                              ; preds = %95
  %114 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %115 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %114, i32 0, i32 0
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load i64, i64* %12, align 8
  %121 = call i32 @strncpy(i8* %118, i8* %119, i64 %120)
  %122 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %123 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %122, i32 0, i32 1
  store i32 1, i32* %123, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  store i8* %125, i8** %8, align 8
  br label %128

126:                                              ; preds = %66
  %127 = load i8*, i8** %10, align 8
  store i8* %127, i8** %8, align 8
  br label %128

128:                                              ; preds = %126, %113
  br label %229

129:                                              ; preds = %47
  br label %130

130:                                              ; preds = %47, %129
  %131 = load i8*, i8** %10, align 8
  store i8* %131, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %132 = load i8*, i8** %10, align 8
  store i8* %132, i8** %15, align 8
  br label %133

133:                                              ; preds = %147, %130
  %134 = load i8*, i8** %15, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load i8*, i8** %15, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 47
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %143, %138
  br label %147

147:                                              ; preds = %146
  %148 = load i8*, i8** %15, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %15, align 8
  br label %133

150:                                              ; preds = %133
  %151 = load i32, i32* %14, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %220

153:                                              ; preds = %150
  %154 = load i32, i32* %14, align 4
  %155 = call i8* @calloc(i32 %154, i64 8)
  %156 = bitcast i8* %155 to i8**
  %157 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %158 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %157, i32 0, i32 0
  store i8** %156, i8*** %158, align 8
  %159 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %160 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %159, i32 0, i32 0
  %161 = load i8**, i8*** %160, align 8
  %162 = icmp ne i8** %161, null
  br i1 %162, label %167, label %163

163:                                              ; preds = %153
  %164 = load i8*, i8** %10, align 8
  %165 = call i32 @free(i8* %164)
  %166 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %166, i64* %2, align 8
  br label %348

167:                                              ; preds = %153
  br label %168

168:                                              ; preds = %216, %167
  %169 = load i8*, i8** %13, align 8
  %170 = call i8* @strchr(i8* %169, i8 signext 47)
  store i8* %170, i8** %7, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %219

172:                                              ; preds = %168
  %173 = load i8*, i8** %7, align 8
  %174 = load i8*, i8** %13, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  store i64 %177, i64* %16, align 8
  %178 = load i64, i64* %16, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %172
  %181 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %182 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i64, i64* %16, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %16, align 8
  br label %188

188:                                              ; preds = %185, %180, %172
  %189 = load i64, i64* %16, align 8
  %190 = icmp ugt i64 %189, 0
  br i1 %190, label %191, label %216

191:                                              ; preds = %188
  %192 = load i64, i64* %16, align 8
  %193 = add i64 %192, 1
  %194 = call i8* @calloc(i32 1, i64 %193)
  store i8* %194, i8** %17, align 8
  %195 = load i8*, i8** %17, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %191
  %198 = load i8*, i8** %10, align 8
  %199 = call i32 @free(i8* %198)
  %200 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %200, i64* %2, align 8
  br label %348

201:                                              ; preds = %191
  %202 = load i8*, i8** %17, align 8
  %203 = load i8*, i8** %13, align 8
  %204 = load i64, i64* %16, align 8
  %205 = call i32 @strncpy(i8* %202, i8* %203, i64 %204)
  %206 = load i8*, i8** %17, align 8
  %207 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %208 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %207, i32 0, i32 0
  %209 = load i8**, i8*** %208, align 8
  %210 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %211 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8*, i8** %209, i64 %214
  store i8* %206, i8** %215, align 8
  br label %216

216:                                              ; preds = %201, %188
  %217 = load i8*, i8** %7, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  store i8* %218, i8** %13, align 8
  br label %168

219:                                              ; preds = %168
  br label %220

220:                                              ; preds = %219, %150
  %221 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %222 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %14, align 4
  %225 = icmp sle i32 %223, %224
  %226 = zext i1 %225 to i32
  %227 = call i32 @DEBUGASSERT(i32 %226)
  %228 = load i8*, i8** %13, align 8
  store i8* %228, i8** %8, align 8
  br label %229

229:                                              ; preds = %220, %128, %65
  %230 = load i8*, i8** %8, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %242

232:                                              ; preds = %229
  %233 = load i8*, i8** %8, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8
  %239 = call i8* @strdup(i8* %238)
  %240 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %241 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %240, i32 0, i32 2
  store i8* %239, i8** %241, align 8
  br label %245

242:                                              ; preds = %232, %229
  %243 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %244 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %243, i32 0, i32 2
  store i8* null, i8** %244, align 8
  br label %245

245:                                              ; preds = %242, %237
  %246 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %247 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %268

251:                                              ; preds = %245
  %252 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %253 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %252, i32 0, i32 2
  %254 = load i8*, i8** %253, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %268, label %256

256:                                              ; preds = %251
  %257 = load %struct.FTP*, %struct.FTP** %5, align 8
  %258 = getelementptr inbounds %struct.FTP, %struct.FTP* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @FTPTRANSFER_BODY, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %268

262:                                              ; preds = %256
  %263 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %264 = call i32 @failf(%struct.Curl_easy* %263, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %265 = load i8*, i8** %10, align 8
  %266 = call i32 @free(i8* %265)
  %267 = load i64, i64* @CURLE_URL_MALFORMAT, align 8
  store i64 %267, i64* %2, align 8
  br label %348

268:                                              ; preds = %256, %251, %245
  %269 = load i8*, i8** @FALSE, align 8
  %270 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %271 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %270, i32 0, i32 4
  store i8* %269, i8** %271, align 8
  %272 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %273 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %275, 129
  br i1 %276, label %277, label %287

277:                                              ; preds = %268
  %278 = load i8*, i8** %10, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 0
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 47
  br i1 %282, label %283, label %287

283:                                              ; preds = %277
  %284 = load i8*, i8** @TRUE, align 8
  %285 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %286 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %285, i32 0, i32 4
  store i8* %284, i8** %286, align 8
  br label %344

287:                                              ; preds = %277, %268
  %288 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %289 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %295 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %294, i32 0, i32 3
  %296 = load i8*, i8** %295, align 8
  br label %298

297:                                              ; preds = %287
  br label %298

298:                                              ; preds = %297, %293
  %299 = phi i8* [ %296, %293 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %297 ]
  store i8* %299, i8** %18, align 8
  %300 = load i8*, i8** %18, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %343

302:                                              ; preds = %298
  %303 = load i64, i64* %11, align 8
  store i64 %303, i64* %19, align 8
  %304 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %305 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = icmp eq i32 %307, 129
  br i1 %308, label %309, label %310

309:                                              ; preds = %302
  store i64 0, i64* %19, align 8
  br label %325

310:                                              ; preds = %302
  %311 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %312 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %311, i32 0, i32 2
  %313 = load i8*, i8** %312, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %320

315:                                              ; preds = %310
  %316 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %317 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %316, i32 0, i32 2
  %318 = load i8*, i8** %317, align 8
  %319 = call i64 @strlen(i8* %318)
  br label %321

320:                                              ; preds = %310
  br label %321

321:                                              ; preds = %320, %315
  %322 = phi i64 [ %319, %315 ], [ 0, %320 ]
  %323 = load i64, i64* %19, align 8
  %324 = sub i64 %323, %322
  store i64 %324, i64* %19, align 8
  br label %325

325:                                              ; preds = %321, %309
  %326 = load i8*, i8** %18, align 8
  %327 = call i64 @strlen(i8* %326)
  %328 = load i64, i64* %19, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %342

330:                                              ; preds = %325
  %331 = load i8*, i8** %10, align 8
  %332 = load i8*, i8** %18, align 8
  %333 = load i64, i64* %19, align 8
  %334 = call i32 @strncmp(i8* %331, i8* %332, i64 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %342, label %336

336:                                              ; preds = %330
  %337 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %338 = call i32 @infof(%struct.Curl_easy* %337, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %339 = load i8*, i8** @TRUE, align 8
  %340 = load %struct.ftp_conn*, %struct.ftp_conn** %6, align 8
  %341 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %340, i32 0, i32 4
  store i8* %339, i8** %341, align 8
  br label %342

342:                                              ; preds = %336, %330, %325
  br label %343

343:                                              ; preds = %342, %298
  br label %344

344:                                              ; preds = %343, %283
  %345 = load i8*, i8** %10, align 8
  %346 = call i32 @free(i8* %345)
  %347 = load i64, i64* @CURLE_OK, align 8
  store i64 %347, i64* %2, align 8
  br label %348

348:                                              ; preds = %344, %262, %197, %163, %109, %91, %45
  %349 = load i64, i64* %2, align 8
  ret i64 %349
}

declare dso_local i64 @Curl_urldecode(%struct.Curl_easy*, i32, i32, i8**, i64*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
