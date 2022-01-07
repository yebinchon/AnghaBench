; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pingpong.c_Curl_pp_readresp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pingpong.c_Curl_pp_readresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong = type { i64, i8*, i8*, i32, i8*, i64 (%struct.connectdata*, i8*, i32, i32*)*, %struct.connectdata.0* }
%struct.connectdata = type opaque
%struct.connectdata.0 = type { i32, i32, %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i8* }

@TRUE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"cached response data too big to handle\00", align 1
@CURLE_RECV_ERROR = common dso_local global i64 0, align 8
@CURLE_AGAIN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"response reading failed\00", align 1
@CURLINFO_HEADER_IN = common dso_local global i32 0, align 4
@CLIENTWRITE_HEADER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Curl_pp_readresp_ %d bytes of trailing server response left\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Excessive server response line length received, %zd bytes. Stripping\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@PROT_CLEAR = common dso_local global i32 0, align 4
@PROT_LAST = common dso_local global i32 0, align 4
@PROT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_pp_readresp(i32 %0, %struct.pingpong* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pingpong*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.connectdata.0*, align 8
  %15 = alloca %struct.Curl_easy*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.pingpong* %1, %struct.pingpong** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %24 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %23, i32 0, i32 6
  %25 = load %struct.connectdata.0*, %struct.connectdata.0** %24, align 8
  store %struct.connectdata.0* %25, %struct.connectdata.0** %14, align 8
  %26 = load %struct.connectdata.0*, %struct.connectdata.0** %14, align 8
  %27 = getelementptr inbounds %struct.connectdata.0, %struct.connectdata.0* %26, i32 0, i32 2
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %27, align 8
  store %struct.Curl_easy* %28, %struct.Curl_easy** %15, align 8
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %30 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %16, align 8
  %33 = load i64, i64* @CURLE_OK, align 8
  store i64 %33, i64* %17, align 8
  %34 = load i32*, i32** %8, align 8
  store i32 0, i32* %34, align 4
  %35 = load i64*, i64** %9, align 8
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %38 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %43 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %41 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %399, %4
  %50 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %51 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %54 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %52, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* %17, align 8
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ false, %59 ], [ %65, %62 ]
  br label %68

68:                                               ; preds = %66, %49
  %69 = phi i1 [ false, %49 ], [ %67, %66 ]
  br i1 %69, label %70, label %400

70:                                               ; preds = %68
  %71 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %72 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %115

75:                                               ; preds = %70
  %76 = load i8*, i8** %13, align 8
  %77 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %78 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  %82 = load i8*, i8** %16, align 8
  %83 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %84 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %82, i64 %87
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = icmp ugt i8* %81, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %75
  %92 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %93 = call i32 @failf(%struct.Curl_easy* %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %94 = load i64, i64* @CURLE_RECV_ERROR, align 8
  store i64 %94, i64* %5, align 8
  br label %405

95:                                               ; preds = %75
  %96 = load i8*, i8** %13, align 8
  %97 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %98 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %101 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @memcpy(i8* %96, i8* %99, i32 %102)
  %104 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %105 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %12, align 4
  %107 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %108 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %112 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %111, i32 0, i32 2
  store i8* null, i8** %112, align 8
  %113 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %114 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %113, i32 0, i32 3
  store i32 0, i32* %114, align 8
  br label %175

115:                                              ; preds = %70
  %116 = load i8*, i8** %13, align 8
  %117 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %118 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %116, i64 %121
  %123 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %124 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 0, %125
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  %128 = load i8*, i8** %16, align 8
  %129 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %130 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %128, i64 %133
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = icmp ule i8* %127, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @DEBUGASSERT(i32 %137)
  %139 = load %struct.connectdata.0*, %struct.connectdata.0** %14, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i8*, i8** %13, align 8
  %142 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %143 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %148 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = sub i64 %146, %149
  %151 = call i64 @Curl_read(%struct.connectdata.0* %139, i32 %140, i8* %141, i64 %150, i32* %12)
  store i64 %151, i64* %17, align 8
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* @CURLE_AGAIN, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %115
  %156 = load i64, i64* @CURLE_OK, align 8
  store i64 %156, i64* %5, align 8
  br label %405

157:                                              ; preds = %115
  %158 = load i64, i64* %17, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %12, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i64 @Curl_convert_from_network(%struct.Curl_easy* %164, i8* %165, i32 %166)
  store i64 %167, i64* %17, align 8
  br label %168

168:                                              ; preds = %163, %160, %157
  %169 = load i64, i64* %17, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i8*, i8** @FALSE, align 8
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* %11, align 4
  br label %174

174:                                              ; preds = %171, %168
  br label %175

175:                                              ; preds = %174, %95
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  br label %399

179:                                              ; preds = %175
  %180 = load i32, i32* %12, align 4
  %181 = icmp sle i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load i8*, i8** @FALSE, align 8
  %184 = ptrtoint i8* %183 to i32
  store i32 %184, i32* %11, align 4
  %185 = load i64, i64* @CURLE_RECV_ERROR, align 8
  store i64 %185, i64* %17, align 8
  %186 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %187 = call i32 @failf(%struct.Curl_easy* %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %398

188:                                              ; preds = %179
  store i32 0, i32* %19, align 4
  %189 = load i8*, i8** @FALSE, align 8
  %190 = ptrtoint i8* %189 to i32
  store i32 %190, i32* %20, align 4
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %194 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, %192
  store i64 %197, i64* %195, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %201 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, %199
  store i64 %203, i64* %201, align 8
  store i32 0, i32* %18, align 4
  br label %204

204:                                              ; preds = %292, %188
  %205 = load i32, i32* %18, align 4
  %206 = load i32, i32* %12, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %297

208:                                              ; preds = %204
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %10, align 4
  %211 = load i8*, i8** %13, align 8
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 10
  br i1 %214, label %215, label %291

215:                                              ; preds = %208
  %216 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %217 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %215
  %222 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %223 = load i32, i32* @CURLINFO_HEADER_IN, align 4
  %224 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %225 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = call i32 @Curl_debug(%struct.Curl_easy* %222, i32 %223, i8* %226, i64 %228)
  br label %230

230:                                              ; preds = %221, %215
  %231 = load %struct.connectdata.0*, %struct.connectdata.0** %14, align 8
  %232 = load i32, i32* @CLIENTWRITE_HEADER, align 4
  %233 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %234 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = call i64 @Curl_client_write(%struct.connectdata.0* %231, i32 %232, i8* %235, i32 %236)
  store i64 %237, i64* %17, align 8
  %238 = load i64, i64* %17, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %230
  %241 = load i64, i64* %17, align 8
  store i64 %241, i64* %5, align 8
  br label %405

242:                                              ; preds = %230
  %243 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %244 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %243, i32 0, i32 5
  %245 = load i64 (%struct.connectdata*, i8*, i32, i32*)*, i64 (%struct.connectdata*, i8*, i32, i32*)** %244, align 8
  %246 = load %struct.connectdata.0*, %struct.connectdata.0** %14, align 8
  %247 = bitcast %struct.connectdata.0* %246 to %struct.connectdata*
  %248 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %249 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = load i32*, i32** %8, align 8
  %253 = call i64 %245(%struct.connectdata* %247, i8* %250, i32 %251, i32* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %286

255:                                              ; preds = %242
  %256 = load i8*, i8** %13, align 8
  %257 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %258 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = ptrtoint i8* %256 to i64
  %261 = ptrtoint i8* %259 to i64
  %262 = sub i64 %260, %261
  store i64 %262, i64* %21, align 8
  %263 = load i8*, i8** %16, align 8
  %264 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %265 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = load i64, i64* %21, align 8
  %268 = call i32 @memmove(i8* %263, i8* %266, i64 %267)
  %269 = load i8*, i8** %16, align 8
  %270 = load i64, i64* %21, align 8
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8 0, i8* %271, align 1
  %272 = load i8*, i8** @FALSE, align 8
  %273 = ptrtoint i8* %272 to i32
  store i32 %273, i32* %11, align 4
  %274 = load i8*, i8** %13, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  %276 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %277 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %276, i32 0, i32 1
  store i8* %275, i8** %277, align 8
  %278 = load i32, i32* %18, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %18, align 4
  %280 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %281 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64*, i64** %9, align 8
  store i64 %282, i64* %283, align 8
  %284 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %285 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %284, i32 0, i32 0
  store i64 0, i64* %285, align 8
  br label %297

286:                                              ; preds = %242
  store i32 0, i32* %10, align 4
  %287 = load i8*, i8** %13, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  %289 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %290 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %289, i32 0, i32 1
  store i8* %288, i8** %290, align 8
  br label %291

291:                                              ; preds = %286, %208
  br label %292

292:                                              ; preds = %291
  %293 = load i8*, i8** %13, align 8
  %294 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %294, i8** %13, align 8
  %295 = load i32, i32* %18, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %18, align 4
  br label %204

297:                                              ; preds = %255, %204
  %298 = load i32, i32* %11, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %313, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* %18, align 4
  %302 = load i32, i32* %12, align 4
  %303 = icmp ne i32 %301, %302
  br i1 %303, label %304, label %313

304:                                              ; preds = %300
  %305 = load i32, i32* %12, align 4
  %306 = load i32, i32* %18, align 4
  %307 = sub nsw i32 %305, %306
  store i32 %307, i32* %19, align 4
  %308 = load i32, i32* @TRUE, align 4
  store i32 %308, i32* %20, align 4
  %309 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %310 = load i32, i32* %19, align 4
  %311 = call i32 @infof(%struct.Curl_easy* %309, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %310)
  %312 = call i32 @DEBUGF(i32 %311)
  br label %357

313:                                              ; preds = %300, %297
  %314 = load i32, i32* %11, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %349

316:                                              ; preds = %313
  %317 = load i32, i32* %10, align 4
  %318 = load i32, i32* %12, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %333

320:                                              ; preds = %316
  %321 = load i32, i32* %12, align 4
  %322 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %323 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = sdiv i32 %325, 2
  %327 = icmp sgt i32 %321, %326
  br i1 %327, label %328, label %333

328:                                              ; preds = %320
  %329 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %330 = load i32, i32* %12, align 4
  %331 = call i32 @infof(%struct.Curl_easy* %329, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %330)
  %332 = load i32, i32* @TRUE, align 4
  store i32 %332, i32* %20, align 4
  store i32 40, i32* %19, align 4
  br label %348

333:                                              ; preds = %320, %316
  %334 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %335 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %338 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = sext i32 %340 to i64
  %342 = udiv i64 %341, 2
  %343 = icmp ugt i64 %336, %342
  br i1 %343, label %344, label %347

344:                                              ; preds = %333
  %345 = load i32, i32* %10, align 4
  store i32 %345, i32* %19, align 4
  %346 = load i32, i32* @TRUE, align 4
  store i32 %346, i32* %20, align 4
  br label %347

347:                                              ; preds = %344, %333
  br label %348

348:                                              ; preds = %347, %328
  br label %356

349:                                              ; preds = %313
  %350 = load i32, i32* %18, align 4
  %351 = load i32, i32* %12, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %355

353:                                              ; preds = %349
  %354 = load i32, i32* @TRUE, align 4
  store i32 %354, i32* %20, align 4
  br label %355

355:                                              ; preds = %353, %349
  br label %356

356:                                              ; preds = %355, %348
  br label %357

357:                                              ; preds = %356, %304
  %358 = load i32, i32* %19, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %388

360:                                              ; preds = %357
  %361 = load i32, i32* %19, align 4
  %362 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %363 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %362, i32 0, i32 3
  store i32 %361, i32* %363, align 8
  %364 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %365 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  %367 = call i8* @malloc(i32 %366)
  %368 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %369 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %368, i32 0, i32 2
  store i8* %367, i8** %369, align 8
  %370 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %371 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %370, i32 0, i32 2
  %372 = load i8*, i8** %371, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %385

374:                                              ; preds = %360
  %375 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %376 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %375, i32 0, i32 2
  %377 = load i8*, i8** %376, align 8
  %378 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %379 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %378, i32 0, i32 1
  %380 = load i8*, i8** %379, align 8
  %381 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %382 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @memcpy(i8* %377, i8* %380, i32 %383)
  br label %387

385:                                              ; preds = %360
  %386 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %386, i64* %5, align 8
  br label %405

387:                                              ; preds = %374
  br label %388

388:                                              ; preds = %387, %357
  %389 = load i32, i32* %20, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %397

391:                                              ; preds = %388
  %392 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %393 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %392, i32 0, i32 0
  store i64 0, i64* %393, align 8
  %394 = load i8*, i8** %16, align 8
  %395 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %396 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %395, i32 0, i32 1
  store i8* %394, i8** %396, align 8
  store i8* %394, i8** %13, align 8
  store i32 0, i32* %10, align 4
  br label %397

397:                                              ; preds = %391, %388
  br label %398

398:                                              ; preds = %397, %182
  br label %399

399:                                              ; preds = %398, %178
  br label %49

400:                                              ; preds = %68
  %401 = load i8*, i8** @FALSE, align 8
  %402 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %403 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %402, i32 0, i32 4
  store i8* %401, i8** %403, align 8
  %404 = load i64, i64* %17, align 8
  store i64 %404, i64* %5, align 8
  br label %405

405:                                              ; preds = %400, %385, %240, %155, %91
  %406 = load i64, i64* %5, align 8
  ret i64 %406
}

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i64 @Curl_read(%struct.connectdata.0*, i32, i8*, i64, i32*) #1

declare dso_local i64 @Curl_convert_from_network(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @Curl_debug(%struct.Curl_easy*, i32, i8*, i64) #1

declare dso_local i64 @Curl_client_write(%struct.connectdata.0*, i32, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
