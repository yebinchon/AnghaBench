; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_krb5_crypt_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_krb5_crypt_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32, %struct.ccmode_cbc*, %struct.ccmode_cbc* }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.ccmode_cbc = type { i32 }
%struct.crypt_walker_ctx = type { i32, i32 }

@CRYPTO_KS_ALLOCED = common dso_local global i32 0, align 4
@CRYPTO_CTS_ENABLE = common dso_local global i32 0, align 4
@do_crypt = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @krb5_crypt_mbuf(%struct.TYPE_7__* %0, i64* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.crypt_walker_ctx, align 4
  %13 = alloca %struct.ccmode_cbc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32 (%struct.ccmode_cbc*, i32, i32, i64, i32*, i32*)*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  %34 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %33, align 8
  br label %39

35:                                               ; preds = %5
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %37, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi %struct.ccmode_cbc* [ %34, %31 ], [ %38, %35 ]
  store %struct.ccmode_cbc* %40, %struct.ccmode_cbc** %13, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CRYPTO_KS_ALLOCED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %39
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @lck_mtx_lock(i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CRYPTO_KS_ALLOCED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = call i32 @cc_key_schedule_create(%struct.TYPE_7__* %61)
  br label %63

63:                                               ; preds = %60, %49
  %64 = load i32, i32* @CRYPTO_KS_ALLOCED, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @lck_mtx_unlock(i32 %71)
  br label %73

73:                                               ; preds = %63, %39
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %91, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  br label %89

84:                                               ; preds = %76
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  br label %89

89:                                               ; preds = %84, %79
  %90 = phi i32* [ %83, %79 ], [ %88, %84 ]
  store i32* %90, i32** %11, align 8
  br label %91

91:                                               ; preds = %89, %73
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CRYPTO_CTS_ENABLE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %201

98:                                               ; preds = %91
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %201

103:                                              ; preds = %98
  %104 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %105 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = zext i32 %106 to i64
  %108 = call i8* @llvm.stacksave()
  store i8* %108, i8** %19, align 8
  %109 = alloca i32, i64 %107, align 16
  store i64 %107, i64* %20, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %112 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sle i32 %110, %113
  br i1 %114, label %115, label %137

115:                                              ; preds = %103
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %118 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = mul nuw i64 4, %107
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memset(i32* %109, i32 0, i32 %123)
  %125 = load i64*, i64** %8, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %128 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = call i32 @gss_append_mbuf(i64 %126, i32* %109, i64 %130)
  br label %132

132:                                              ; preds = %121, %115
  %133 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %134 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %14, align 8
  br label %199

137:                                              ; preds = %103
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %140 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = srem i32 %138, %141
  store i32 %142, i32* %21, align 4
  %143 = load i32, i32* %21, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load i32, i32* %21, align 4
  %147 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %148 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %146, %149
  br label %156

151:                                              ; preds = %137
  %152 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %153 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 2, %154
  br label %156

156:                                              ; preds = %151, %145
  %157 = phi i32 [ %150, %145 ], [ %155, %151 ]
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %15, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %15, align 8
  %162 = sub i64 %160, %161
  store i64 %162, i64* %14, align 8
  %163 = load i64, i64* %14, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i64*, i64** %8, align 8
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %17, align 8
  br label %198

168:                                              ; preds = %156
  %169 = load i64*, i64** %8, align 8
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @gss_normalize_mbuf(i64 %170, i32 0, i64* %14, i64* %16, i64* %17, i32 0)
  %172 = load i64*, i64** %8, align 8
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %16, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load i64, i64* %14, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %15, align 8
  %182 = sub i64 %180, %181
  %183 = icmp eq i64 %178, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  %186 = load i64, i64* %16, align 8
  %187 = call i64 @gss_mbuf_len(i64 %186, i32 0)
  %188 = load i64, i64* %14, align 8
  %189 = icmp eq i64 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load i64, i64* %17, align 8
  %193 = call i64 @gss_mbuf_len(i64 %192, i32 0)
  %194 = load i64, i64* %15, align 8
  %195 = icmp eq i64 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  br label %198

198:                                              ; preds = %168, %165
  br label %199

199:                                              ; preds = %198, %132
  %200 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %200)
  br label %246

201:                                              ; preds = %98, %91
  %202 = load i32, i32* %9, align 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = srem i32 %202, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %245

208:                                              ; preds = %201
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = zext i32 %211 to i64
  %213 = call i8* @llvm.stacksave()
  store i8* %213, i8** %22, align 8
  %214 = alloca i32, i64 %212, align 16
  store i64 %212, i64* %23, align 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = srem i32 %218, %221
  %223 = sub nsw i32 %217, %222
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %24, align 8
  %225 = load i64, i64* %24, align 8
  %226 = trunc i64 %225 to i32
  %227 = call i32 @memset(i32* %214, i32 0, i32 %226)
  %228 = load i64*, i64** %8, align 8
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %24, align 8
  %231 = call i32 @gss_append_mbuf(i64 %229, i32* %214, i64 %230)
  store i32 %231, i32* %18, align 4
  %232 = load i32, i32* %18, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %208
  %235 = load i32, i32* %18, align 4
  store i32 %235, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %241

236:                                              ; preds = %208
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* %24, align 8
  %240 = add i64 %238, %239
  store i64 %240, i64* %14, align 8
  store i32 0, i32* %25, align 4
  br label %241

241:                                              ; preds = %236, %234
  %242 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i32, i32* %25, align 4
  switch i32 %243, label %335 [
    i32 0, label %244
    i32 1, label %333
  ]

244:                                              ; preds = %241
  br label %245

245:                                              ; preds = %244, %201
  br label %246

246:                                              ; preds = %245, %199
  %247 = load i32, i32* %10, align 4
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %249 = load i32*, i32** %11, align 8
  %250 = call i32 @do_crypt_init(%struct.crypt_walker_ctx* %12, i32 %247, %struct.TYPE_7__* %248, i32* %249)
  %251 = load i64, i64* %14, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %246
  %254 = load i64*, i64** %8, align 8
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %14, align 8
  %257 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %258 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @do_crypt, align 4
  %261 = call i32 @mbuf_walk(i64 %255, i32 0, i64 %256, i32 %259, i32 %260, %struct.crypt_walker_ctx* %12)
  store i32 %261, i32* %18, align 4
  %262 = load i32, i32* %18, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %253
  %265 = load i32, i32* %18, align 4
  store i32 %265, i32* %6, align 4
  br label %333

266:                                              ; preds = %253
  br label %267

267:                                              ; preds = %266, %246
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @CRYPTO_CTS_ENABLE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %328

274:                                              ; preds = %267
  %275 = load i64, i64* %15, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %328

277:                                              ; preds = %274
  %278 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %279 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = mul nsw i32 2, %280
  %282 = zext i32 %281 to i64
  %283 = call i8* @llvm.stacksave()
  store i8* %283, i8** %26, align 8
  %284 = alloca i32, i64 %282, align 16
  store i64 %282, i64* %27, align 8
  %285 = load i32, i32* %10, align 4
  %286 = icmp ne i32 %285, 0
  %287 = zext i1 %286 to i64
  %288 = select i1 %286, i32 (%struct.ccmode_cbc*, i32, i32, i64, i32*, i32*)* @ccpad_cts3_encrypt, i32 (%struct.ccmode_cbc*, i32, i32, i64, i32*, i32*)* @ccpad_cts3_decrypt
  store i32 (%struct.ccmode_cbc*, i32, i32, i64, i32*, i32*)* %288, i32 (%struct.ccmode_cbc*, i32, i32, i64, i32*, i32*)** %28, align 8
  %289 = load i64, i64* %15, align 8
  %290 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %291 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = mul nsw i32 2, %292
  %294 = sext i32 %293 to i64
  %295 = icmp ule i64 %289, %294
  br i1 %295, label %296, label %303

296:                                              ; preds = %277
  %297 = load i64, i64* %15, align 8
  %298 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %299 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = icmp ugt i64 %297, %301
  br label %303

303:                                              ; preds = %296, %277
  %304 = phi i1 [ false, %277 ], [ %302, %296 ]
  %305 = zext i1 %304 to i32
  %306 = call i32 @assert(i32 %305)
  %307 = mul nuw i64 4, %282
  %308 = trunc i64 %307 to i32
  %309 = call i32 @memset(i32* %284, i32 0, i32 %308)
  %310 = load i64, i64* %17, align 8
  %311 = load i64, i64* %15, align 8
  %312 = call i32 @mbuf_copydata(i64 %310, i32 0, i64 %311, i32* %284)
  %313 = load i64, i64* %17, align 8
  %314 = call i32 @mbuf_freem(i64 %313)
  %315 = load i32 (%struct.ccmode_cbc*, i32, i32, i64, i32*, i32*)*, i32 (%struct.ccmode_cbc*, i32, i32, i64, i32*, i32*)** %28, align 8
  %316 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  %317 = getelementptr inbounds %struct.crypt_walker_ctx, %struct.crypt_walker_ctx* %12, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = getelementptr inbounds %struct.crypt_walker_ctx, %struct.crypt_walker_ctx* %12, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i64, i64* %15, align 8
  %322 = call i32 %315(%struct.ccmode_cbc* %316, i32 %318, i32 %320, i64 %321, i32* %284, i32* %284)
  %323 = load i64*, i64** %8, align 8
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* %15, align 8
  %326 = call i32 @gss_append_mbuf(i64 %324, i32* %284, i64 %325)
  %327 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %327)
  br label %328

328:                                              ; preds = %303, %274, %267
  %329 = getelementptr inbounds %struct.crypt_walker_ctx, %struct.crypt_walker_ctx* %12, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @M_TEMP, align 4
  %332 = call i32 @FREE(i32 %330, i32 %331)
  store i32 0, i32* %6, align 4
  br label %333

333:                                              ; preds = %328, %264, %241
  %334 = load i32, i32* %6, align 4
  ret i32 %334

335:                                              ; preds = %241
  unreachable
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @cc_key_schedule_create(%struct.TYPE_7__*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @gss_append_mbuf(i64, i32*, i64) #1

declare dso_local i32 @gss_normalize_mbuf(i64, i32, i64*, i64*, i64*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @gss_mbuf_len(i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @do_crypt_init(%struct.crypt_walker_ctx*, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @mbuf_walk(i64, i32, i64, i32, i32, %struct.crypt_walker_ctx*) #1

declare dso_local i32 @ccpad_cts3_encrypt(%struct.ccmode_cbc*, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @ccpad_cts3_decrypt(%struct.ccmode_cbc*, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @mbuf_copydata(i64, i32, i64, i32*) #1

declare dso_local i32 @mbuf_freem(i64) #1

declare dso_local i32 @FREE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
