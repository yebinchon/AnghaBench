; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_singlesocket.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_singlesocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { i32, i32, i32 (%struct.Curl_easy*, i64, i32, i32, i32)* }
%struct.Curl_easy = type opaque
%struct.Curl_easy.0 = type { i32, i64*, i32* }
%struct.Curl_sh_entry = type { i32, i32, i32, i32, i64, i64 }

@MAX_SOCKSPEREASYHANDLE = common dso_local global i32 0, align 4
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@CURL_POLL_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CURL_POLL_IN = common dso_local global i32 0, align 4
@CURL_POLL_OUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CURLM_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURL_POLL_REMOVE = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_multi*, %struct.Curl_easy.0*)* @singlesocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @singlesocket(%struct.Curl_multi* %0, %struct.Curl_easy.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_multi*, align 8
  %5 = alloca %struct.Curl_easy.0*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Curl_sh_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.Curl_multi* %0, %struct.Curl_multi** %4, align 8
  store %struct.Curl_easy.0* %1, %struct.Curl_easy.0** %5, align 8
  %23 = load i32, i32* @MAX_SOCKSPEREASYHANDLE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %6, align 8
  %26 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  %27 = load i32, i32* @MAX_SOCKSPEREASYHANDLE, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %39, %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MAX_SOCKSPEREASYHANDLE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %26, i64 %37
  store i64 %35, i64* %38, align 8
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %30

42:                                               ; preds = %30
  %43 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %44 = call i32 @multi_getsock(%struct.Curl_easy.0* %43, i64* %26)
  store i32 %44, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %277, %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @MAX_SOCKSPEREASYHANDLE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @GETSOCK_READSOCK(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @GETSOCK_WRITESOCK(i32 %53)
  %55 = or i32 %52, %54
  %56 = and i32 %50, %55
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %49, %45
  %59 = phi i1 [ false, %45 ], [ %57, %49 ]
  br i1 %59, label %60, label %280

60:                                               ; preds = %58
  %61 = load i32, i32* @CURL_POLL_NONE, align 4
  store i32 %61, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %26, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %10, align 8
  %67 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %68 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %67, i32 0, i32 0
  %69 = load i64, i64* %10, align 8
  %70 = call %struct.Curl_sh_entry* @sh_getentry(i32* %68, i64 %69)
  store %struct.Curl_sh_entry* %70, %struct.Curl_sh_entry** %9, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @GETSOCK_READSOCK(i32 %72)
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %60
  %77 = load i32, i32* @CURL_POLL_IN, align 4
  %78 = load i32, i32* %14, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %76, %60
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @GETSOCK_WRITESOCK(i32 %82)
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @CURL_POLL_OUT, align 4
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %29, i64 %93
  store i32 %91, i32* %94, align 4
  %95 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %96 = icmp ne %struct.Curl_sh_entry* %95, null
  br i1 %96, label %97, label %128

97:                                               ; preds = %90
  store i32 0, i32* %18, align 4
  br label %98

98:                                               ; preds = %124, %97
  %99 = load i32, i32* %18, align 4
  %100 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %101 = getelementptr inbounds %struct.Curl_easy.0, %struct.Curl_easy.0* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %98
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %107 = getelementptr inbounds %struct.Curl_easy.0, %struct.Curl_easy.0* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %105, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %104
  %115 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %116 = getelementptr inbounds %struct.Curl_easy.0, %struct.Curl_easy.0* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %17, align 4
  br label %127

123:                                              ; preds = %104
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  br label %98

127:                                              ; preds = %114, %98
  br label %138

128:                                              ; preds = %90
  %129 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %130 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %129, i32 0, i32 0
  %131 = load i64, i64* %10, align 8
  %132 = call %struct.Curl_sh_entry* @sh_addentry(i32* %130, i64 %131)
  store %struct.Curl_sh_entry* %132, %struct.Curl_sh_entry** %9, align 8
  %133 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %134 = icmp ne %struct.Curl_sh_entry* %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* @CURLM_OUT_OF_MEMORY, align 4
  store i32 %136, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %421

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %127
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %186

141:                                              ; preds = %138
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %186

145:                                              ; preds = %141
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* @CURL_POLL_IN, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %152 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, -1
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %150, %145
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* @CURL_POLL_OUT, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %162 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, -1
  store i64 %164, i64* %162, align 8
  br label %165

165:                                              ; preds = %160, %155
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @CURL_POLL_IN, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %172 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %172, align 8
  br label %175

175:                                              ; preds = %170, %165
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* @CURL_POLL_OUT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %182 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %182, align 8
  br label %185

185:                                              ; preds = %180, %175
  br label %224

186:                                              ; preds = %141, %138
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %223, label %189

189:                                              ; preds = %186
  %190 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %191 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* @CURL_POLL_IN, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %189
  %199 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %200 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %200, align 8
  br label %203

203:                                              ; preds = %198, %189
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* @CURL_POLL_OUT, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %210 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %208, %203
  %214 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %215 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %214, i32 0, i32 1
  %216 = bitcast %struct.Curl_easy.0** %5 to i8*
  %217 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %218 = call i32 @Curl_hash_add(i32* %215, i8* %216, i32 8, %struct.Curl_easy.0* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %213
  %221 = load i32, i32* @CURLM_OUT_OF_MEMORY, align 4
  store i32 %221, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %421

222:                                              ; preds = %213
  br label %223

223:                                              ; preds = %222, %186
  br label %224

224:                                              ; preds = %223, %185
  %225 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %226 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = load i32, i32* @CURL_POLL_OUT, align 4
  br label %232

231:                                              ; preds = %224
  br label %232

232:                                              ; preds = %231, %229
  %233 = phi i32 [ %230, %229 ], [ 0, %231 ]
  %234 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %235 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = load i32, i32* @CURL_POLL_IN, align 4
  br label %241

240:                                              ; preds = %232
  br label %241

241:                                              ; preds = %240, %238
  %242 = phi i32 [ %239, %238 ], [ 0, %240 ]
  %243 = or i32 %233, %242
  store i32 %243, i32* %16, align 4
  %244 = load i32, i32* %17, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %241
  %247 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %248 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %16, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  br label %277

253:                                              ; preds = %246, %241
  %254 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %255 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %254, i32 0, i32 2
  %256 = load i32 (%struct.Curl_easy*, i64, i32, i32, i32)*, i32 (%struct.Curl_easy*, i64, i32, i32, i32)** %255, align 8
  %257 = icmp ne i32 (%struct.Curl_easy*, i64, i32, i32, i32)* %256, null
  br i1 %257, label %258, label %273

258:                                              ; preds = %253
  %259 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %260 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %259, i32 0, i32 2
  %261 = load i32 (%struct.Curl_easy*, i64, i32, i32, i32)*, i32 (%struct.Curl_easy*, i64, i32, i32, i32)** %260, align 8
  %262 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %263 = bitcast %struct.Curl_easy.0* %262 to %struct.Curl_easy*
  %264 = load i64, i64* %10, align 8
  %265 = load i32, i32* %16, align 4
  %266 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %267 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %270 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i32 %261(%struct.Curl_easy* %263, i64 %264, i32 %265, i32 %268, i32 %271)
  br label %273

273:                                              ; preds = %258, %253
  %274 = load i32, i32* %16, align 4
  %275 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %276 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  br label %277

277:                                              ; preds = %273, %252
  %278 = load i32, i32* %8, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %8, align 4
  br label %45

280:                                              ; preds = %58
  %281 = load i32, i32* %8, align 4
  store i32 %281, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %282

282:                                              ; preds = %398, %280
  %283 = load i32, i32* %8, align 4
  %284 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %285 = getelementptr inbounds %struct.Curl_easy.0, %struct.Curl_easy.0* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp slt i32 %283, %286
  br i1 %287, label %288, label %401

288:                                              ; preds = %282
  %289 = load i32, i32* @FALSE, align 4
  store i32 %289, i32* %21, align 4
  %290 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %291 = getelementptr inbounds %struct.Curl_easy.0, %struct.Curl_easy.0* %290, i32 0, i32 1
  %292 = load i64*, i64** %291, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %292, i64 %294
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %10, align 8
  store i32 0, i32* %20, align 4
  br label %297

297:                                              ; preds = %311, %288
  %298 = load i32, i32* %20, align 4
  %299 = load i32, i32* %11, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %314

301:                                              ; preds = %297
  %302 = load i64, i64* %10, align 8
  %303 = load i32, i32* %20, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i64, i64* %26, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = icmp eq i64 %302, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %301
  %309 = load i32, i32* @TRUE, align 4
  store i32 %309, i32* %21, align 4
  br label %314

310:                                              ; preds = %301
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %20, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %20, align 4
  br label %297

314:                                              ; preds = %308, %297
  %315 = load i32, i32* %21, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  br label %398

318:                                              ; preds = %314
  %319 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %320 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %319, i32 0, i32 0
  %321 = load i64, i64* %10, align 8
  %322 = call %struct.Curl_sh_entry* @sh_getentry(i32* %320, i64 %321)
  store %struct.Curl_sh_entry* %322, %struct.Curl_sh_entry** %9, align 8
  %323 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %324 = icmp ne %struct.Curl_sh_entry* %323, null
  br i1 %324, label %325, label %397

325:                                              ; preds = %318
  %326 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %327 = getelementptr inbounds %struct.Curl_easy.0, %struct.Curl_easy.0* %326, i32 0, i32 2
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %8, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* %22, align 4
  %333 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %334 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, -1
  store i32 %336, i32* %334, align 4
  %337 = load i32, i32* %22, align 4
  %338 = load i32, i32* @CURL_POLL_OUT, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %325
  %342 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %343 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %342, i32 0, i32 5
  %344 = load i64, i64* %343, align 8
  %345 = add nsw i64 %344, -1
  store i64 %345, i64* %343, align 8
  br label %346

346:                                              ; preds = %341, %325
  %347 = load i32, i32* %22, align 4
  %348 = load i32, i32* @CURL_POLL_IN, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %346
  %352 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %353 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %352, i32 0, i32 4
  %354 = load i64, i64* %353, align 8
  %355 = add nsw i64 %354, -1
  store i64 %355, i64* %353, align 8
  br label %356

356:                                              ; preds = %351, %346
  %357 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %358 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %387, label %361

361:                                              ; preds = %356
  %362 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %363 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %362, i32 0, i32 2
  %364 = load i32 (%struct.Curl_easy*, i64, i32, i32, i32)*, i32 (%struct.Curl_easy*, i64, i32, i32, i32)** %363, align 8
  %365 = icmp ne i32 (%struct.Curl_easy*, i64, i32, i32, i32)* %364, null
  br i1 %365, label %366, label %381

366:                                              ; preds = %361
  %367 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %368 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %367, i32 0, i32 2
  %369 = load i32 (%struct.Curl_easy*, i64, i32, i32, i32)*, i32 (%struct.Curl_easy*, i64, i32, i32, i32)** %368, align 8
  %370 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %371 = bitcast %struct.Curl_easy.0* %370 to %struct.Curl_easy*
  %372 = load i64, i64* %10, align 8
  %373 = load i32, i32* @CURL_POLL_REMOVE, align 4
  %374 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %375 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %378 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = call i32 %369(%struct.Curl_easy* %371, i64 %372, i32 %373, i32 %376, i32 %379)
  br label %381

381:                                              ; preds = %366, %361
  %382 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %383 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %384 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %383, i32 0, i32 0
  %385 = load i64, i64* %10, align 8
  %386 = call i32 @sh_delentry(%struct.Curl_sh_entry* %382, i32* %384, i64 %385)
  br label %396

387:                                              ; preds = %356
  %388 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %9, align 8
  %389 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %388, i32 0, i32 1
  %390 = bitcast %struct.Curl_easy.0** %5 to i8*
  %391 = call i64 @Curl_hash_delete(i32* %389, i8* %390, i32 8)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %387
  %394 = call i32 @DEBUGASSERT(i32* null)
  br label %395

395:                                              ; preds = %393, %387
  br label %396

396:                                              ; preds = %395, %381
  br label %397

397:                                              ; preds = %396, %318
  br label %398

398:                                              ; preds = %397, %317
  %399 = load i32, i32* %8, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %8, align 4
  br label %282

401:                                              ; preds = %282
  %402 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %403 = getelementptr inbounds %struct.Curl_easy.0, %struct.Curl_easy.0* %402, i32 0, i32 1
  %404 = load i64*, i64** %403, align 8
  %405 = bitcast i64* %404 to i32*
  %406 = load i32, i32* %11, align 4
  %407 = sext i32 %406 to i64
  %408 = mul i64 %407, 8
  %409 = call i32 (i32*, ...) @memcpy(i32* %405, i64* %26, i64 %408)
  %410 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %411 = getelementptr inbounds %struct.Curl_easy.0, %struct.Curl_easy.0* %410, i32 0, i32 2
  %412 = load i32*, i32** %411, align 8
  %413 = load i32, i32* %11, align 4
  %414 = sext i32 %413 to i64
  %415 = mul i64 %414, 4
  %416 = call i32 (i32*, ...) @memcpy(i32* %412, i32* %29, i64 %415)
  %417 = load i32, i32* %11, align 4
  %418 = load %struct.Curl_easy.0*, %struct.Curl_easy.0** %5, align 8
  %419 = getelementptr inbounds %struct.Curl_easy.0, %struct.Curl_easy.0* %418, i32 0, i32 0
  store i32 %417, i32* %419, align 8
  %420 = load i32, i32* @CURLM_OK, align 4
  store i32 %420, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %421

421:                                              ; preds = %401, %220, %135
  %422 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %422)
  %423 = load i32, i32* %3, align 4
  ret i32 %423
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @multi_getsock(%struct.Curl_easy.0*, i64*) #2

declare dso_local i32 @GETSOCK_READSOCK(i32) #2

declare dso_local i32 @GETSOCK_WRITESOCK(i32) #2

declare dso_local %struct.Curl_sh_entry* @sh_getentry(i32*, i64) #2

declare dso_local %struct.Curl_sh_entry* @sh_addentry(i32*, i64) #2

declare dso_local i32 @Curl_hash_add(i32*, i8*, i32, %struct.Curl_easy.0*) #2

declare dso_local i32 @sh_delentry(%struct.Curl_sh_entry*, i32*, i64) #2

declare dso_local i64 @Curl_hash_delete(i32*, i8*, i32) #2

declare dso_local i32 @DEBUGASSERT(i32*) #2

declare dso_local i32 @memcpy(i32*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
