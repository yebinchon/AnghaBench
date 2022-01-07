; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_lck_mtx_test_mtx_uncontended_loop_time.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_lck_mtx_test_mtx_uncontended_loop_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_MTX_MAX_STATS = common dso_local global i32 0, align 4
@WARMUP_ITER = common dso_local global i32 0, align 4
@test_mtx = common dso_local global i32 0, align 4
@TEST_MTX_LOCK_STATS = common dso_local global i64 0, align 8
@TEST_MTX_TRY_LOCK_STATS = common dso_local global i64 0, align 8
@TEST_MTX_LOCK_SPIN_STATS = common dso_local global i64 0, align 8
@TEST_MTX_LOCK_SPIN_ALWAYS_STATS = common dso_local global i64 0, align 8
@TEST_MTX_TRY_LOCK_SPIN_STATS = common dso_local global i64 0, align 8
@TEST_MTX_TRY_LOCK_SPIN_ALWAYS_STATS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"total time %llu ns total run time %llu ns \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lck_mtx_test_mtx_uncontended_loop_time(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @TEST_MTX_MAX_STATS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @TEST_MTX_MAX_STATS, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %29, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @WARMUP_ITER, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = call i32 @lck_mtx_lock(i32* @test_mtx)
  %28 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %22

32:                                               ; preds = %22
  %33 = call i64 (...) @thread_get_runtime_self()
  store i64 %33, i64* %12, align 8
  %34 = call i64 (...) @mach_absolute_time()
  store i64 %34, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %42, %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = call i32 @lck_mtx_lock(i32* @test_mtx)
  %41 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %35

45:                                               ; preds = %35
  %46 = call i64 (...) @mach_absolute_time()
  %47 = load i64, i64* %11, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i64, i64* @TEST_MTX_LOCK_STATS, align 8
  %50 = getelementptr inbounds i64, i64* %18, i64 %49
  %51 = call i32 @absolutetime_to_nanoseconds(i64 %48, i64* %50)
  %52 = call i64 (...) @thread_get_runtime_self()
  %53 = load i64, i64* %12, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load i64, i64* @TEST_MTX_LOCK_STATS, align 8
  %56 = getelementptr inbounds i64, i64* %21, i64 %55
  %57 = call i32 @absolutetime_to_nanoseconds(i64 %54, i64* %56)
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %65, %45
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @WARMUP_ITER, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = call i32 @lck_mtx_try_lock(i32* @test_mtx)
  %64 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %58

68:                                               ; preds = %58
  %69 = call i64 (...) @thread_get_runtime_self()
  store i64 %69, i64* %12, align 8
  %70 = call i64 (...) @mach_absolute_time()
  store i64 %70, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %78, %68
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = call i32 @lck_mtx_try_lock(i32* @test_mtx)
  %77 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %71

81:                                               ; preds = %71
  %82 = call i64 (...) @mach_absolute_time()
  %83 = load i64, i64* %11, align 8
  %84 = sub nsw i64 %82, %83
  %85 = load i64, i64* @TEST_MTX_TRY_LOCK_STATS, align 8
  %86 = getelementptr inbounds i64, i64* %18, i64 %85
  %87 = call i32 @absolutetime_to_nanoseconds(i64 %84, i64* %86)
  %88 = call i64 (...) @thread_get_runtime_self()
  %89 = load i64, i64* %12, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i64, i64* @TEST_MTX_TRY_LOCK_STATS, align 8
  %92 = getelementptr inbounds i64, i64* %21, i64 %91
  %93 = call i32 @absolutetime_to_nanoseconds(i64 %90, i64* %92)
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %101, %81
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @WARMUP_ITER, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = call i32 @lck_mtx_lock_spin(i32* @test_mtx)
  %100 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  br label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %94

104:                                              ; preds = %94
  %105 = call i64 (...) @thread_get_runtime_self()
  store i64 %105, i64* %12, align 8
  %106 = call i64 (...) @mach_absolute_time()
  store i64 %106, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %114, %104
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = call i32 @lck_mtx_lock_spin(i32* @test_mtx)
  %113 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %107

117:                                              ; preds = %107
  %118 = call i64 (...) @mach_absolute_time()
  %119 = load i64, i64* %11, align 8
  %120 = sub nsw i64 %118, %119
  %121 = load i64, i64* @TEST_MTX_LOCK_SPIN_STATS, align 8
  %122 = getelementptr inbounds i64, i64* %18, i64 %121
  %123 = call i32 @absolutetime_to_nanoseconds(i64 %120, i64* %122)
  %124 = call i64 (...) @thread_get_runtime_self()
  %125 = load i64, i64* %12, align 8
  %126 = sub nsw i64 %124, %125
  %127 = load i64, i64* @TEST_MTX_LOCK_SPIN_STATS, align 8
  %128 = getelementptr inbounds i64, i64* %21, i64 %127
  %129 = call i32 @absolutetime_to_nanoseconds(i64 %126, i64* %128)
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %137, %117
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @WARMUP_ITER, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = call i32 @lck_mtx_lock_spin_always(i32* @test_mtx)
  %136 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  br label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %130

140:                                              ; preds = %130
  %141 = call i64 (...) @thread_get_runtime_self()
  store i64 %141, i64* %12, align 8
  %142 = call i64 (...) @mach_absolute_time()
  store i64 %142, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %150, %140
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %4, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = call i32 @lck_mtx_lock_spin_always(i32* @test_mtx)
  %149 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  br label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %143

153:                                              ; preds = %143
  %154 = call i64 (...) @mach_absolute_time()
  %155 = load i64, i64* %11, align 8
  %156 = sub nsw i64 %154, %155
  %157 = load i64, i64* @TEST_MTX_LOCK_SPIN_ALWAYS_STATS, align 8
  %158 = getelementptr inbounds i64, i64* %18, i64 %157
  %159 = call i32 @absolutetime_to_nanoseconds(i64 %156, i64* %158)
  %160 = call i64 (...) @thread_get_runtime_self()
  %161 = load i64, i64* %12, align 8
  %162 = sub nsw i64 %160, %161
  %163 = load i64, i64* @TEST_MTX_LOCK_SPIN_ALWAYS_STATS, align 8
  %164 = getelementptr inbounds i64, i64* %21, i64 %163
  %165 = call i32 @absolutetime_to_nanoseconds(i64 %162, i64* %164)
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %173, %153
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @WARMUP_ITER, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = call i32 @lck_mtx_try_lock_spin(i32* @test_mtx)
  %172 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  br label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  br label %166

176:                                              ; preds = %166
  %177 = call i64 (...) @thread_get_runtime_self()
  store i64 %177, i64* %12, align 8
  %178 = call i64 (...) @mach_absolute_time()
  store i64 %178, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %179

179:                                              ; preds = %186, %176
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %4, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = call i32 @lck_mtx_try_lock_spin(i32* @test_mtx)
  %185 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  br label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %179

189:                                              ; preds = %179
  %190 = call i64 (...) @mach_absolute_time()
  %191 = load i64, i64* %11, align 8
  %192 = sub nsw i64 %190, %191
  %193 = load i64, i64* @TEST_MTX_TRY_LOCK_SPIN_STATS, align 8
  %194 = getelementptr inbounds i64, i64* %18, i64 %193
  %195 = call i32 @absolutetime_to_nanoseconds(i64 %192, i64* %194)
  %196 = call i64 (...) @thread_get_runtime_self()
  %197 = load i64, i64* %12, align 8
  %198 = sub nsw i64 %196, %197
  %199 = load i64, i64* @TEST_MTX_TRY_LOCK_SPIN_STATS, align 8
  %200 = getelementptr inbounds i64, i64* %21, i64 %199
  %201 = call i32 @absolutetime_to_nanoseconds(i64 %198, i64* %200)
  store i32 0, i32* %7, align 4
  br label %202

202:                                              ; preds = %209, %189
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @WARMUP_ITER, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = call i32 @lck_mtx_try_lock_spin_always(i32* @test_mtx)
  %208 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  br label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %202

212:                                              ; preds = %202
  %213 = call i64 (...) @thread_get_runtime_self()
  store i64 %213, i64* %12, align 8
  %214 = call i64 (...) @mach_absolute_time()
  store i64 %214, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %215

215:                                              ; preds = %222, %212
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* %4, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %215
  %220 = call i32 @lck_mtx_try_lock_spin_always(i32* @test_mtx)
  %221 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  br label %222

222:                                              ; preds = %219
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %7, align 4
  br label %215

225:                                              ; preds = %215
  %226 = call i64 (...) @mach_absolute_time()
  %227 = load i64, i64* %11, align 8
  %228 = sub nsw i64 %226, %227
  %229 = load i64, i64* @TEST_MTX_TRY_LOCK_SPIN_ALWAYS_STATS, align 8
  %230 = getelementptr inbounds i64, i64* %18, i64 %229
  %231 = call i32 @absolutetime_to_nanoseconds(i64 %228, i64* %230)
  %232 = call i64 (...) @thread_get_runtime_self()
  %233 = load i64, i64* %12, align 8
  %234 = sub nsw i64 %232, %233
  %235 = load i64, i64* @TEST_MTX_TRY_LOCK_SPIN_ALWAYS_STATS, align 8
  %236 = getelementptr inbounds i64, i64* %21, i64 %235
  %237 = call i32 @absolutetime_to_nanoseconds(i64 %234, i64* %236)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %238 = load i8*, i8** %5, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = load i32, i32* %6, align 4
  %243 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %241, i32 %242, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* %6, align 4
  %246 = sub nsw i32 %245, %244
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %14, align 4
  %248 = load i32, i32* %13, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %250

250:                                              ; preds = %301, %225
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @TEST_MTX_MAX_STATS, align 4
  %253 = sub nsw i32 %252, 2
  %254 = icmp slt i32 %251, %253
  br i1 %254, label %255, label %304

255:                                              ; preds = %250
  %256 = load i8*, i8** %5, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %256, i64 %258
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %18, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %21, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %259, i32 %260, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %264, i64 %268)
  store i32 %269, i32* %14, align 4
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* %6, align 4
  %272 = sub nsw i32 %271, %270
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %13, align 4
  %276 = load i32, i32* %7, align 4
  %277 = load i8*, i8** %5, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load i32, i32* %6, align 4
  %282 = call i32 @print_test_mtx_stats_string_name(i32 %276, i8* %280, i32 %281)
  store i32 %282, i32* %14, align 4
  %283 = load i32, i32* %14, align 4
  %284 = load i32, i32* %6, align 4
  %285 = sub nsw i32 %284, %283
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %287, %286
  store i32 %288, i32* %13, align 4
  %289 = load i8*, i8** %5, align 8
  %290 = load i32, i32* %13, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %289, i64 %291
  %293 = load i32, i32* %6, align 4
  %294 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %292, i32 %293, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %294, i32* %14, align 4
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* %6, align 4
  %297 = sub nsw i32 %296, %295
  store i32 %297, i32* %6, align 4
  %298 = load i32, i32* %14, align 4
  %299 = load i32, i32* %13, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %13, align 4
  br label %301

301:                                              ; preds = %255
  %302 = load i32, i32* %7, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %7, align 4
  br label %250

304:                                              ; preds = %250
  %305 = load i32, i32* %13, align 4
  %306 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %306)
  ret i32 %305
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

declare dso_local i64 @thread_get_runtime_self(...) #2

declare dso_local i64 @mach_absolute_time(...) #2

declare dso_local i32 @absolutetime_to_nanoseconds(i64, i64*) #2

declare dso_local i32 @lck_mtx_try_lock(i32*) #2

declare dso_local i32 @lck_mtx_lock_spin(i32*) #2

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #2

declare dso_local i32 @lck_mtx_try_lock_spin(i32*) #2

declare dso_local i32 @lck_mtx_try_lock_spin_always(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @print_test_mtx_stats_string_name(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
