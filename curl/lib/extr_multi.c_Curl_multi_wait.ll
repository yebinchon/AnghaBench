; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_multi_wait.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_multi_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { %struct.Curl_easy*, i64 }
%struct.Curl_easy = type { %struct.Curl_easy* }
%struct.curl_waitfd = type { i32, i16, i64 }
%struct.pollfd = type { i32, i32, i64 }

@MAX_SOCKSPEREASYHANDLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NUM_POLLS_ON_STACK = common dso_local global i32 0, align 4
@CURLM_BAD_HANDLE = common dso_local global i32 0, align 4
@CURLM_RECURSIVE_API_CALL = common dso_local global i32 0, align 4
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@CURLM_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@CURL_WAIT_POLLIN = common dso_local global i32 0, align 4
@CURL_WAIT_POLLPRI = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@CURL_WAIT_POLLOUT = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_multi*, %struct.curl_waitfd*, i32, i32, i32*, i32)* @Curl_multi_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Curl_multi_wait(%struct.Curl_multi* %0, %struct.curl_waitfd* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_multi*, align 8
  %9 = alloca %struct.curl_waitfd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.Curl_easy*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.pollfd*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i16, align 2
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %8, align 8
  store %struct.curl_waitfd* %1, %struct.curl_waitfd** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %33 = load i32, i32* @MAX_SOCKSPEREASYHANDLE, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %15, align 8
  %36 = alloca i64, i64 %34, align 16
  store i64 %34, i64* %16, align 8
  store i32 0, i32* %19, align 4
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %38 = load i32, i32* @NUM_POLLS_ON_STACK, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca %struct.pollfd, i64 %39, align 16
  store i64 %39, i64* %24, align 8
  %41 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %40, i64 0
  store %struct.pollfd* %41, %struct.pollfd** %25, align 8
  %42 = load %struct.Curl_multi*, %struct.Curl_multi** %8, align 8
  %43 = call i32 @GOOD_MULTI_HANDLE(%struct.Curl_multi* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %6
  %46 = load i32, i32* @CURLM_BAD_HANDLE, align 4
  store i32 %46, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %426

47:                                               ; preds = %6
  %48 = load %struct.Curl_multi*, %struct.Curl_multi** %8, align 8
  %49 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @CURLM_RECURSIVE_API_CALL, align 4
  store i32 %53, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %426

54:                                               ; preds = %47
  %55 = load %struct.Curl_multi*, %struct.Curl_multi** %8, align 8
  %56 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %55, i32 0, i32 0
  %57 = load %struct.Curl_easy*, %struct.Curl_easy** %56, align 8
  store %struct.Curl_easy* %57, %struct.Curl_easy** %14, align 8
  br label %58

58:                                               ; preds = %104, %54
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  %60 = icmp ne %struct.Curl_easy* %59, null
  br i1 %60, label %61, label %108

61:                                               ; preds = %58
  %62 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  %63 = call i32 @multi_getsock(%struct.Curl_easy* %62, i64* %36)
  store i32 %63, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %64

64:                                               ; preds = %101, %61
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* @MAX_SOCKSPEREASYHANDLE, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %104

68:                                               ; preds = %64
  %69 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %69, i64* %27, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @GETSOCK_READSOCK(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load i32, i32* %19, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %18, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %36, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %27, align 8
  br label %82

82:                                               ; preds = %75, %68
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @GETSOCK_WRITESOCK(i32 %84)
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32, i32* %19, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %18, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %36, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %27, align 8
  br label %95

95:                                               ; preds = %88, %82
  %96 = load i64, i64* %27, align 8
  %97 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %104

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %18, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %64

104:                                              ; preds = %99, %64
  %105 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  %106 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %105, i32 0, i32 0
  %107 = load %struct.Curl_easy*, %struct.Curl_easy** %106, align 8
  store %struct.Curl_easy* %107, %struct.Curl_easy** %14, align 8
  br label %58

108:                                              ; preds = %58
  %109 = load %struct.Curl_multi*, %struct.Curl_multi** %8, align 8
  %110 = call i32 @multi_timeout(%struct.Curl_multi* %109, i64* %22)
  %111 = load i64, i64* %22, align 8
  %112 = icmp sge i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i64, i64* %22, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i64, i64* %22, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %118, %113, %108
  %122 = load i32, i32* %19, align 4
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %19, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* @NUM_POLLS_ON_STACK, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %121
  %130 = load i32, i32* %19, align 4
  %131 = zext i32 %130 to i64
  %132 = mul i64 %131, 16
  %133 = trunc i64 %132 to i32
  %134 = call %struct.pollfd* @malloc(i32 %133)
  store %struct.pollfd* %134, %struct.pollfd** %25, align 8
  %135 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %136 = icmp ne %struct.pollfd* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %129
  %138 = load i32, i32* @CURLM_OUT_OF_MEMORY, align 4
  store i32 %138, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %426

139:                                              ; preds = %129
  %140 = load i32, i32* @TRUE, align 4
  store i32 %140, i32* %21, align 4
  br label %141

141:                                              ; preds = %139, %121
  store i32 0, i32* %19, align 4
  %142 = load i32, i32* %20, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %229

144:                                              ; preds = %141
  %145 = load %struct.Curl_multi*, %struct.Curl_multi** %8, align 8
  %146 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %145, i32 0, i32 0
  %147 = load %struct.Curl_easy*, %struct.Curl_easy** %146, align 8
  store %struct.Curl_easy* %147, %struct.Curl_easy** %14, align 8
  br label %148

148:                                              ; preds = %224, %144
  %149 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  %150 = icmp ne %struct.Curl_easy* %149, null
  br i1 %150, label %151, label %228

151:                                              ; preds = %148
  %152 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  %153 = call i32 @multi_getsock(%struct.Curl_easy* %152, i64* %36)
  store i32 %153, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %154

154:                                              ; preds = %221, %151
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* @MAX_SOCKSPEREASYHANDLE, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %224

158:                                              ; preds = %154
  %159 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %159, i64* %28, align 8
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @GETSOCK_READSOCK(i32 %161)
  %163 = and i32 %160, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %187

165:                                              ; preds = %158
  %166 = load i32, i32* %18, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %36, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %171 = load i32, i32* %19, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %170, i64 %172
  %174 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %173, i32 0, i32 2
  store i64 %169, i64* %174, align 8
  %175 = load i32, i32* @POLLIN, align 4
  %176 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %177 = load i32, i32* %19, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %176, i64 %178
  %180 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %179, i32 0, i32 0
  store i32 %175, i32* %180, align 8
  %181 = load i32, i32* %19, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %19, align 4
  %183 = load i32, i32* %18, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %36, i64 %184
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %28, align 8
  br label %187

187:                                              ; preds = %165, %158
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %18, align 4
  %190 = call i32 @GETSOCK_WRITESOCK(i32 %189)
  %191 = and i32 %188, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %215

193:                                              ; preds = %187
  %194 = load i32, i32* %18, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %36, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %199 = load i32, i32* %19, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %198, i64 %200
  %202 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %201, i32 0, i32 2
  store i64 %197, i64* %202, align 8
  %203 = load i32, i32* @POLLOUT, align 4
  %204 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %205 = load i32, i32* %19, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %204, i64 %206
  %208 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %207, i32 0, i32 0
  store i32 %203, i32* %208, align 8
  %209 = load i32, i32* %19, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %19, align 4
  %211 = load i32, i32* %18, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %36, i64 %212
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %28, align 8
  br label %215

215:                                              ; preds = %193, %187
  %216 = load i64, i64* %28, align 8
  %217 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %224

220:                                              ; preds = %215
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %18, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %18, align 4
  br label %154

224:                                              ; preds = %219, %154
  %225 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  %226 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %225, i32 0, i32 0
  %227 = load %struct.Curl_easy*, %struct.Curl_easy** %226, align 8
  store %struct.Curl_easy* %227, %struct.Curl_easy** %14, align 8
  br label %148

228:                                              ; preds = %148
  br label %229

229:                                              ; preds = %228, %141
  store i32 0, i32* %18, align 4
  br label %230

230:                                              ; preds = %310, %229
  %231 = load i32, i32* %18, align 4
  %232 = load i32, i32* %10, align 4
  %233 = icmp ult i32 %231, %232
  br i1 %233, label %234, label %313

234:                                              ; preds = %230
  %235 = load %struct.curl_waitfd*, %struct.curl_waitfd** %9, align 8
  %236 = load i32, i32* %18, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.curl_waitfd, %struct.curl_waitfd* %235, i64 %237
  %239 = getelementptr inbounds %struct.curl_waitfd, %struct.curl_waitfd* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %242 = load i32, i32* %19, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %241, i64 %243
  %245 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %244, i32 0, i32 2
  store i64 %240, i64* %245, align 8
  %246 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %247 = load i32, i32* %19, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %246, i64 %248
  %250 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %249, i32 0, i32 0
  store i32 0, i32* %250, align 8
  %251 = load %struct.curl_waitfd*, %struct.curl_waitfd** %9, align 8
  %252 = load i32, i32* %18, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.curl_waitfd, %struct.curl_waitfd* %251, i64 %253
  %255 = getelementptr inbounds %struct.curl_waitfd, %struct.curl_waitfd* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @CURL_WAIT_POLLIN, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %234
  %261 = load i32, i32* @POLLIN, align 4
  %262 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %263 = load i32, i32* %19, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %262, i64 %264
  %266 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %261
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %260, %234
  %270 = load %struct.curl_waitfd*, %struct.curl_waitfd** %9, align 8
  %271 = load i32, i32* %18, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.curl_waitfd, %struct.curl_waitfd* %270, i64 %272
  %274 = getelementptr inbounds %struct.curl_waitfd, %struct.curl_waitfd* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @CURL_WAIT_POLLPRI, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %269
  %280 = load i32, i32* @POLLPRI, align 4
  %281 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %282 = load i32, i32* %19, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %281, i64 %283
  %285 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %280
  store i32 %287, i32* %285, align 8
  br label %288

288:                                              ; preds = %279, %269
  %289 = load %struct.curl_waitfd*, %struct.curl_waitfd** %9, align 8
  %290 = load i32, i32* %18, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.curl_waitfd, %struct.curl_waitfd* %289, i64 %291
  %293 = getelementptr inbounds %struct.curl_waitfd, %struct.curl_waitfd* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @CURL_WAIT_POLLOUT, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %288
  %299 = load i32, i32* @POLLOUT, align 4
  %300 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %301 = load i32, i32* %19, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %300, i64 %302
  %304 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %299
  store i32 %306, i32* %304, align 8
  br label %307

307:                                              ; preds = %298, %288
  %308 = load i32, i32* %19, align 4
  %309 = add i32 %308, 1
  store i32 %309, i32* %19, align 4
  br label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %18, align 4
  %312 = add i32 %311, 1
  store i32 %312, i32* %18, align 4
  br label %230

313:                                              ; preds = %230
  %314 = load i32, i32* %19, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %382

316:                                              ; preds = %313
  %317 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %318 = load i32, i32* %19, align 4
  %319 = load i32, i32* %11, align 4
  %320 = call i32 @Curl_poll(%struct.pollfd* %317, i32 %318, i32 %319)
  store i32 %320, i32* %29, align 4
  %321 = load i32, i32* %29, align 4
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %381

323:                                              ; preds = %316
  %324 = load i32, i32* %29, align 4
  store i32 %324, i32* %23, align 4
  store i32 0, i32* %18, align 4
  br label %325

325:                                              ; preds = %377, %323
  %326 = load i32, i32* %18, align 4
  %327 = load i32, i32* %10, align 4
  %328 = icmp ult i32 %326, %327
  br i1 %328, label %329, label %380

329:                                              ; preds = %325
  store i16 0, i16* %30, align 2
  %330 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %331 = load i32, i32* %20, align 4
  %332 = load i32, i32* %18, align 4
  %333 = add i32 %331, %332
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %330, i64 %334
  %336 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  store i32 %337, i32* %31, align 4
  %338 = load i32, i32* %31, align 4
  %339 = load i32, i32* @POLLIN, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %329
  %343 = load i32, i32* @CURL_WAIT_POLLIN, align 4
  %344 = load i16, i16* %30, align 2
  %345 = zext i16 %344 to i32
  %346 = or i32 %345, %343
  %347 = trunc i32 %346 to i16
  store i16 %347, i16* %30, align 2
  br label %348

348:                                              ; preds = %342, %329
  %349 = load i32, i32* %31, align 4
  %350 = load i32, i32* @POLLOUT, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %348
  %354 = load i32, i32* @CURL_WAIT_POLLOUT, align 4
  %355 = load i16, i16* %30, align 2
  %356 = zext i16 %355 to i32
  %357 = or i32 %356, %354
  %358 = trunc i32 %357 to i16
  store i16 %358, i16* %30, align 2
  br label %359

359:                                              ; preds = %353, %348
  %360 = load i32, i32* %31, align 4
  %361 = load i32, i32* @POLLPRI, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %359
  %365 = load i32, i32* @CURL_WAIT_POLLPRI, align 4
  %366 = load i16, i16* %30, align 2
  %367 = zext i16 %366 to i32
  %368 = or i32 %367, %365
  %369 = trunc i32 %368 to i16
  store i16 %369, i16* %30, align 2
  br label %370

370:                                              ; preds = %364, %359
  %371 = load i16, i16* %30, align 2
  %372 = load %struct.curl_waitfd*, %struct.curl_waitfd** %9, align 8
  %373 = load i32, i32* %18, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds %struct.curl_waitfd, %struct.curl_waitfd* %372, i64 %374
  %376 = getelementptr inbounds %struct.curl_waitfd, %struct.curl_waitfd* %375, i32 0, i32 1
  store i16 %371, i16* %376, align 4
  br label %377

377:                                              ; preds = %370
  %378 = load i32, i32* %18, align 4
  %379 = add i32 %378, 1
  store i32 %379, i32* %18, align 4
  br label %325

380:                                              ; preds = %325
  br label %381

381:                                              ; preds = %380, %316
  br label %382

382:                                              ; preds = %381, %313
  %383 = load i32, i32* %21, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  %387 = call i32 @free(%struct.pollfd* %386)
  br label %388

388:                                              ; preds = %385, %382
  %389 = load i32*, i32** %12, align 8
  %390 = icmp ne i32* %389, null
  br i1 %390, label %391, label %394

391:                                              ; preds = %388
  %392 = load i32, i32* %23, align 4
  %393 = load i32*, i32** %12, align 8
  store i32 %392, i32* %393, align 4
  br label %394

394:                                              ; preds = %391, %388
  %395 = load i32, i32* %13, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %403

397:                                              ; preds = %394
  %398 = load %struct.curl_waitfd*, %struct.curl_waitfd** %9, align 8
  %399 = icmp ne %struct.curl_waitfd* %398, null
  br i1 %399, label %403, label %400

400:                                              ; preds = %397
  %401 = load i32, i32* %20, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %400, %397, %394
  br label %424

404:                                              ; preds = %400
  store i64 0, i64* %32, align 8
  %405 = load %struct.Curl_multi*, %struct.Curl_multi** %8, align 8
  %406 = call i32 @curl_multi_timeout(%struct.Curl_multi* %405, i64* %32)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %423, label %408

408:                                              ; preds = %404
  %409 = load i64, i64* %32, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %423

411:                                              ; preds = %408
  %412 = load i64, i64* %32, align 8
  %413 = load i32, i32* %11, align 4
  %414 = sext i32 %413 to i64
  %415 = icmp sgt i64 %412, %414
  br i1 %415, label %416, label %419

416:                                              ; preds = %411
  %417 = load i32, i32* %11, align 4
  %418 = sext i32 %417 to i64
  store i64 %418, i64* %32, align 8
  br label %419

419:                                              ; preds = %416, %411
  %420 = load i64, i64* %32, align 8
  %421 = trunc i64 %420 to i32
  %422 = call i32 @Curl_wait_ms(i32 %421)
  br label %423

423:                                              ; preds = %419, %408, %404
  br label %424

424:                                              ; preds = %423, %403
  %425 = load i32, i32* @CURLM_OK, align 4
  store i32 %425, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %426

426:                                              ; preds = %424, %137, %52, %45
  %427 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %427)
  %428 = load i32, i32* %7, align 4
  ret i32 %428
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GOOD_MULTI_HANDLE(%struct.Curl_multi*) #2

declare dso_local i32 @multi_getsock(%struct.Curl_easy*, i64*) #2

declare dso_local i32 @GETSOCK_READSOCK(i32) #2

declare dso_local i32 @GETSOCK_WRITESOCK(i32) #2

declare dso_local i32 @multi_timeout(%struct.Curl_multi*, i64*) #2

declare dso_local %struct.pollfd* @malloc(i32) #2

declare dso_local i32 @Curl_poll(%struct.pollfd*, i32, i32) #2

declare dso_local i32 @free(%struct.pollfd*) #2

declare dso_local i32 @curl_multi_timeout(%struct.Curl_multi*, i64*) #2

declare dso_local i32 @Curl_wait_ms(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
