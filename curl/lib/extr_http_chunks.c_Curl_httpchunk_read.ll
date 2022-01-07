; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http_chunks.c_Curl_httpchunk_read.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http_chunks.c_Curl_httpchunk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64, i32*, i32, %struct.Curl_easy*, %struct.Curl_chunker }
%struct.Curl_easy = type { %struct.TYPE_2__, %struct.SingleRequest }
%struct.TYPE_2__ = type { i64, i32 }
%struct.SingleRequest = type { i32, i32 }
%struct.Curl_chunker = type { i32, i64, i8*, i64, i8* }

@CURLE_OK = common dso_local global i64 0, align 8
@CLIENTWRITE_BODY = common dso_local global i32 0, align 4
@CHUNKE_PASSTHRU_ERROR = common dso_local global i32 0, align 4
@MAXNUM_SIZE = common dso_local global i64 0, align 8
@CHUNKE_TOO_LONG_HEX = common dso_local global i32 0, align 4
@CHUNKE_ILLEGAL_HEX = common dso_local global i32 0, align 4
@CHUNKE_BAD_CHUNK = common dso_local global i32 0, align 4
@CLIENTWRITE_HEADER = common dso_local global i32 0, align 4
@CHUNKE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CHUNKE_STOP = common dso_local global i32 0, align 4
@CHUNKE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_httpchunk_read(%struct.connectdata* %0, i8* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.connectdata*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.Curl_easy*, align 8
  %14 = alloca %struct.Curl_chunker*, align 8
  %15 = alloca %struct.SingleRequest*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %21 = load i64, i64* @CURLE_OK, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %23 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %22, i32 0, i32 3
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %23, align 8
  store %struct.Curl_easy* %24, %struct.Curl_easy** %13, align 8
  %25 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %26 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %25, i32 0, i32 4
  store %struct.Curl_chunker* %26, %struct.Curl_chunker** %14, align 8
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %28 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %27, i32 0, i32 1
  store %struct.SingleRequest* %28, %struct.SingleRequest** %15, align 8
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %17, align 8
  %30 = load i64*, i64** %10, align 8
  store i64* %30, i64** %18, align 8
  %31 = load i64*, i64** %18, align 8
  store i64 0, i64* %31, align 8
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %33 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %5
  %38 = load %struct.SingleRequest*, %struct.SingleRequest** %15, align 8
  %39 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %44 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @Curl_client_write(%struct.connectdata* %43, i32 %44, i8* %45, i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i64, i64* %12, align 8
  %52 = load i64*, i64** %11, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* @CHUNKE_PASSTHRU_ERROR, align 4
  store i32 %53, i32* %6, align 4
  br label %486

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %37, %5
  br label %56

56:                                               ; preds = %483, %55
  %57 = load i64, i64* %17, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %484

59:                                               ; preds = %56
  %60 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %61 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %483 [
    i32 134, label %63
    i32 133, label %140
    i32 135, label %164
    i32 132, label %251
    i32 130, label %272
    i32 129, label %427
    i32 128, label %442
    i32 131, label %468
  ]

63:                                               ; preds = %59
  %64 = load i8*, i8** %8, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @Curl_isxdigit_ascii(i8 signext %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %63
  %69 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %70 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MAXNUM_SIZE, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = load i8, i8* %75, align 1
  %77 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %78 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %81 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 %76, i8* %83, align 1
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  %86 = load i64, i64* %17, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %17, align 8
  %88 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %89 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  br label %94

92:                                               ; preds = %68
  %93 = load i32, i32* @CHUNKE_TOO_LONG_HEX, align 4
  store i32 %93, i32* %6, align 4
  br label %486

94:                                               ; preds = %74
  br label %139

95:                                               ; preds = %63
  %96 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %97 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 0, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @CHUNKE_ILLEGAL_HEX, align 4
  store i32 %101, i32* %6, align 4
  br label %486

102:                                              ; preds = %95
  %103 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %104 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %107 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %111 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %110, i32 0, i32 3
  %112 = load %struct.Curl_easy*, %struct.Curl_easy** %111, align 8
  %113 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %114 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %118 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @Curl_convert_from_network(%struct.Curl_easy* %112, i32* %116, i64 %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %102
  %124 = load i32, i32* @CHUNKE_ILLEGAL_HEX, align 4
  store i32 %124, i32* %6, align 4
  br label %486

125:                                              ; preds = %102
  %126 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %127 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = bitcast i8* %128 to i32*
  %130 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %131 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %130, i32 0, i32 3
  %132 = call i32 @curlx_strtoofft(i32* %129, i8** %19, i32 16, i64* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i32, i32* @CHUNKE_ILLEGAL_HEX, align 4
  store i32 %135, i32* %6, align 4
  br label %486

136:                                              ; preds = %125
  %137 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %138 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %137, i32 0, i32 0
  store i32 133, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %94
  br label %483

140:                                              ; preds = %59
  %141 = load i8*, i8** %8, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 10
  br i1 %144, label %145, label %159

145:                                              ; preds = %140
  %146 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %147 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 0, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %152 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %151, i32 0, i32 0
  store i32 130, i32* %152, align 8
  %153 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %154 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  br label %158

155:                                              ; preds = %145
  %156 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %157 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %156, i32 0, i32 0
  store i32 135, i32* %157, align 8
  br label %158

158:                                              ; preds = %155, %150
  br label %159

159:                                              ; preds = %158, %140
  %160 = load i8*, i8** %8, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %8, align 8
  %162 = load i64, i64* %17, align 8
  %163 = add i64 %162, -1
  store i64 %163, i64* %17, align 8
  br label %483

164:                                              ; preds = %59
  %165 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %166 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %17, align 8
  %169 = icmp uge i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i64, i64* %17, align 8
  br label %176

172:                                              ; preds = %164
  %173 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %174 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  br label %176

176:                                              ; preds = %172, %170
  %177 = phi i64 [ %171, %170 ], [ %175, %172 ]
  %178 = call i8* @curlx_sotouz(i64 %177)
  %179 = ptrtoint i8* %178 to i64
  store i64 %179, i64* %16, align 8
  %180 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %181 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %180, i32 0, i32 3
  %182 = load %struct.Curl_easy*, %struct.Curl_easy** %181, align 8
  %183 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %227, label %187

187:                                              ; preds = %176
  %188 = load %struct.SingleRequest*, %struct.SingleRequest** %15, align 8
  %189 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %227, label %192

192:                                              ; preds = %187
  %193 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %194 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %193, i32 0, i32 3
  %195 = load %struct.Curl_easy*, %struct.Curl_easy** %194, align 8
  %196 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %213, label %200

200:                                              ; preds = %192
  %201 = load %struct.SingleRequest*, %struct.SingleRequest** %15, align 8
  %202 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %200
  %206 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %207 = load %struct.SingleRequest*, %struct.SingleRequest** %15, align 8
  %208 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %8, align 8
  %211 = load i64, i64* %16, align 8
  %212 = call i64 @Curl_unencode_write(%struct.connectdata* %206, i32 %209, i8* %210, i64 %211)
  store i64 %212, i64* %12, align 8
  br label %219

213:                                              ; preds = %200, %192
  %214 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %215 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %216 = load i8*, i8** %8, align 8
  %217 = load i64, i64* %16, align 8
  %218 = call i64 @Curl_client_write(%struct.connectdata* %214, i32 %215, i8* %216, i64 %217)
  store i64 %218, i64* %12, align 8
  br label %219

219:                                              ; preds = %213, %205
  %220 = load i64, i64* %12, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8
  %224 = load i64*, i64** %11, align 8
  store i64 %223, i64* %224, align 8
  %225 = load i32, i32* @CHUNKE_PASSTHRU_ERROR, align 4
  store i32 %225, i32* %6, align 4
  br label %486

226:                                              ; preds = %219
  br label %227

227:                                              ; preds = %226, %187, %176
  %228 = load i64, i64* %16, align 8
  %229 = load i64*, i64** %18, align 8
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, %228
  store i64 %231, i64* %229, align 8
  %232 = load i64, i64* %16, align 8
  %233 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %234 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = sub i64 %235, %232
  store i64 %236, i64* %234, align 8
  %237 = load i64, i64* %16, align 8
  %238 = load i8*, i8** %8, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 %237
  store i8* %239, i8** %8, align 8
  %240 = load i64, i64* %16, align 8
  %241 = load i64, i64* %17, align 8
  %242 = sub i64 %241, %240
  store i64 %242, i64* %17, align 8
  %243 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %244 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 0, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %227
  %248 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %249 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %248, i32 0, i32 0
  store i32 132, i32* %249, align 8
  br label %250

250:                                              ; preds = %247, %227
  br label %483

251:                                              ; preds = %59
  %252 = load i8*, i8** %8, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 10
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %258 = call i32 @Curl_httpchunk_init(%struct.connectdata* %257)
  br label %267

259:                                              ; preds = %251
  %260 = load i8*, i8** %8, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp ne i32 %262, 13
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = load i32, i32* @CHUNKE_BAD_CHUNK, align 4
  store i32 %265, i32* %6, align 4
  br label %486

266:                                              ; preds = %259
  br label %267

267:                                              ; preds = %266, %256
  %268 = load i8*, i8** %8, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %8, align 8
  %270 = load i64, i64* %17, align 8
  %271 = add i64 %270, -1
  store i64 %271, i64* %17, align 8
  br label %483

272:                                              ; preds = %59
  %273 = load i8*, i8** %8, align 8
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 13
  br i1 %276, label %282, label %277

277:                                              ; preds = %272
  %278 = load i8*, i8** %8, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 10
  br i1 %281, label %282, label %364

282:                                              ; preds = %277, %272
  %283 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %284 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %360

287:                                              ; preds = %282
  %288 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %289 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %292 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = add i64 %293, 1
  store i64 %294, i64* %292, align 8
  %295 = getelementptr inbounds i32, i32* %290, i64 %293
  store i32 13, i32* %295, align 4
  %296 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %297 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %300 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = add i64 %301, 1
  store i64 %302, i64* %300, align 8
  %303 = getelementptr inbounds i32, i32* %298, i64 %301
  store i32 10, i32* %303, align 4
  %304 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %305 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %308 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  store i32 0, i32* %310, align 4
  %311 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %312 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %311, i32 0, i32 3
  %313 = load %struct.Curl_easy*, %struct.Curl_easy** %312, align 8
  %314 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %315 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %318 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = call i64 @Curl_convert_from_network(%struct.Curl_easy* %313, i32* %316, i64 %319)
  store i64 %320, i64* %12, align 8
  %321 = load i64, i64* %12, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %287
  %324 = load i32, i32* @CHUNKE_BAD_CHUNK, align 4
  store i32 %324, i32* %6, align 4
  br label %486

325:                                              ; preds = %287
  %326 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %327 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %349, label %331

331:                                              ; preds = %325
  %332 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %333 = load i32, i32* @CLIENTWRITE_HEADER, align 4
  %334 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %335 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %334, i32 0, i32 1
  %336 = load i32*, i32** %335, align 8
  %337 = bitcast i32* %336 to i8*
  %338 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %339 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = call i64 @Curl_client_write(%struct.connectdata* %332, i32 %333, i8* %337, i64 %340)
  store i64 %341, i64* %12, align 8
  %342 = load i64, i64* %12, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %331
  %345 = load i64, i64* %12, align 8
  %346 = load i64*, i64** %11, align 8
  store i64 %345, i64* %346, align 8
  %347 = load i32, i32* @CHUNKE_PASSTHRU_ERROR, align 4
  store i32 %347, i32* %6, align 4
  br label %486

348:                                              ; preds = %331
  br label %349

349:                                              ; preds = %348, %325
  %350 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %351 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %350, i32 0, i32 0
  store i64 0, i64* %351, align 8
  %352 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %353 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %352, i32 0, i32 0
  store i32 129, i32* %353, align 8
  %354 = load i8*, i8** %8, align 8
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 %356, 10
  br i1 %357, label %358, label %359

358:                                              ; preds = %349
  br label %483

359:                                              ; preds = %349
  br label %363

360:                                              ; preds = %282
  %361 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %362 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %361, i32 0, i32 0
  store i32 128, i32* %362, align 8
  br label %483

363:                                              ; preds = %359
  br label %422

364:                                              ; preds = %277
  %365 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %366 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %369 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = sext i32 %370 to i64
  %372 = icmp uge i64 %367, %371
  br i1 %372, label %373, label %410

373:                                              ; preds = %364
  %374 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %375 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %392

378:                                              ; preds = %373
  %379 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %380 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = mul nsw i32 %381, 2
  store i32 %382, i32* %380, align 8
  %383 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %384 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %383, i32 0, i32 1
  %385 = load i32*, i32** %384, align 8
  %386 = bitcast i32* %385 to i8*
  %387 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %388 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %389, 3
  %391 = call i8* @realloc(i8* %386, i32 %390)
  store i8* %391, i8** %20, align 8
  br label %400

392:                                              ; preds = %373
  %393 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %394 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %393, i32 0, i32 2
  store i32 128, i32* %394, align 8
  %395 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %396 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = add nsw i32 %397, 3
  %399 = call i8* @malloc(i32 %398)
  store i8* %399, i8** %20, align 8
  br label %400

400:                                              ; preds = %392, %378
  %401 = load i8*, i8** %20, align 8
  %402 = icmp ne i8* %401, null
  br i1 %402, label %405, label %403

403:                                              ; preds = %400
  %404 = load i32, i32* @CHUNKE_OUT_OF_MEMORY, align 4
  store i32 %404, i32* %6, align 4
  br label %486

405:                                              ; preds = %400
  %406 = load i8*, i8** %20, align 8
  %407 = bitcast i8* %406 to i32*
  %408 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %409 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %408, i32 0, i32 1
  store i32* %407, i32** %409, align 8
  br label %410

410:                                              ; preds = %405, %364
  %411 = load i8*, i8** %8, align 8
  %412 = load i8, i8* %411, align 1
  %413 = sext i8 %412 to i32
  %414 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %415 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %414, i32 0, i32 1
  %416 = load i32*, i32** %415, align 8
  %417 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %418 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = add i64 %419, 1
  store i64 %420, i64* %418, align 8
  %421 = getelementptr inbounds i32, i32* %416, i64 %419
  store i32 %413, i32* %421, align 4
  br label %422

422:                                              ; preds = %410, %363
  %423 = load i8*, i8** %8, align 8
  %424 = getelementptr inbounds i8, i8* %423, i32 1
  store i8* %424, i8** %8, align 8
  %425 = load i64, i64* %17, align 8
  %426 = add i64 %425, -1
  store i64 %426, i64* %17, align 8
  br label %483

427:                                              ; preds = %59
  %428 = load i8*, i8** %8, align 8
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = icmp eq i32 %430, 10
  br i1 %431, label %432, label %439

432:                                              ; preds = %427
  %433 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %434 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %433, i32 0, i32 0
  store i32 128, i32* %434, align 8
  %435 = load i8*, i8** %8, align 8
  %436 = getelementptr inbounds i8, i8* %435, i32 1
  store i8* %436, i8** %8, align 8
  %437 = load i64, i64* %17, align 8
  %438 = add i64 %437, -1
  store i64 %438, i64* %17, align 8
  br label %441

439:                                              ; preds = %427
  %440 = load i32, i32* @CHUNKE_BAD_CHUNK, align 4
  store i32 %440, i32* %6, align 4
  br label %486

441:                                              ; preds = %432
  br label %483

442:                                              ; preds = %59
  %443 = load i8*, i8** %8, align 8
  %444 = load i8, i8* %443, align 1
  %445 = sext i8 %444 to i32
  %446 = icmp ne i32 %445, 13
  br i1 %446, label %447, label %455

447:                                              ; preds = %442
  %448 = load i8*, i8** %8, align 8
  %449 = load i8, i8* %448, align 1
  %450 = sext i8 %449 to i32
  %451 = icmp ne i32 %450, 10
  br i1 %451, label %452, label %455

452:                                              ; preds = %447
  %453 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %454 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %453, i32 0, i32 0
  store i32 130, i32* %454, align 8
  br label %483

455:                                              ; preds = %447, %442
  %456 = load i8*, i8** %8, align 8
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i32
  %459 = icmp eq i32 %458, 13
  br i1 %459, label %460, label %465

460:                                              ; preds = %455
  %461 = load i8*, i8** %8, align 8
  %462 = getelementptr inbounds i8, i8* %461, i32 1
  store i8* %462, i8** %8, align 8
  %463 = load i64, i64* %17, align 8
  %464 = add i64 %463, -1
  store i64 %464, i64* %17, align 8
  br label %465

465:                                              ; preds = %460, %455
  %466 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %467 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %466, i32 0, i32 0
  store i32 131, i32* %467, align 8
  br label %483

468:                                              ; preds = %59
  %469 = load i8*, i8** %8, align 8
  %470 = load i8, i8* %469, align 1
  %471 = sext i8 %470 to i32
  %472 = icmp eq i32 %471, 10
  br i1 %472, label %473, label %481

473:                                              ; preds = %468
  %474 = load i64, i64* %17, align 8
  %475 = add i64 %474, -1
  store i64 %475, i64* %17, align 8
  %476 = load i64, i64* %17, align 8
  %477 = call i8* @curlx_sotouz(i64 %476)
  %478 = load %struct.Curl_chunker*, %struct.Curl_chunker** %14, align 8
  %479 = getelementptr inbounds %struct.Curl_chunker, %struct.Curl_chunker* %478, i32 0, i32 4
  store i8* %477, i8** %479, align 8
  %480 = load i32, i32* @CHUNKE_STOP, align 4
  store i32 %480, i32* %6, align 4
  br label %486

481:                                              ; preds = %468
  %482 = load i32, i32* @CHUNKE_BAD_CHUNK, align 4
  store i32 %482, i32* %6, align 4
  br label %486

483:                                              ; preds = %59, %465, %452, %441, %422, %360, %358, %267, %250, %159, %139
  br label %56

484:                                              ; preds = %56
  %485 = load i32, i32* @CHUNKE_OK, align 4
  store i32 %485, i32* %6, align 4
  br label %486

486:                                              ; preds = %484, %481, %473, %439, %403, %344, %323, %264, %222, %134, %123, %100, %92, %50
  %487 = load i32, i32* %6, align 4
  ret i32 %487
}

declare dso_local i64 @Curl_client_write(%struct.connectdata*, i32, i8*, i64) #1

declare dso_local i32 @Curl_isxdigit_ascii(i8 signext) #1

declare dso_local i64 @Curl_convert_from_network(%struct.Curl_easy*, i32*, i64) #1

declare dso_local i32 @curlx_strtoofft(i32*, i8**, i32, i64*) #1

declare dso_local i8* @curlx_sotouz(i64) #1

declare dso_local i64 @Curl_unencode_write(%struct.connectdata*, i32, i8*, i64) #1

declare dso_local i32 @Curl_httpchunk_init(%struct.connectdata*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
