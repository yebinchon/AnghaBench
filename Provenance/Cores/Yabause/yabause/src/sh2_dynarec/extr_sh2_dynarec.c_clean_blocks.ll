; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_clean_blocks.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_clean_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_entry = type { i32, %struct.ll_entry*, i64 }

@.str = private unnamed_addr constant [27 x i8] c"INV: clean_blocks page=%d\0A\00", align 1
@jump_dirty = common dso_local global %struct.ll_entry** null, align 8
@cached_code = common dso_local global i32* null, align 8
@out = common dso_local global i64 0, align 8
@TARGET_SIZE_2 = common dso_local global i32 0, align 4
@MAX_OUTPUT_BLOCK_SIZE = common dso_local global i32 0, align 4
@HighWram = common dso_local global i64 0, align 8
@LowWram = common dso_local global i64 0, align 8
@recent_writes = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"INV: Restored %x (%x/%x)\0A\00", align 1
@jump_in = common dso_local global i64 0, align 8
@hash_table = common dso_local global i32** null, align 8
@cached_code_words = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clean_blocks(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ll_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 (i8*, i32, ...) @inv_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.ll_entry**, %struct.ll_entry*** @jump_dirty, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds %struct.ll_entry*, %struct.ll_entry** %15, i64 %16
  %18 = load %struct.ll_entry*, %struct.ll_entry** %17, align 8
  store %struct.ll_entry* %18, %struct.ll_entry** %3, align 8
  br label %19

19:                                               ; preds = %313, %1
  %20 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %21 = icmp ne %struct.ll_entry* %20, null
  br i1 %21, label %22, label %317

22:                                               ; preds = %19
  %23 = load i32*, i32** @cached_code, align 8
  %24 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %25 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 15
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %32 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 12
  %35 = and i32 %34, 7
  %36 = ashr i32 %30, %35
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %313

39:                                               ; preds = %22
  %40 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %41 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @out, align 8
  %44 = sub i64 %42, %43
  %45 = load i32, i32* @TARGET_SIZE_2, align 4
  %46 = sub nsw i32 32, %45
  %47 = zext i32 %46 to i64
  %48 = shl i64 %44, %47
  %49 = load i32, i32* @MAX_OUTPUT_BLOCK_SIZE, align 4
  %50 = load i32, i32* @TARGET_SIZE_2, align 4
  %51 = sub nsw i32 32, %50
  %52 = shl i32 %49, %51
  %53 = add nsw i32 1610612736, %52
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %48, %54
  br i1 %55, label %56, label %312

56:                                               ; preds = %39
  store i64 0, i64* %6, align 8
  %57 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %58 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @verify_dirty(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %311

63:                                               ; preds = %56
  store i64 0, i64* %9, align 8
  %64 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %65 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @get_bounds(i32 %67, i64* %4, i64* %5)
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @HighWram, align 8
  %71 = sub i64 %69, %70
  %72 = icmp ult i64 %71, 1048576
  br i1 %72, label %73, label %114

73:                                               ; preds = %63
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @HighWram, align 8
  %76 = sub i64 %74, %75
  %77 = add i64 %76, 100663296
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @HighWram, align 8
  %80 = sub i64 %78, %79
  %81 = add i64 %80, 100663296
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @HighWram, align 8
  %84 = sub i64 %82, %83
  %85 = add i64 %84, 100663296
  %86 = lshr i64 %85, 12
  store i64 %86, i64* %8, align 8
  br label %87

87:                                               ; preds = %110, %73
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %5, align 8
  %90 = sub i64 %89, 1
  %91 = load i64, i64* @HighWram, align 8
  %92 = sub i64 %90, %91
  %93 = add i64 %92, 100663296
  %94 = lshr i64 %93, 12
  %95 = icmp ule i64 %88, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %87
  %97 = load i32*, i32** @cached_code, align 8
  %98 = load i64, i64* %8, align 8
  %99 = lshr i64 %98, 3
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %8, align 8
  %103 = and i64 %102, 7
  %104 = trunc i64 %103 to i32
  %105 = ashr i32 %101, %104
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %96
  store i64 1, i64* %9, align 8
  br label %109

109:                                              ; preds = %108, %96
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %8, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %8, align 8
  br label %87

113:                                              ; preds = %87
  br label %114

114:                                              ; preds = %113, %63
  %115 = load i64, i64* %4, align 8
  %116 = load i64, i64* @LowWram, align 8
  %117 = sub i64 %115, %116
  %118 = icmp ult i64 %117, 1048576
  br i1 %118, label %119, label %160

119:                                              ; preds = %114
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* @LowWram, align 8
  %122 = sub i64 %120, %121
  %123 = add i64 %122, 2097152
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* @LowWram, align 8
  %126 = sub i64 %124, %125
  %127 = add i64 %126, 2097152
  store i64 %127, i64* %7, align 8
  %128 = load i64, i64* %4, align 8
  %129 = load i64, i64* @LowWram, align 8
  %130 = sub i64 %128, %129
  %131 = add i64 %130, 2097152
  %132 = lshr i64 %131, 12
  store i64 %132, i64* %8, align 8
  br label %133

133:                                              ; preds = %156, %119
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %5, align 8
  %136 = sub i64 %135, 1
  %137 = load i64, i64* @LowWram, align 8
  %138 = sub i64 %136, %137
  %139 = add i64 %138, 2097152
  %140 = lshr i64 %139, 12
  %141 = icmp ule i64 %134, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %133
  %143 = load i32*, i32** @cached_code, align 8
  %144 = load i64, i64* %8, align 8
  %145 = lshr i64 %144, 3
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* %8, align 8
  %149 = and i64 %148, 7
  %150 = trunc i64 %149 to i32
  %151 = ashr i32 %147, %150
  %152 = and i32 %151, 1
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %142
  store i64 1, i64* %9, align 8
  br label %155

155:                                              ; preds = %154, %142
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %8, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %8, align 8
  br label %133

159:                                              ; preds = %133
  br label %160

160:                                              ; preds = %159, %114
  %161 = load i64, i64* %6, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %160
  store i64 0, i64* %8, align 8
  br label %164

164:                                              ; preds = %183, %163
  %165 = load i64, i64* %8, align 8
  %166 = icmp ult i64 %165, 8
  br i1 %166, label %167, label %186

167:                                              ; preds = %164
  %168 = load i64*, i64** @recent_writes, align 8
  %169 = load i64, i64* %8, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %6, align 8
  %173 = icmp uge i64 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %167
  %175 = load i64*, i64** @recent_writes, align 8
  %176 = load i64, i64* %8, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %7, align 8
  %180 = icmp ult i64 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  store i64 1, i64* %9, align 8
  br label %182

182:                                              ; preds = %181, %174, %167
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %8, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %8, align 8
  br label %164

186:                                              ; preds = %164
  br label %187

187:                                              ; preds = %186, %160
  %188 = load i64, i64* %9, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %310, label %190

190:                                              ; preds = %187
  %191 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %192 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = call i64 @get_clean_addr(i32 %194)
  %196 = inttoptr i64 %195 to i8*
  store i8* %196, i8** %10, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = ptrtoint i8* %197 to i64
  %199 = load i64, i64* @out, align 8
  %200 = sub i64 %198, %199
  %201 = load i32, i32* @TARGET_SIZE_2, align 4
  %202 = sub nsw i32 32, %201
  %203 = zext i32 %202 to i64
  %204 = shl i64 %200, %203
  %205 = load i32, i32* @MAX_OUTPUT_BLOCK_SIZE, align 4
  %206 = load i32, i32* @TARGET_SIZE_2, align 4
  %207 = sub nsw i32 32, %206
  %208 = shl i32 %205, %207
  %209 = add nsw i32 1610612736, %208
  %210 = sext i32 %209 to i64
  %211 = icmp ugt i64 %204, %210
  br i1 %211, label %212, label %270

212:                                              ; preds = %190
  %213 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %214 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %217 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = trunc i64 %218 to i32
  %220 = load i8*, i8** %10, align 8
  %221 = ptrtoint i8* %220 to i32
  %222 = call i32 (i8*, i32, ...) @inv_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %215, i32 %219, i32 %221)
  %223 = load i64, i64* @jump_in, align 8
  %224 = load i64, i64* %2, align 8
  %225 = add i64 %223, %224
  %226 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %227 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i8*, i8** %10, align 8
  %230 = call i32 @ll_add_nodup(i64 %225, i32 %228, i8* %229)
  %231 = load i32**, i32*** @hash_table, align 8
  %232 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %233 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = ashr i32 %234, 16
  %236 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %237 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = xor i32 %235, %238
  %240 = and i32 %239, 65535
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %231, i64 %241
  %243 = load i32*, i32** %242, align 8
  store i32* %243, i32** %11, align 8
  %244 = load i32*, i32** %11, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %248 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %246, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %212
  %252 = load i8*, i8** %10, align 8
  %253 = ptrtoint i8* %252 to i32
  %254 = load i32*, i32** %11, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  store i32 %253, i32* %255, align 4
  br label %256

256:                                              ; preds = %251, %212
  %257 = load i32*, i32** %11, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 2
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %261 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp eq i32 %259, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %256
  %265 = load i8*, i8** %10, align 8
  %266 = ptrtoint i8* %265 to i32
  %267 = load i32*, i32** %11, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 3
  store i32 %266, i32* %268, align 4
  br label %269

269:                                              ; preds = %264, %256
  br label %270

270:                                              ; preds = %269, %190
  %271 = load i64, i64* %6, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %309

273:                                              ; preds = %270
  store i64 0, i64* %8, align 8
  br label %274

274:                                              ; preds = %305, %273
  %275 = load i64, i64* %8, align 8
  %276 = load i64, i64* %7, align 8
  %277 = load i64, i64* %6, align 8
  %278 = sub i64 %276, %277
  %279 = icmp ult i64 %275, %278
  br i1 %279, label %280, label %308

280:                                              ; preds = %274
  %281 = load i64, i64* %6, align 8
  %282 = load i64, i64* %8, align 8
  %283 = add i64 %281, %282
  %284 = lshr i64 %283, 2
  %285 = and i64 %284, 7
  %286 = trunc i64 %285 to i32
  %287 = shl i32 1, %286
  %288 = load i32*, i32** @cached_code_words, align 8
  %289 = load i64, i64* %6, align 8
  %290 = icmp ult i64 %289, 4194304
  br i1 %290, label %291, label %293

291:                                              ; preds = %280
  %292 = load i64, i64* %6, align 8
  br label %297

293:                                              ; preds = %280
  %294 = load i64, i64* %6, align 8
  %295 = or i64 %294, 4194304
  %296 = and i64 %295, 8388607
  br label %297

297:                                              ; preds = %293, %291
  %298 = phi i64 [ %292, %291 ], [ %296, %293 ]
  %299 = load i64, i64* %8, align 8
  %300 = add i64 %298, %299
  %301 = lshr i64 %300, 5
  %302 = getelementptr inbounds i32, i32* %288, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %303, %287
  store i32 %304, i32* %302, align 4
  br label %305

305:                                              ; preds = %297
  %306 = load i64, i64* %8, align 8
  %307 = add i64 %306, 4
  store i64 %307, i64* %8, align 8
  br label %274

308:                                              ; preds = %274
  br label %309

309:                                              ; preds = %308, %270
  br label %310

310:                                              ; preds = %309, %187
  br label %311

311:                                              ; preds = %310, %56
  br label %312

312:                                              ; preds = %311, %39
  br label %313

313:                                              ; preds = %312, %22
  %314 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %315 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %314, i32 0, i32 1
  %316 = load %struct.ll_entry*, %struct.ll_entry** %315, align 8
  store %struct.ll_entry* %316, %struct.ll_entry** %3, align 8
  br label %19

317:                                              ; preds = %19
  ret void
}

declare dso_local i32 @inv_debug(i8*, i32, ...) #1

declare dso_local i64 @verify_dirty(i32) #1

declare dso_local i32 @get_bounds(i32, i64*, i64*) #1

declare dso_local i64 @get_clean_addr(i32) #1

declare dso_local i32 @ll_add_nodup(i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
