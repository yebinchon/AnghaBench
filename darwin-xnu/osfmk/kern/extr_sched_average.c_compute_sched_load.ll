; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_average.c_compute_sched_load.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_average.c_compute_sched_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processor_avail_count = common dso_local global i64 0, align 8
@TH_BUCKET_MAX = common dso_local global i32 0, align 4
@sched_run_buckets = common dso_local global i64* null, align 8
@TH_BUCKET_RUN = common dso_local global i64 0, align 8
@TH_BUCKET_FIXPRI = common dso_local global i64 0, align 8
@TH_BUCKET_SHARE_FG = common dso_local global i64 0, align 8
@TH_BUCKET_SHARE_DF = common dso_local global i64 0, align 8
@TH_BUCKET_SHARE_UT = common dso_local global i64 0, align 8
@TH_BUCKET_SHARE_BG = common dso_local global i64 0, align 8
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_MACH_SCHED = common dso_local global i32 0, align 4
@MACH_SCHED_LOAD = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@MAX_LOAD = common dso_local global i64 0, align 8
@sched_load = common dso_local global i64* null, align 8
@SCHED_LOAD_EWMA_ALPHA_OLD = common dso_local global i64 0, align 8
@SCHED_LOAD_EWMA_ALPHA_SHIFT = common dso_local global i64 0, align 8
@SCHED_LOAD_EWMA_ALPHA_NEW = common dso_local global i64 0, align 8
@MACH_SCHED_LOAD_EFFECTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_sched_load() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = load i64, i64* @processor_avail_count, align 8
  store i64 %10, i64* %1, align 8
  %11 = load i32, i32* @TH_BUCKET_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %2, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %15 = load i64*, i64** @sched_run_buckets, align 8
  %16 = load i64, i64* @TH_BUCKET_RUN, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TH_BUCKET_RUN, align 8
  %20 = getelementptr inbounds i64, i64* %14, i64 %19
  store i64 %18, i64* %20, align 8
  %21 = load i64*, i64** @sched_run_buckets, align 8
  %22 = load i64, i64* @TH_BUCKET_FIXPRI, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TH_BUCKET_FIXPRI, align 8
  %26 = getelementptr inbounds i64, i64* %14, i64 %25
  store i64 %24, i64* %26, align 8
  %27 = load i64*, i64** @sched_run_buckets, align 8
  %28 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  %32 = getelementptr inbounds i64, i64* %14, i64 %31
  store i64 %30, i64* %32, align 8
  %33 = load i64*, i64** @sched_run_buckets, align 8
  %34 = load i64, i64* @TH_BUCKET_SHARE_DF, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TH_BUCKET_SHARE_DF, align 8
  %38 = getelementptr inbounds i64, i64* %14, i64 %37
  store i64 %36, i64* %38, align 8
  %39 = load i64*, i64** @sched_run_buckets, align 8
  %40 = load i64, i64* @TH_BUCKET_SHARE_UT, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TH_BUCKET_SHARE_UT, align 8
  %44 = getelementptr inbounds i64, i64* %14, i64 %43
  store i64 %42, i64* %44, align 8
  %45 = load i64*, i64** @sched_run_buckets, align 8
  %46 = load i64, i64* @TH_BUCKET_SHARE_BG, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TH_BUCKET_SHARE_BG, align 8
  %50 = getelementptr inbounds i64, i64* %14, i64 %49
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* @TH_BUCKET_RUN, align 8
  %52 = getelementptr inbounds i64, i64* %14, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp uge i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i64, i64* @TH_BUCKET_FIXPRI, align 8
  %58 = getelementptr inbounds i64, i64* %14, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp uge i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i64, i64* @TH_BUCKET_RUN, align 8
  %64 = getelementptr inbounds i64, i64* %14, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* @TH_BUCKET_FIXPRI, align 8
  %67 = getelementptr inbounds i64, i64* %14, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %5, align 8
  %69 = load i32, i32* @KDEBUG_TRACE, align 4
  %70 = load i32, i32* @DBG_MACH_SCHED, align 4
  %71 = load i32, i32* @MACH_SCHED_LOAD, align 4
  %72 = call i32 @MACHDBG_CODE(i32 %70, i32 %71)
  %73 = load i32, i32* @DBG_FUNC_NONE, align 4
  %74 = or i32 %72, %73
  %75 = load i64, i64* @TH_BUCKET_FIXPRI, align 8
  %76 = getelementptr inbounds i64, i64* %14, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  %79 = getelementptr inbounds i64, i64* %14, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TH_BUCKET_SHARE_DF, align 8
  %82 = getelementptr inbounds i64, i64* %14, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %80, %83
  %85 = load i64, i64* @TH_BUCKET_SHARE_BG, align 8
  %86 = getelementptr inbounds i64, i64* %14, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TH_BUCKET_SHARE_UT, align 8
  %89 = getelementptr inbounds i64, i64* %14, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %69, i32 %74, i64 %77, i64 %84, i64 %87, i64 %90, i32 0)
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* %5, align 8
  %94 = sub i64 %92, %93
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %111, %0
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @TH_BUCKET_SHARE_BG, align 8
  %99 = icmp ule i64 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds i64, i64* %14, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds i64, i64* %14, i64 %108
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %106, %100
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %7, align 8
  br label %96

114:                                              ; preds = %96
  %115 = load i64, i64* @TH_BUCKET_SHARE_DF, align 8
  %116 = getelementptr inbounds i64, i64* %14, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %1, align 8
  %119 = mul i64 %118, 2
  %120 = icmp ule i64 %117, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %114
  %122 = load i64, i64* @TH_BUCKET_SHARE_DF, align 8
  %123 = getelementptr inbounds i64, i64* %14, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  %126 = getelementptr inbounds i64, i64* %14, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, %124
  store i64 %128, i64* %126, align 8
  br label %136

129:                                              ; preds = %114
  %130 = load i64, i64* %1, align 8
  %131 = mul i64 %130, 2
  %132 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  %133 = getelementptr inbounds i64, i64* %14, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, %131
  store i64 %135, i64* %133, align 8
  br label %136

136:                                              ; preds = %129, %121
  %137 = load i64, i64* @TH_BUCKET_SHARE_UT, align 8
  %138 = getelementptr inbounds i64, i64* %14, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %1, align 8
  %141 = icmp ule i64 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %136
  %143 = load i64, i64* @TH_BUCKET_SHARE_UT, align 8
  %144 = getelementptr inbounds i64, i64* %14, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  %147 = getelementptr inbounds i64, i64* %14, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, %145
  store i64 %149, i64* %147, align 8
  %150 = load i64, i64* @TH_BUCKET_SHARE_UT, align 8
  %151 = getelementptr inbounds i64, i64* %14, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TH_BUCKET_SHARE_DF, align 8
  %154 = getelementptr inbounds i64, i64* %14, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, %152
  store i64 %156, i64* %154, align 8
  br label %168

157:                                              ; preds = %136
  %158 = load i64, i64* %1, align 8
  %159 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  %160 = getelementptr inbounds i64, i64* %14, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, %158
  store i64 %162, i64* %160, align 8
  %163 = load i64, i64* %1, align 8
  %164 = load i64, i64* @TH_BUCKET_SHARE_DF, align 8
  %165 = getelementptr inbounds i64, i64* %14, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %166, %163
  store i64 %167, i64* %165, align 8
  br label %168

168:                                              ; preds = %157, %142
  %169 = load i64, i64* @TH_BUCKET_SHARE_BG, align 8
  %170 = getelementptr inbounds i64, i64* %14, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = icmp ugt i64 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %168
  %174 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  %175 = getelementptr inbounds i64, i64* %14, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %175, align 8
  %178 = load i64, i64* @TH_BUCKET_SHARE_DF, align 8
  %179 = getelementptr inbounds i64, i64* %14, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %179, align 8
  %182 = load i64, i64* @TH_BUCKET_SHARE_UT, align 8
  %183 = getelementptr inbounds i64, i64* %14, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %183, align 8
  br label %186

186:                                              ; preds = %173, %168
  %187 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  store i64 %187, i64* %8, align 8
  br label %188

188:                                              ; preds = %243, %186
  %189 = load i64, i64* %8, align 8
  %190 = load i64, i64* @TH_BUCKET_SHARE_BG, align 8
  %191 = icmp ule i64 %189, %190
  br i1 %191, label %192, label %246

192:                                              ; preds = %188
  store i64 0, i64* %9, align 8
  %193 = load i64, i64* %8, align 8
  %194 = getelementptr inbounds i64, i64* %14, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %1, align 8
  %197 = icmp ugt i64 %195, %196
  br i1 %197, label %198, label %218

198:                                              ; preds = %192
  %199 = load i64, i64* %1, align 8
  %200 = icmp ugt i64 %199, 1
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load i64, i64* %8, align 8
  %203 = getelementptr inbounds i64, i64* %14, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %1, align 8
  %206 = udiv i64 %204, %205
  store i64 %206, i64* %9, align 8
  br label %211

207:                                              ; preds = %198
  %208 = load i64, i64* %8, align 8
  %209 = getelementptr inbounds i64, i64* %14, i64 %208
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %9, align 8
  br label %211

211:                                              ; preds = %207, %201
  %212 = load i64, i64* %9, align 8
  %213 = load i64, i64* @MAX_LOAD, align 8
  %214 = icmp ugt i64 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = load i64, i64* @MAX_LOAD, align 8
  store i64 %216, i64* %9, align 8
  br label %217

217:                                              ; preds = %215, %211
  br label %218

218:                                              ; preds = %217, %192
  %219 = load i64*, i64** @sched_load, align 8
  %220 = load i64, i64* %8, align 8
  %221 = getelementptr inbounds i64, i64* %219, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @SCHED_LOAD_EWMA_ALPHA_OLD, align 8
  %224 = mul i64 %222, %223
  %225 = load i64, i64* %9, align 8
  %226 = load i64, i64* @SCHED_LOAD_EWMA_ALPHA_SHIFT, align 8
  %227 = shl i64 %225, %226
  %228 = load i64, i64* @SCHED_LOAD_EWMA_ALPHA_NEW, align 8
  %229 = mul i64 %227, %228
  %230 = add i64 %224, %229
  %231 = load i64*, i64** @sched_load, align 8
  %232 = load i64, i64* %8, align 8
  %233 = getelementptr inbounds i64, i64* %231, i64 %232
  store i64 %230, i64* %233, align 8
  %234 = load i64*, i64** @sched_load, align 8
  %235 = load i64, i64* %8, align 8
  %236 = getelementptr inbounds i64, i64* %234, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @SCHED_LOAD_EWMA_ALPHA_SHIFT, align 8
  %239 = lshr i64 %237, %238
  %240 = load i64*, i64** @sched_load, align 8
  %241 = load i64, i64* %8, align 8
  %242 = getelementptr inbounds i64, i64* %240, i64 %241
  store i64 %239, i64* %242, align 8
  br label %243

243:                                              ; preds = %218
  %244 = load i64, i64* %8, align 8
  %245 = add i64 %244, 1
  store i64 %245, i64* %8, align 8
  br label %188

246:                                              ; preds = %188
  %247 = load i32, i32* @KDEBUG_TRACE, align 4
  %248 = load i32, i32* @DBG_MACH_SCHED, align 4
  %249 = load i32, i32* @MACH_SCHED_LOAD_EFFECTIVE, align 4
  %250 = call i32 @MACHDBG_CODE(i32 %248, i32 %249)
  %251 = load i32, i32* @DBG_FUNC_NONE, align 4
  %252 = or i32 %250, %251
  %253 = load i64*, i64** @sched_load, align 8
  %254 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  %255 = getelementptr inbounds i64, i64* %253, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = call i64 @SCHED_LOAD_EWMA_UNSCALE(i64 %256)
  %258 = load i64*, i64** @sched_load, align 8
  %259 = load i64, i64* @TH_BUCKET_SHARE_DF, align 8
  %260 = getelementptr inbounds i64, i64* %258, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = call i64 @SCHED_LOAD_EWMA_UNSCALE(i64 %261)
  %263 = load i64*, i64** @sched_load, align 8
  %264 = load i64, i64* @TH_BUCKET_SHARE_UT, align 8
  %265 = getelementptr inbounds i64, i64* %263, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = call i64 @SCHED_LOAD_EWMA_UNSCALE(i64 %266)
  %268 = load i64*, i64** @sched_load, align 8
  %269 = load i64, i64* @TH_BUCKET_SHARE_BG, align 8
  %270 = getelementptr inbounds i64, i64* %268, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = call i64 @SCHED_LOAD_EWMA_UNSCALE(i64 %271)
  %273 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %247, i32 %252, i64 %257, i64 %262, i64 %267, i64 %272, i32 0)
  %274 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %274)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i64, i64, i64, i64, i32) #2

declare dso_local i32 @MACHDBG_CODE(i32, i32) #2

declare dso_local i64 @SCHED_LOAD_EWMA_UNSCALE(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
