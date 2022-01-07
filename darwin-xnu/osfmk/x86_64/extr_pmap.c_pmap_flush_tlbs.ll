; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_flush_tlbs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_flush_tlbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global %struct.TYPE_19__* null, align 8
@processor_avail_count = common dso_local global i32 0, align 4
@PMAP__FLUSH_KERN_TLBS = common dso_local global i32 0, align 4
@PMAP__FLUSH_EPT = common dso_local global i32 0, align 4
@PMAP__FLUSH_TLBS = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@CPUMASK_ALL = common dso_local global i32 0, align 4
@ASYNC = common dso_local global i32 0, align 4
@invept = common dso_local global i32 0, align 4
@pmap_pcid_ncpus = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@real_ncpus = common dso_local global i32 0, align 4
@PMAP_DELAY_TLB_FLUSH = common dso_local global i32 0, align 4
@MP_TLB_FLUSH = common dso_local global i32 0, align 4
@TLBTimeOut = common dso_local global i64 0, align 8
@LockTimeOut = common dso_local global i64 0, align 8
@PMAP__FLUSH_TLBS_TO = common dso_local global i32 0, align 4
@NMIPI_acks = common dso_local global i64 0, align 8
@TLB_FLUSH_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"TLB invalidation IPI timeout, unresponsive CPU bitmap: 0x%llx, NMIPI acks: 0x%lx, now: 0x%lx, deadline: %llu\00", align 1
@.str.1 = private unnamed_addr constant [139 x i8] c"pmap_flush_tlbs: pmap == kernel_pmap && flush_self != TRUE; kernel CR3: 0x%llX, pmap_cr3: 0x%llx, CPU active CR3: 0x%llX, CPU Task Map: %d\00", align 1
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_flush_tlbs(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2, i32 %3, %struct.TYPE_20__* %4) #0 {
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_19__*, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %10, align 8
  store i32 0, i32* %13, align 4
  %29 = call i32 (...) @cpu_number()
  store i32 %29, i32* %14, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %16, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %5
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %41 = icmp eq %struct.TYPE_19__* %39, %40
  br label %42

42:                                               ; preds = %38, %5
  %43 = phi i1 [ true, %5 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %18, align 8
  %46 = load i64, i64* @FALSE, align 8
  store i64 %46, i64* %19, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %48 = call i64 @is_ept_pmap(%struct.TYPE_19__* %47)
  store i64 %48, i64* %23, align 8
  %49 = load i32, i32* @processor_avail_count, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %59, label %51

51:                                               ; preds = %42
  %52 = call i64 (...) @ml_get_interrupts_enabled()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = call i64 (...) @get_preemption_level()
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br label %59

59:                                               ; preds = %57, %42
  %60 = phi i1 [ true, %42 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %65 = icmp eq %struct.TYPE_19__* %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* @PMAP__FLUSH_KERN_TLBS, align 4
  %68 = call i32 @PMAP_CODE(i32 %67)
  store i32 %68, i32* %20, align 4
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %70 = call %struct.TYPE_19__* @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_19__* %69)
  store %struct.TYPE_19__* %70, %struct.TYPE_19__** %21, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %72 = call %struct.TYPE_19__* @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_19__* %71)
  store %struct.TYPE_19__* %72, %struct.TYPE_19__** %22, align 8
  br label %87

73:                                               ; preds = %59
  %74 = load i64, i64* %23, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* @PMAP__FLUSH_EPT, align 4
  %78 = call i32 @PMAP_CODE(i32 %77)
  store i32 %78, i32* %20, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %21, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %22, align 8
  br label %86

81:                                               ; preds = %73
  %82 = load i32, i32* @PMAP__FLUSH_TLBS, align 4
  %83 = call i32 @PMAP_CODE(i32 %82)
  store i32 %83, i32* %20, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %84, %struct.TYPE_19__** %21, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %85, %struct.TYPE_19__** %22, align 8
  br label %86

86:                                               ; preds = %81, %76
  br label %87

87:                                               ; preds = %86, %66
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* @DBG_FUNC_START, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %92 = call %struct.TYPE_19__* @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_19__* %91)
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %96 = call i32 (i32, %struct.TYPE_19__*, i32, ...) @PMAP_TRACE_CONSTANT(i32 %90, %struct.TYPE_19__* %92, i32 %93, %struct.TYPE_19__* %94, %struct.TYPE_19__* %95)
  %97 = load i64, i64* %23, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %87
  %100 = load i32, i32* @CPUMASK_ALL, align 4
  %101 = load i32, i32* @ASYNC, align 4
  %102 = load i32, i32* @invept, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 @mp_cpus_call(i32 %100, i32 %101, i32 %102, i8* %106)
  br label %374

108:                                              ; preds = %87
  %109 = load i64, i64* @pmap_pcid_ncpus, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i64, i64* %18, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i64, i64* @TRUE, align 8
  store i64 %115, i64* %19, align 8
  br label %116

116:                                              ; preds = %114, %111
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %118 = call i32 @pmap_pcid_invalidate_all_cpus(%struct.TYPE_19__* %117)
  %119 = call i32 (...) @mfence()
  br label %120

120:                                              ; preds = %116, %108
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %121

121:                                              ; preds = %216, %120
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @real_ncpus, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %221

125:                                              ; preds = %121
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @cpu_is_running(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  br label %216

130:                                              ; preds = %125
  %131 = load i32, i32* %11, align 4
  %132 = call i64 @CPU_GET_ACTIVE_CR3(i32 %131)
  store i64 %132, i64* %24, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i64 @CPU_GET_TASK_CR3(i32 %133)
  store i64 %134, i64* %25, align 8
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* %25, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %145, label %138

138:                                              ; preds = %130
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* %24, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = load i64, i64* %18, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %215

145:                                              ; preds = %142, %138, %130
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @PMAP_DELAY_TLB_FLUSH, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %145
  %151 = load i64, i64* %19, align 8
  %152 = load i64, i64* @TRUE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %154, %150
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %216

166:                                              ; preds = %145
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i64, i64* @TRUE, align 8
  store i64 %171, i64* %16, align 8
  br label %216

172:                                              ; preds = %166
  %173 = load i64, i64* %19, align 8
  %174 = load i64, i64* @TRUE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = load i64, i64* @TRUE, align 8
  %178 = load i32, i32* %11, align 4
  %179 = call %struct.TYPE_18__* @cpu_datap(i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 2
  store i64 %177, i64* %180, align 8
  br label %186

181:                                              ; preds = %172
  %182 = load i64, i64* @TRUE, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call %struct.TYPE_18__* @cpu_datap(i32 %183)
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  store i64 %182, i64* %185, align 8
  br label %186

186:                                              ; preds = %181, %176
  %187 = call i32 (...) @mfence()
  %188 = load i32, i32* %11, align 4
  %189 = call i64 @CPU_CR3_IS_ACTIVE(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %214

191:                                              ; preds = %186
  %192 = load i64, i64* %15, align 8
  %193 = load i32, i32* %11, align 4
  %194 = call i64 @CPU_GET_ACTIVE_CR3(i32 %193)
  %195 = icmp eq i64 %192, %194
  br i1 %195, label %206, label %196

196:                                              ; preds = %191
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = load i64, i64* %15, align 8
  %203 = load i32, i32* %11, align 4
  %204 = call i64 @CPU_GET_TASK_CR3(i32 %203)
  %205 = icmp eq i64 %202, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %201, %196, %191
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %13, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* @MP_TLB_FLUSH, align 4
  %212 = load i32, i32* @ASYNC, align 4
  %213 = call i32 @i386_signal_cpu(i32 %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %206, %201, %186
  br label %215

215:                                              ; preds = %214, %142
  br label %216

216:                                              ; preds = %215, %170, %160, %129
  %217 = load i32, i32* %11, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %12, align 4
  %220 = shl i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %121

221:                                              ; preds = %121
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @PMAP_DELAY_TLB_FLUSH, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %374

227:                                              ; preds = %221
  %228 = load i64, i64* %16, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %227
  %231 = load i64, i64* @pmap_pcid_ncpus, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %230
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %235 = load i32, i32* %14, align 4
  %236 = call i32 @pmap_pcid_validate_cpu(%struct.TYPE_19__* %234, i32 %235)
  %237 = load i64, i64* %18, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = call i32 (...) @tlb_flush_global()
  br label %243

241:                                              ; preds = %233
  %242 = call i32 (...) @flush_tlb_raw()
  br label %243

243:                                              ; preds = %241, %239
  br label %246

244:                                              ; preds = %230
  %245 = call i32 (...) @flush_tlb_raw()
  br label %246

246:                                              ; preds = %244, %243
  br label %247

247:                                              ; preds = %246, %227
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %347

250:                                              ; preds = %247
  %251 = load i32, i32* %13, align 4
  store i32 %251, i32* %26, align 4
  %252 = call i64 (...) @mach_absolute_time()
  %253 = load i64, i64* @TLBTimeOut, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = load i64, i64* @TLBTimeOut, align 8
  br label %259

257:                                              ; preds = %250
  %258 = load i64, i64* @LockTimeOut, align 8
  br label %259

259:                                              ; preds = %257, %255
  %260 = phi i64 [ %256, %255 ], [ %258, %257 ]
  %261 = add nsw i64 %252, %260
  store i64 %261, i64* %17, align 8
  %262 = load i64, i64* @FALSE, align 8
  store i64 %262, i64* %27, align 8
  br label %263

263:                                              ; preds = %345, %326, %325, %318, %259
  %264 = load i32, i32* %26, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %346

266:                                              ; preds = %263
  store i64 0, i64* %28, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %267

267:                                              ; preds = %303, %266
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @real_ncpus, align 4
  %270 = icmp ult i32 %268, %269
  br i1 %270, label %271, label %308

271:                                              ; preds = %267
  %272 = load i32, i32* %26, align 4
  %273 = load i32, i32* %12, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %298

276:                                              ; preds = %271
  %277 = load i32, i32* %11, align 4
  %278 = call i32 @cpu_is_running(i32 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %291

280:                                              ; preds = %276
  %281 = load i32, i32* %11, align 4
  %282 = call %struct.TYPE_18__* @cpu_datap(i32 %281)
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @FALSE, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %291, label %287

287:                                              ; preds = %280
  %288 = load i32, i32* %11, align 4
  %289 = call i64 @CPU_CR3_IS_ACTIVE(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %287, %280, %276
  %292 = load i32, i32* %12, align 4
  %293 = xor i32 %292, -1
  %294 = load i32, i32* %26, align 4
  %295 = and i32 %294, %293
  store i32 %295, i32* %26, align 4
  br label %296

296:                                              ; preds = %291, %287
  %297 = call i32 (...) @cpu_pause()
  br label %298

298:                                              ; preds = %296, %271
  %299 = load i32, i32* %26, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %298
  br label %308

302:                                              ; preds = %298
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %11, align 4
  %305 = add i32 %304, 1
  store i32 %305, i32* %11, align 4
  %306 = load i32, i32* %12, align 4
  %307 = shl i32 %306, 1
  store i32 %307, i32* %12, align 4
  br label %267

308:                                              ; preds = %301, %267
  %309 = load i32, i32* %26, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %345

311:                                              ; preds = %308
  %312 = call i64 (...) @mach_absolute_time()
  %313 = load i64, i64* %17, align 8
  %314 = icmp sgt i64 %312, %313
  br i1 %314, label %315, label %345

315:                                              ; preds = %311
  %316 = call i64 (...) @machine_timeout_suspended()
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  br label %263

319:                                              ; preds = %315
  %320 = load i64, i64* @TLBTimeOut, align 8
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %335

322:                                              ; preds = %319
  %323 = load i64, i64* %27, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %322
  br label %263

326:                                              ; preds = %322
  %327 = load i32, i32* @PMAP__FLUSH_TLBS_TO, align 4
  %328 = call i32 @PMAP_CODE(i32 %327)
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %330 = call %struct.TYPE_19__* @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_19__* %329)
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* %26, align 4
  %333 = call i32 (i32, %struct.TYPE_19__*, i32, ...) @PMAP_TRACE_CONSTANT(i32 %328, %struct.TYPE_19__* %330, i32 %331, i32 %332)
  %334 = load i64, i64* @TRUE, align 8
  store i64 %334, i64* %27, align 8
  br label %263

335:                                              ; preds = %319
  %336 = load i64, i64* @NMIPI_acks, align 8
  store i64 %336, i64* %28, align 8
  %337 = load i32, i32* %26, align 4
  %338 = load i32, i32* @TLB_FLUSH_TIMEOUT, align 4
  %339 = call i32 @NMIPI_panic(i32 %337, i32 %338)
  %340 = load i32, i32* %26, align 4
  %341 = load i64, i64* %28, align 8
  %342 = load i64, i64* @NMIPI_acks, align 8
  %343 = load i64, i64* %17, align 8
  %344 = call i32 @panic(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i32 %340, i64 %341, i64 %342, i64 %343)
  br label %345

345:                                              ; preds = %335, %311, %308
  br label %263

346:                                              ; preds = %263
  br label %347

347:                                              ; preds = %346, %247
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %350 = icmp eq %struct.TYPE_19__* %348, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %347
  %352 = load i64, i64* %16, align 8
  %353 = load i64, i64* @TRUE, align 8
  %354 = icmp ne i64 %352, %353
  br label %355

355:                                              ; preds = %351, %347
  %356 = phi i1 [ false, %347 ], [ %354, %351 ]
  %357 = zext i1 %356 to i32
  %358 = call i64 @__improbable(i32 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %373

360:                                              ; preds = %355
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = trunc i64 %363 to i32
  %365 = load i64, i64* %15, align 8
  %366 = call %struct.TYPE_17__* (...) @current_cpu_datap()
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = call %struct.TYPE_17__* (...) @current_cpu_datap()
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = call i32 @panic(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.1, i64 0, i64 0), i32 %364, i64 %365, i64 %368, i64 %371)
  br label %373

373:                                              ; preds = %360, %355
  br label %374

374:                                              ; preds = %373, %226, %99
  %375 = load i32, i32* %20, align 4
  %376 = load i32, i32* @DBG_FUNC_END, align 4
  %377 = or i32 %375, %376
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %379 = call %struct.TYPE_19__* @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_19__* %378)
  %380 = load i32, i32* %13, align 4
  %381 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %383 = call i32 (i32, %struct.TYPE_19__*, i32, ...) @PMAP_TRACE_CONSTANT(i32 %377, %struct.TYPE_19__* %379, i32 %380, %struct.TYPE_19__* %381, %struct.TYPE_19__* %382)
  ret void
}

declare dso_local i32 @cpu_number(...) #1

declare dso_local i64 @is_ept_pmap(%struct.TYPE_19__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local i32 @PMAP_CODE(i32) #1

declare dso_local %struct.TYPE_19__* @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_19__*) #1

declare dso_local i32 @PMAP_TRACE_CONSTANT(i32, %struct.TYPE_19__*, i32, ...) #1

declare dso_local i32 @mp_cpus_call(i32, i32, i32, i8*) #1

declare dso_local i32 @pmap_pcid_invalidate_all_cpus(%struct.TYPE_19__*) #1

declare dso_local i32 @mfence(...) #1

declare dso_local i32 @cpu_is_running(i32) #1

declare dso_local i64 @CPU_GET_ACTIVE_CR3(i32) #1

declare dso_local i64 @CPU_GET_TASK_CR3(i32) #1

declare dso_local %struct.TYPE_18__* @cpu_datap(i32) #1

declare dso_local i64 @CPU_CR3_IS_ACTIVE(i32) #1

declare dso_local i32 @i386_signal_cpu(i32, i32, i32) #1

declare dso_local i32 @pmap_pcid_validate_cpu(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @tlb_flush_global(...) #1

declare dso_local i32 @flush_tlb_raw(...) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local i64 @machine_timeout_suspended(...) #1

declare dso_local i32 @NMIPI_panic(i32, i32) #1

declare dso_local i32 @panic(i8*, i32, i64, i64, i64) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local %struct.TYPE_17__* @current_cpu_datap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
