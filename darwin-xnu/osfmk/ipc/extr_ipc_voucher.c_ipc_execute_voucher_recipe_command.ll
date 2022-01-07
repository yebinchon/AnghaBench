; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_execute_voucher_recipe_command.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_execute_voucher_recipe_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IV_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@MACH_VOUCHER_ATTR_KEY_ALL = common dso_local global i32 0, align 4
@ivgt_keys_in_use = common dso_local global i32 0, align 4
@IV_UNUSED_VALINDEX = common dso_local global i32 0, align 4
@KERN_INVALID_CAPABILITY = common dso_local global i32 0, align 4
@MACH_VOUCHER_ATTR_KEY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, %struct.TYPE_10__*, i64, i32, i32)* @ipc_execute_voucher_recipe_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_execute_voucher_recipe_command(%struct.TYPE_10__* %0, i32 %1, i32 %2, %struct.TYPE_10__* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %304 [
    i32 131, label %30
    i32 129, label %114
    i32 128, label %216
    i32 130, label %243
  ]

30:                                               ; preds = %7
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 0, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %34, i32* %8, align 4
  br label %320

35:                                               ; preds = %30
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IV_NULL, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %38 = icmp eq %struct.TYPE_10__* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %40, i32* %8, align 4
  br label %320

41:                                               ; preds = %35
  %42 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_ALL, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %88

45:                                               ; preds = %41
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  br label %61

57:                                               ; preds = %45
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i32 [ %56, %53 ], [ %60, %57 ]
  store i32 %62, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %63

63:                                               ; preds = %84, %61
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = load i32, i32* %20, align 4
  %70 = call i32 @iv_lookup(%struct.TYPE_10__* %68, i32 %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @ivace_release(i32 %71, i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %75 = load i32, i32* %20, align 4
  %76 = call i32 @iv_lookup(%struct.TYPE_10__* %74, i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @ivace_reference_by_index(i32 %77, i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @iv_set(%struct.TYPE_10__* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %67
  %85 = load i32, i32* %20, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %20, align 4
  br label %63

87:                                               ; preds = %63
  br label %113

88:                                               ; preds = %41
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @iv_key_to_index(i32 %89)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* @ivgt_keys_in_use, align 4
  %92 = load i32, i32* %21, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %95, i32* %8, align 4
  br label %320

96:                                               ; preds = %88
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @iv_lookup(%struct.TYPE_10__* %97, i32 %98)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @ivace_release(i32 %100, i32 %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %104 = load i32, i32* %21, align 4
  %105 = call i32 @iv_lookup(%struct.TYPE_10__* %103, i32 %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @ivace_reference_by_index(i32 %106, i32 %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @iv_set(%struct.TYPE_10__* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %96, %87
  br label %318

114:                                              ; preds = %7
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 0, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %118, i32* %8, align 4
  br label %320

119:                                              ; preds = %114
  %120 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_ALL, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %183

123:                                              ; preds = %119
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IV_NULL, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %126 = icmp eq %struct.TYPE_10__* %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  br label %149

131:                                              ; preds = %123
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %131
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  br label %147

143:                                              ; preds = %131
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi i32 [ %142, %139 ], [ %146, %143 ]
  br label %149

149:                                              ; preds = %147, %127
  %150 = phi i32 [ %130, %127 ], [ %148, %147 ]
  store i32 %150, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %151

151:                                              ; preds = %179, %149
  %152 = load i32, i32* %23, align 4
  %153 = load i32, i32* %22, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %182

155:                                              ; preds = %151
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %157 = load i32, i32* %23, align 4
  %158 = call i32 @iv_lookup(%struct.TYPE_10__* %156, i32 %157)
  store i32 %158, i32* %17, align 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IV_NULL, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %161 = icmp ne %struct.TYPE_10__* %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %155
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %164 = load i32, i32* %23, align 4
  %165 = call i32 @iv_lookup(%struct.TYPE_10__* %163, i32 %164)
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %179

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %155
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* %17, align 4
  %174 = call i32 @ivace_release(i32 %172, i32 %173)
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %176 = load i32, i32* %23, align 4
  %177 = load i32, i32* @IV_UNUSED_VALINDEX, align 4
  %178 = call i32 @iv_set(%struct.TYPE_10__* %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %171, %169
  %180 = load i32, i32* %23, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %23, align 4
  br label %151

182:                                              ; preds = %151
  br label %215

183:                                              ; preds = %119
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @iv_key_to_index(i32 %184)
  store i32 %185, i32* %24, align 4
  %186 = load i32, i32* @ivgt_keys_in_use, align 4
  %187 = load i32, i32* %24, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %190, i32* %8, align 4
  br label %320

191:                                              ; preds = %183
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %193 = load i32, i32* %24, align 4
  %194 = call i32 @iv_lookup(%struct.TYPE_10__* %192, i32 %193)
  store i32 %194, i32* %17, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IV_NULL, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %197 = icmp ne %struct.TYPE_10__* %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %191
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %200 = load i32, i32* %24, align 4
  %201 = call i32 @iv_lookup(%struct.TYPE_10__* %199, i32 %200)
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %16, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  br label %318

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206, %191
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @ivace_release(i32 %208, i32 %209)
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %212 = load i32, i32* %24, align 4
  %213 = load i32, i32* @IV_UNUSED_VALINDEX, align 4
  %214 = call i32 @iv_set(%struct.TYPE_10__* %211, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %207, %182
  br label %318

216:                                              ; preds = %7
  %217 = load i32, i32* %15, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %240

219:                                              ; preds = %216
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = icmp ne i64 4, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %224, i32* %8, align 4
  br label %320

225:                                              ; preds = %219
  %226 = load i64, i64* %13, align 8
  %227 = inttoptr i64 %226 to i8*
  %228 = bitcast i8* %227 to i32*
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %25, align 4
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %25, align 4
  %233 = call i32 @ipc_directly_replace_voucher_value(%struct.TYPE_10__* %230, i32 %231, i32 %232)
  store i32 %233, i32* %18, align 4
  %234 = load i32, i32* @KERN_SUCCESS, align 4
  %235 = load i32, i32* %18, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %225
  %238 = load i32, i32* %18, align 4
  store i32 %238, i32* %8, align 4
  br label %320

239:                                              ; preds = %225
  br label %242

240:                                              ; preds = %216
  %241 = load i32, i32* @KERN_INVALID_CAPABILITY, align 4
  store i32 %241, i32* %8, align 4
  br label %320

242:                                              ; preds = %239
  br label %318

243:                                              ; preds = %7
  %244 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_ALL, align 4
  %245 = load i32, i32* %10, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %303

247:                                              ; preds = %243
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IV_NULL, align 8
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %250 = icmp ne %struct.TYPE_10__* %248, %249
  br i1 %250, label %251, label %269

251:                                              ; preds = %247
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %251
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  br label %267

263:                                              ; preds = %251
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  br label %267

267:                                              ; preds = %263, %259
  %268 = phi i32 [ %262, %259 ], [ %266, %263 ]
  store i32 %268, i32* %26, align 4
  br label %273

269:                                              ; preds = %247
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %26, align 4
  br label %273

273:                                              ; preds = %269, %267
  store i32 0, i32* %27, align 4
  br label %274

274:                                              ; preds = %299, %273
  %275 = load i32, i32* %27, align 4
  %276 = load i32, i32* %26, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %302

278:                                              ; preds = %274
  %279 = load i32, i32* %27, align 4
  %280 = call i32 @iv_index_to_key(i32 %279)
  store i32 %280, i32* %28, align 4
  %281 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_NONE, align 4
  %282 = load i32, i32* %28, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  br label %299

285:                                              ; preds = %278
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %287 = load i32, i32* %28, align 4
  %288 = load i32, i32* %11, align 4
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %290 = load i64, i64* %13, align 8
  %291 = load i32, i32* %14, align 4
  %292 = call i32 @ipc_replace_voucher_value(%struct.TYPE_10__* %286, i32 %287, i32 %288, %struct.TYPE_10__* %289, i64 %290, i32 %291)
  store i32 %292, i32* %18, align 4
  %293 = load i32, i32* @KERN_SUCCESS, align 4
  %294 = load i32, i32* %18, align 4
  %295 = icmp ne i32 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %285
  %297 = load i32, i32* %18, align 4
  store i32 %297, i32* %8, align 4
  br label %320

298:                                              ; preds = %285
  br label %299

299:                                              ; preds = %298, %284
  %300 = load i32, i32* %27, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %27, align 4
  br label %274

302:                                              ; preds = %274
  br label %318

303:                                              ; preds = %243
  br label %304

304:                                              ; preds = %7, %303
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %306 = load i32, i32* %10, align 4
  %307 = load i32, i32* %11, align 4
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %309 = load i64, i64* %13, align 8
  %310 = load i32, i32* %14, align 4
  %311 = call i32 @ipc_replace_voucher_value(%struct.TYPE_10__* %305, i32 %306, i32 %307, %struct.TYPE_10__* %308, i64 %309, i32 %310)
  store i32 %311, i32* %18, align 4
  %312 = load i32, i32* @KERN_SUCCESS, align 4
  %313 = load i32, i32* %18, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %304
  %316 = load i32, i32* %18, align 4
  store i32 %316, i32* %8, align 4
  br label %320

317:                                              ; preds = %304
  br label %318

318:                                              ; preds = %317, %302, %242, %215, %205, %113
  %319 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %319, i32* %8, align 4
  br label %320

320:                                              ; preds = %318, %315, %296, %240, %237, %223, %189, %117, %94, %39, %33
  %321 = load i32, i32* %8, align 4
  ret i32 %321
}

declare dso_local i32 @iv_lookup(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ivace_release(i32, i32) #1

declare dso_local i32 @ivace_reference_by_index(i32, i32) #1

declare dso_local i32 @iv_set(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @iv_key_to_index(i32) #1

declare dso_local i32 @ipc_directly_replace_voucher_value(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @iv_index_to_key(i32) #1

declare dso_local i32 @ipc_replace_voucher_value(%struct.TYPE_10__*, i32, i32, %struct.TYPE_10__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
