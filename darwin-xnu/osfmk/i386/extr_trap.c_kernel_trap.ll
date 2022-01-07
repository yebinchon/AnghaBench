; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_kernel_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_kernel_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.recovery = type { i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__, i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64 }

@KERN_FAILURE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"kernel_trap(%p) with 32-bit state\00", align 1
@EFL_IF = common dso_local global i32 0, align 4
@VM_MAX_USER_PAGE_ADDRESS = common dso_local global i64 0, align 8
@T_PREEMPT = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_MACH_EXCP_KTRAP_x86 = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global %struct.TYPE_25__* null, align 8
@T_PF_PROT = common dso_local global i32 0, align 4
@T_PF_EXECUTE = common dso_local global i32 0, align 4
@pmap_smep_enabled = common dso_local global i64 0, align 8
@pmap_smap_enabled = common dso_local global i64 0, align 8
@EFL_AC = common dso_local global i32 0, align 4
@no_shared_cr3 = common dso_local global i64 0, align 8
@CopyIOActive = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@EFL_TF = common dso_local global i32 0, align 4
@NO_WATCHPOINTS = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@T_PF_WRITE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@recover_table = common dso_local global %struct.recovery* null, align 8
@recover_table_end = common dso_local global %struct.recovery* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"kernel_trap() ignoring spurious trap 15\0A\00", align 1
@NBPDE = common dso_local global i64 0, align 8
@NCOPY_WINDOWS = common dso_local global i64 0, align 8
@TH_OPT_DTRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_trap(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.recovery*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %9, align 8
  %20 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %21, i64* %11, align 8
  %22 = call i32 (...) @get_preemption_level()
  store i32 %22, i32* %18, align 4
  %23 = call %struct.TYPE_25__* (...) @current_thread()
  store %struct.TYPE_25__* %23, %struct.TYPE_25__** %12, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @is_saved_state32(i32* %24)
  %26 = call i64 @__improbable(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32*, i32** %3, align 8
  %33 = call %struct.TYPE_23__* @saved_state64(i32* %32)
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %5, align 8
  %34 = call i32 (...) @cpu_number()
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 65535
  store i32 %49, i32* %6, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @EFL_IF, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %13, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @VM_MAX_USER_PAGE_ADDRESS, align 8
  %65 = icmp slt i64 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* @T_PREEMPT, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @__improbable(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %31
  %74 = call i32 (...) @ast_taken_kernel()
  %75 = load i32, i32* @KDEBUG_TRACE, align 4
  %76 = load i32, i32* @DBG_MACH_EXCP_KTRAP_x86, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @MACHDBG_CODE(i32 %76, i32 %77)
  %79 = load i32, i32* @DBG_FUNC_NONE, align 4
  %80 = or i32 %78, %79
  %81 = load i64, i64* %16, align 8
  %82 = call i64 @VM_KERNEL_UNSLIDE(i64 %81)
  %83 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %75, i32 %80, i32 0, i32 0, i32 0, i64 %82, i32 0)
  br label %352

84:                                               ; preds = %31
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i64, i64* %7, align 8
  br label %92

89:                                               ; preds = %84
  %90 = load i64, i64* %7, align 8
  %91 = call i64 @VM_KERNEL_UNSLIDE(i64 %90)
  br label %92

92:                                               ; preds = %89, %87
  %93 = phi i64 [ %88, %87 ], [ %91, %89 ]
  store i64 %93, i64* %19, align 8
  %94 = load i32, i32* @KDEBUG_TRACE, align 4
  %95 = load i32, i32* @DBG_MACH_EXCP_KTRAP_x86, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @MACHDBG_CODE(i32 %95, i32 %96)
  %98 = load i32, i32* @DBG_FUNC_NONE, align 4
  %99 = or i32 %97, %98
  %100 = load i64, i64* %19, align 8
  %101 = ashr i64 %100, 32
  %102 = trunc i64 %101 to i32
  %103 = load i64, i64* %19, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* %17, align 4
  %106 = load i64, i64* %16, align 8
  %107 = call i64 @VM_KERNEL_UNSLIDE(i64 %106)
  %108 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %94, i32 %99, i32 %102, i32 %104, i32 %105, i64 %107, i32 0)
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 129, %109
  br i1 %110, label %111, label %235

111:                                              ; preds = %92
  %112 = load i64, i64* @kernel_map, align 8
  %113 = inttoptr i64 %112 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %113, %struct.TYPE_24__** %9, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** @THREAD_NULL, align 8
  %116 = icmp ne %struct.TYPE_25__* %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @kernel_map, align 8
  %122 = icmp ne i64 %120, %121
  br label %123

123:                                              ; preds = %117, %111
  %124 = phi i1 [ false, %111 ], [ %122, %117 ]
  %125 = zext i1 %124 to i32
  %126 = call i64 @__probable(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %234

128:                                              ; preds = %123
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @VM_MAX_USER_PAGE_ADDRESS, align 8
  %131 = icmp slt i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i64 @__probable(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %233

135:                                              ; preds = %128
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %139, %struct.TYPE_24__** %9, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @T_PF_PROT, align 4
  %142 = load i32, i32* @T_PF_EXECUTE, align 4
  %143 = or i32 %141, %142
  %144 = icmp eq i32 %140, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %135
  %146 = load i64, i64* @pmap_smep_enabled, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %7, align 8
  %154 = icmp eq i64 %152, %153
  br label %155

155:                                              ; preds = %148, %145, %135
  %156 = phi i1 [ false, %145 ], [ false, %135 ], [ %154, %148 ]
  %157 = zext i1 %156 to i32
  %158 = call i64 @__improbable(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %343

161:                                              ; preds = %155
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @T_PF_PROT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load i64, i64* @pmap_smap_enabled, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @EFL_AC, align 4
  %175 = and i32 %173, %174
  %176 = icmp eq i32 %175, 0
  br label %177

177:                                              ; preds = %169, %166, %161
  %178 = phi i1 [ false, %166 ], [ false, %161 ], [ %176, %169 ]
  %179 = zext i1 %178 to i32
  %180 = call i64 @__improbable(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %343

183:                                              ; preds = %177
  %184 = load i64, i64* @no_shared_cr3, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %216

186:                                              ; preds = %183
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @CopyIOActive, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %216

194:                                              ; preds = %186
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i64 (...) @get_cr3_base()
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %216

202:                                              ; preds = %194
  %203 = call %struct.TYPE_18__* (...) @current_cpu_datap()
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @FALSE, align 8
  %207 = icmp eq i64 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @pmap_assert(i32 %208)
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @set_cr3_raw(i64 %214)
  br label %352

216:                                              ; preds = %194, %186, %183
  %217 = load i64, i64* %7, align 8
  %218 = load i64, i64* @PAGE_SIZE, align 8
  %219 = icmp slt i64 %217, %218
  %220 = zext i1 %219 to i32
  %221 = call i64 @__improbable(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %216
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @CopyIOActive, align 4
  %229 = and i32 %227, %228
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %343

232:                                              ; preds = %223, %216
  br label %233

233:                                              ; preds = %232, %128
  br label %234

234:                                              ; preds = %233, %123
  br label %235

235:                                              ; preds = %234, %92
  %236 = load i64, i64* %13, align 8
  %237 = call i32 @ml_set_interrupts_enabled(i64 %236)
  %238 = load i32, i32* %8, align 4
  switch i32 %238, label %337 [
    i32 130, label %239
    i32 134, label %241
    i32 135, label %243
    i32 128, label %245
    i32 131, label %247
    i32 136, label %250
    i32 132, label %264
    i32 129, label %265
    i32 133, label %297
  ]

239:                                              ; preds = %235
  %240 = call i32 (...) @fpnoextflt()
  br label %352

241:                                              ; preds = %235
  %242 = call i32 (...) @fpextovrflt()
  br label %352

243:                                              ; preds = %235
  %244 = call i32 (...) @fpexterrflt()
  br label %352

245:                                              ; preds = %235
  %246 = call i32 (...) @fpSSEexterrflt()
  br label %352

247:                                              ; preds = %235
  %248 = load i64, i64* %16, align 8
  %249 = call i32 @fpUDflt(i64 %248)
  br label %343

250:                                              ; preds = %235
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @EFL_TF, align 4
  %256 = and i32 %254, %255
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %250
  %259 = load i32, i32* @NO_WATCHPOINTS, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  %262 = call i32 (...) @reset_dr7()
  br label %352

263:                                              ; preds = %258, %250
  br label %343

264:                                              ; preds = %235
  br label %343

265:                                              ; preds = %235
  %266 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %266, i32* %14, align 4
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* @T_PF_WRITE, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %265
  %272 = load i32, i32* @VM_PROT_WRITE, align 4
  %273 = load i32, i32* %14, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %14, align 4
  br label %275

275:                                              ; preds = %271, %265
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* @T_PF_EXECUTE, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  %281 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %282 = load i32, i32* %14, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %14, align 4
  br label %284

284:                                              ; preds = %280, %275
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %286 = load i64, i64* %7, align 8
  %287 = load i32, i32* %14, align 4
  %288 = load i64, i64* @FALSE, align 8
  %289 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %290 = load i32, i32* @THREAD_UNINT, align 4
  %291 = call i64 @vm_fault(%struct.TYPE_24__* %285, i64 %286, i32 %287, i64 %288, i32 %289, i32 %290, i32* null, i32 0)
  store i64 %291, i64* %10, align 8
  store i64 %291, i64* %11, align 8
  %292 = load i64, i64* %10, align 8
  %293 = load i64, i64* @KERN_SUCCESS, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %284
  br label %352

296:                                              ; preds = %284
  br label %297

297:                                              ; preds = %235, %296
  %298 = load %struct.recovery*, %struct.recovery** @recover_table, align 8
  store %struct.recovery* %298, %struct.recovery** %15, align 8
  br label %299

299:                                              ; preds = %316, %297
  %300 = load %struct.recovery*, %struct.recovery** %15, align 8
  %301 = load %struct.recovery*, %struct.recovery** @recover_table_end, align 8
  %302 = icmp ult %struct.recovery* %300, %301
  br i1 %302, label %303, label %319

303:                                              ; preds = %299
  %304 = load i64, i64* %16, align 8
  %305 = load %struct.recovery*, %struct.recovery** %15, align 8
  %306 = getelementptr inbounds %struct.recovery, %struct.recovery* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp eq i64 %304, %307
  br i1 %308, label %309, label %315

309:                                              ; preds = %303
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %311 = load %struct.recovery*, %struct.recovery** %15, align 8
  %312 = getelementptr inbounds %struct.recovery, %struct.recovery* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @set_recovery_ip(%struct.TYPE_23__* %310, i32 %313)
  br label %352

315:                                              ; preds = %303
  br label %316

316:                                              ; preds = %315
  %317 = load %struct.recovery*, %struct.recovery** %15, align 8
  %318 = getelementptr inbounds %struct.recovery, %struct.recovery* %317, i32 1
  store %struct.recovery* %318, %struct.recovery** %15, align 8
  br label %299

319:                                              ; preds = %299
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %321 = load %struct.TYPE_25__*, %struct.TYPE_25__** @THREAD_NULL, align 8
  %322 = icmp ne %struct.TYPE_25__* %320, %321
  br i1 %322, label %323, label %336

323:                                              ; preds = %319
  %324 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %325 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %323
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %330 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %331 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @set_recovery_ip(%struct.TYPE_23__* %329, i32 %332)
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 2
  store i32 0, i32* %335, align 4
  br label %352

336:                                              ; preds = %323, %319
  br label %337

337:                                              ; preds = %235, %336
  %338 = load i32, i32* %8, align 4
  %339 = icmp eq i32 %338, 15
  br i1 %339, label %340, label %342

340:                                              ; preds = %337
  %341 = call i32 @kprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %352

342:                                              ; preds = %337
  br label %343

343:                                              ; preds = %342, %264, %263, %247, %231, %182, %160
  %344 = load i32*, i32** %3, align 8
  %345 = call i32 @sync_iss_to_iks(i32* %344)
  br label %346

346:                                              ; preds = %343
  %347 = call i32 (...) @pal_cli()
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %349 = load i32, i32* %18, align 4
  %350 = load i64, i64* %11, align 8
  %351 = call i32 @panic_trap(%struct.TYPE_23__* %348, i32 %349, i64 %350)
  br label %352

352:                                              ; preds = %346, %340, %328, %309, %295, %261, %245, %243, %241, %239, %202, %73
  ret void
}

declare dso_local i32 @get_preemption_level(...) #1

declare dso_local %struct.TYPE_25__* @current_thread(...) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @is_saved_state32(i32*) #1

declare dso_local i32 @panic(i8*, i32*) #1

declare dso_local %struct.TYPE_23__* @saved_state64(i32*) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @ast_taken_kernel(...) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i64 @VM_KERNEL_UNSLIDE(i64) #1

declare dso_local i64 @__probable(i32) #1

declare dso_local i64 @get_cr3_base(...) #1

declare dso_local i32 @pmap_assert(i32) #1

declare dso_local %struct.TYPE_18__* @current_cpu_datap(...) #1

declare dso_local i32 @set_cr3_raw(i64) #1

declare dso_local i32 @ml_set_interrupts_enabled(i64) #1

declare dso_local i32 @fpnoextflt(...) #1

declare dso_local i32 @fpextovrflt(...) #1

declare dso_local i32 @fpexterrflt(...) #1

declare dso_local i32 @fpSSEexterrflt(...) #1

declare dso_local i32 @fpUDflt(i64) #1

declare dso_local i32 @reset_dr7(...) #1

declare dso_local i64 @vm_fault(%struct.TYPE_24__*, i64, i32, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @set_recovery_ip(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @sync_iss_to_iks(i32*) #1

declare dso_local i32 @pal_cli(...) #1

declare dso_local i32 @panic_trap(%struct.TYPE_23__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
