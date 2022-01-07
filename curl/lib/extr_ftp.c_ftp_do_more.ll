; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_do_more.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_do_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.Curl_easy* }
%struct.TYPE_6__ = type { i64, i64, i32* }
%struct.TYPE_5__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i64, i8*, i32, i8*, i64 }
%struct.Curl_easy = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8*, i64, i64 }
%struct.TYPE_7__ = type { i64, %struct.FTP* }
%struct.FTP = type { i64, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@SECONDARYSOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"DO-MORE connected phase starts\0A\00", align 1
@FTPTRANSFER_INFO = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FTP_STOR_TYPE = common dso_local global i32 0, align 4
@FTPTRANSFER_BODY = common dso_local global i64 0, align 8
@FTP_LIST_TYPE = common dso_local global i32 0, align 4
@FTP_RETR_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DO-MORE phase ends with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @ftp_do_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_do_more(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca %struct.ftp_conn*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.FTP*, align 8
  %12 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 2
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  store %struct.Curl_easy* %15, %struct.Curl_easy** %6, align 8
  %16 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %17 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.ftp_conn* %18, %struct.ftp_conn** %7, align 8
  %19 = load i64, i64* @CURLE_OK, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i8*, i8** @FALSE, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i8*, i8** @FALSE, align 8
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.FTP*, %struct.FTP** %26, align 8
  store %struct.FTP* %27, %struct.FTP** %11, align 8
  %28 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @SECONDARYSOCKET, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %70, label %36

36:                                               ; preds = %2
  %37 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %38 = call i64 @Curl_connect_ongoing(%struct.connectdata* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %42 = load i64, i64* @SECONDARYSOCKET, align 8
  %43 = call i64 @Curl_proxyCONNECT(%struct.connectdata* %41, i64 %42, i32* null, i32 0)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %3, align 8
  br label %275

45:                                               ; preds = %36
  %46 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %47 = load i64, i64* @SECONDARYSOCKET, align 8
  %48 = call i64 @Curl_is_connected(%struct.connectdata* %46, i64 %47, i32* %9)
  store i64 %48, i64* %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %53 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %54 = call i32 @DEBUGF(i32 %53)
  br label %69

55:                                               ; preds = %45
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %60 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32*, i32** %5, align 8
  store i32 -1, i32* %64, align 4
  %65 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %66 = call i64 @ftp_epsv_disable(%struct.connectdata* %65)
  store i64 %66, i64* %3, align 8
  br label %275

67:                                               ; preds = %58, %55
  %68 = load i64, i64* %8, align 8
  store i64 %68, i64* %3, align 8
  br label %275

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %2
  %71 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %72 = load i64, i64* @SECONDARYSOCKET, align 8
  %73 = call i64 @Curl_proxy_connect(%struct.connectdata* %71, i64 %72)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i64, i64* %8, align 8
  store i64 %77, i64* %3, align 8
  br label %275

78:                                               ; preds = %70
  %79 = call i64 (...) @CONNECT_SECONDARYSOCKET_PROXY_SSL()
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* %3, align 8
  br label %275

83:                                               ; preds = %78
  %84 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %85 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %91 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %97 = call i64 @Curl_connect_ongoing(%struct.connectdata* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i64, i64* %8, align 8
  store i64 %100, i64* %3, align 8
  br label %275

101:                                              ; preds = %95, %89, %83
  %102 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %103 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %108 = call i64 @ftp_multi_statemach(%struct.connectdata* %107, i32* %10)
  store i64 %108, i64* %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32*, i32** %5, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i64, i64* %8, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %106
  %114 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %115 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %113, %106
  %119 = load i64, i64* %8, align 8
  store i64 %119, i64* %3, align 8
  br label %275

120:                                              ; preds = %113
  %121 = load i32*, i32** %5, align 8
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %120, %101
  %123 = load %struct.FTP*, %struct.FTP** %11, align 8
  %124 = getelementptr inbounds %struct.FTP, %struct.FTP* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @FTPTRANSFER_INFO, align 8
  %127 = icmp sle i64 %125, %126
  br i1 %127, label %128, label %258

128:                                              ; preds = %122
  %129 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %130 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** @TRUE, align 8
  %133 = icmp eq i8* %131, %132
  br i1 %133, label %134, label %163

134:                                              ; preds = %128
  %135 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %136 = call i64 @ReceivedServerConnect(%struct.connectdata* %135, i32* %12)
  store i64 %136, i64* %8, align 8
  %137 = load i64, i64* %8, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i64, i64* %8, align 8
  store i64 %140, i64* %3, align 8
  br label %275

141:                                              ; preds = %134
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %141
  %145 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %146 = call i64 @AcceptServerConnect(%struct.connectdata* %145)
  store i64 %146, i64* %8, align 8
  %147 = load i8*, i8** @FALSE, align 8
  %148 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %149 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load i64, i64* %8, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %144
  %153 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %154 = call i64 @InitiateTransfer(%struct.connectdata* %153)
  store i64 %154, i64* %8, align 8
  br label %155

155:                                              ; preds = %152, %144
  %156 = load i64, i64* %8, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i64, i64* %8, align 8
  store i64 %159, i64* %3, align 8
  br label %275

160:                                              ; preds = %155
  %161 = load i32*, i32** %5, align 8
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %160, %141
  br label %256

163:                                              ; preds = %128
  %164 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %165 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %163
  %170 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %171 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %172 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* @FTP_STOR_TYPE, align 4
  %176 = call i64 @ftp_nb_type(%struct.connectdata* %170, i8* %174, i32 %175)
  store i64 %176, i64* %8, align 8
  %177 = load i64, i64* %8, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %169
  %180 = load i64, i64* %8, align 8
  store i64 %180, i64* %3, align 8
  br label %275

181:                                              ; preds = %169
  %182 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %183 = call i64 @ftp_multi_statemach(%struct.connectdata* %182, i32* %10)
  store i64 %183, i64* %8, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32*, i32** %5, align 8
  store i32 %184, i32* %185, align 4
  br label %255

186:                                              ; preds = %163
  %187 = load %struct.FTP*, %struct.FTP** %11, align 8
  %188 = getelementptr inbounds %struct.FTP, %struct.FTP* %187, i32 0, i32 1
  store i32 -1, i32* %188, align 8
  %189 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %190 = call i64 @Curl_range(%struct.connectdata* %189)
  store i64 %190, i64* %8, align 8
  %191 = load i64, i64* %8, align 8
  %192 = load i64, i64* @CURLE_OK, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %186
  %195 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %196 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp sge i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i8*, i8** @TRUE, align 8
  %202 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %203 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  br label %204

204:                                              ; preds = %200, %194, %186
  %205 = load i64, i64* %8, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %250

208:                                              ; preds = %204
  %209 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %210 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %208
  %215 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %216 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %236, label %219

219:                                              ; preds = %214, %208
  %220 = load %struct.FTP*, %struct.FTP** %11, align 8
  %221 = getelementptr inbounds %struct.FTP, %struct.FTP* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @FTPTRANSFER_BODY, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %235

225:                                              ; preds = %219
  %226 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %227 = load i8*, i8** @TRUE, align 8
  %228 = load i32, i32* @FTP_LIST_TYPE, align 4
  %229 = call i64 @ftp_nb_type(%struct.connectdata* %226, i8* %227, i32 %228)
  store i64 %229, i64* %8, align 8
  %230 = load i64, i64* %8, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %225
  %233 = load i64, i64* %8, align 8
  store i64 %233, i64* %3, align 8
  br label %275

234:                                              ; preds = %225
  br label %235

235:                                              ; preds = %234, %219
  br label %249

236:                                              ; preds = %214
  %237 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %238 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %239 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = load i32, i32* @FTP_RETR_TYPE, align 4
  %243 = call i64 @ftp_nb_type(%struct.connectdata* %237, i8* %241, i32 %242)
  store i64 %243, i64* %8, align 8
  %244 = load i64, i64* %8, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %236
  %247 = load i64, i64* %8, align 8
  store i64 %247, i64* %3, align 8
  br label %275

248:                                              ; preds = %236
  br label %249

249:                                              ; preds = %248, %235
  br label %250

250:                                              ; preds = %249, %207
  %251 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %252 = call i64 @ftp_multi_statemach(%struct.connectdata* %251, i32* %10)
  store i64 %252, i64* %8, align 8
  %253 = load i32, i32* %10, align 4
  %254 = load i32*, i32** %5, align 8
  store i32 %253, i32* %254, align 4
  br label %255

255:                                              ; preds = %250, %181
  br label %256

256:                                              ; preds = %255, %162
  %257 = load i64, i64* %8, align 8
  store i64 %257, i64* %3, align 8
  br label %275

258:                                              ; preds = %122
  %259 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %260 = load i8*, i8** @FALSE, align 8
  %261 = call i32 @Curl_setup_transfer(%struct.Curl_easy* %259, i32 -1, i32 -1, i8* %260, i32 -1)
  %262 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %263 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %262, i32 0, i32 1
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %273, label %266

266:                                              ; preds = %258
  %267 = load i32*, i32** %5, align 8
  store i32 1, i32* %267, align 4
  %268 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %269 = load i64, i64* %8, align 8
  %270 = trunc i64 %269 to i32
  %271 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %268, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %270)
  %272 = call i32 @DEBUGF(i32 %271)
  br label %273

273:                                              ; preds = %266, %258
  %274 = load i64, i64* %8, align 8
  store i64 %274, i64* %3, align 8
  br label %275

275:                                              ; preds = %273, %256, %246, %232, %179, %158, %139, %118, %99, %81, %76, %67, %63, %40
  %276 = load i64, i64* %3, align 8
  ret i64 %276
}

declare dso_local i64 @Curl_connect_ongoing(%struct.connectdata*) #1

declare dso_local i64 @Curl_proxyCONNECT(%struct.connectdata*, i64, i32*, i32) #1

declare dso_local i64 @Curl_is_connected(%struct.connectdata*, i64, i32*) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i64 @ftp_epsv_disable(%struct.connectdata*) #1

declare dso_local i64 @Curl_proxy_connect(%struct.connectdata*, i64) #1

declare dso_local i64 @CONNECT_SECONDARYSOCKET_PROXY_SSL(...) #1

declare dso_local i64 @ftp_multi_statemach(%struct.connectdata*, i32*) #1

declare dso_local i64 @ReceivedServerConnect(%struct.connectdata*, i32*) #1

declare dso_local i64 @AcceptServerConnect(%struct.connectdata*) #1

declare dso_local i64 @InitiateTransfer(%struct.connectdata*) #1

declare dso_local i64 @ftp_nb_type(%struct.connectdata*, i8*, i32) #1

declare dso_local i64 @Curl_range(%struct.connectdata*) #1

declare dso_local i32 @Curl_setup_transfer(%struct.Curl_easy*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
