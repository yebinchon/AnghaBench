; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_interrupt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_15__, i32, i32*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@cpu_data_ptr = common dso_local global %struct.TYPE_17__** null, align 8
@DBG_INTR_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@topoParms = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@LAPIC_DEFAULT_INTERRUPT_BASE = common dso_local global i32 0, align 4
@LAPIC_INTERPROCESSOR_INTERRUPT = common dso_local global i32 0, align 4
@DBG_INTR_TYPE_IPI = common dso_local global i32 0, align 4
@LAPIC_TIMER_INTERRUPT = common dso_local global i32 0, align 4
@DBG_INTR_TYPE_TIMER = common dso_local global i32 0, align 4
@DBG_INTR_TYPE_OTHER = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_MACH_EXCP_INTR = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Preemption level altered by interrupt vector 0x%x: initial 0x%x, final: 0x%x\0A\00", align 1
@interrupt_timer_coalescing_enabled = common dso_local global i64 0, align 8
@interrupt_coalesced_timers = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@ilat_assert = common dso_local global i64 0, align 8
@interrupt_latency_cap = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [131 x i8] c"Interrupt vector 0x%x exceeded interrupt latency threshold, 0x%llx absolute time delta, prior signals: 0x%x, current signals: 0x%x\00", align 1
@kernel_stack_depth_max = common dso_local global i64 0, align 8
@DBG_MACH_SCHED = common dso_local global i32 0, align 4
@MACH_STACK_DEPTH = common dso_local global i32 0, align 4
@master_cpu = common dso_local global i32 0, align 4
@TCOAL_ILAT_THRESHOLD = common dso_local global i64 0, align 8
@telemetry_needs_record = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interrupt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %6, align 8
  %18 = call i32 (...) @cpu_number()
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @cpu_data_ptr, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %19, i64 %21
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %9, align 8
  %24 = load i32, i32* @DBG_INTR_TYPE_UNKNOWN, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = call %struct.TYPE_16__* @saved_state64(i32* %25)
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %11, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %3, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %4, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %5, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 3
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i64, i64* @TRUE, align 8
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %45, %1
  %48 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @cpu_data_ptr, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %48, i64 %50
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 10
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @topoParms, i32 0, i32 0), align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %47
  %61 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @cpu_data_ptr, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %61, i64 %63
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 9
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %60, %47
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @LAPIC_DEFAULT_INTERRUPT_BASE, align 4
  %76 = load i32, i32* @LAPIC_INTERPROCESSOR_INTERRUPT, align 4
  %77 = add nsw i32 %75, %76
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @DBG_INTR_TYPE_IPI, align 4
  store i32 %80, i32* %10, align 4
  br label %92

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @LAPIC_DEFAULT_INTERRUPT_BASE, align 4
  %84 = load i32, i32* @LAPIC_TIMER_INTERRUPT, align 4
  %85 = add nsw i32 %83, %84
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @DBG_INTR_TYPE_TIMER, align 4
  store i32 %88, i32* %10, align 4
  br label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @DBG_INTR_TYPE_OTHER, align 4
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %89, %87
  br label %92

92:                                               ; preds = %91, %79
  %93 = load i32, i32* @KDEBUG_TRACE, align 4
  %94 = load i32, i32* @DBG_MACH_EXCP_INTR, align 4
  %95 = call i32 @MACHDBG_CODE(i32 %94, i32 0)
  %96 = load i32, i32* @DBG_FUNC_START, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %5, align 4
  %99 = load i64, i64* %6, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i64, i64* %3, align 8
  br label %106

103:                                              ; preds = %92
  %104 = load i64, i64* %3, align 8
  %105 = call i64 @VM_KERNEL_UNSLIDE(i64 %104)
  br label %106

106:                                              ; preds = %103, %101
  %107 = phi i64 [ %102, %101 ], [ %105, %103 ]
  %108 = load i64, i64* %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %93, i32 %97, i32 %98, i64 %107, i64 %108, i32 %109, i32 0)
  %111 = call i32 (...) @current_processor()
  %112 = call i32 @SCHED_STATS_INTERRUPT(i32 %111)
  %113 = call i32 (...) @get_preemption_level()
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @lapic_interrupt(i32 %114, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %106
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @PE_incoming_interrupt(i32 %119)
  br label %121

121:                                              ; preds = %118, %106
  %122 = call i32 (...) @get_preemption_level()
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i64 @__improbable(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = call i32 (...) @get_preemption_level()
  %133 = call i32 (i8*, i32, i64, i32, ...) @panic(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %129, i64 %131, i32 %132)
  br label %134

134:                                              ; preds = %128, %121
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @__improbable(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %249

145:                                              ; preds = %134
  %146 = call i64 (...) @mach_absolute_time()
  store i64 %146, i64* %12, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  store i64 %151, i64* %13, align 8
  %152 = load i64, i64* %13, align 8
  %153 = icmp ult i64 %152, 30000
  br i1 %153, label %154, label %206

154:                                              ; preds = %145
  %155 = load i64, i64* @interrupt_timer_coalescing_enabled, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %206

157:                                              ; preds = %154
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 7
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %14, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %15, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* %14, align 8
  %169 = icmp sge i64 %167, %168
  br i1 %169, label %170, label %192

170:                                              ; preds = %157
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %15, align 8
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %170
  %175 = load i64, i64* @interrupt_coalesced_timers, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* @interrupt_coalesced_timers, align 8
  %177 = load i32, i32* @DBG_FUNC_START, align 4
  %178 = or i32 -2004353024, %177
  %179 = load i64, i64* %12, align 8
  %180 = load i64, i64* %14, align 8
  %181 = load i64, i64* %15, align 8
  %182 = load i64, i64* @interrupt_coalesced_timers, align 8
  %183 = call i32 @TCOAL_DEBUG(i32 %178, i64 %179, i64 %180, i64 %181, i64 %182, i32 0)
  %184 = load i32*, i32** %2, align 8
  %185 = call i32 @rtclock_intr(i32* %184)
  %186 = load i32, i32* @DBG_FUNC_END, align 4
  %187 = or i32 -2004353024, %186
  %188 = load i64, i64* %12, align 8
  %189 = load i64, i64* %14, align 8
  %190 = load i64, i64* @interrupt_coalesced_timers, align 8
  %191 = call i32 @TCOAL_DEBUG(i32 %187, i64 %188, i64 %189, i64 %190, i64 0, i32 0)
  br label %205

192:                                              ; preds = %170, %157
  %193 = load i64, i64* %12, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @interrupt_coalesced_timers, align 8
  %204 = call i32 @TCOAL_DEBUG(i32 2004287488, i64 %193, i64 %198, i64 %202, i64 %203, i32 0)
  br label %205

205:                                              ; preds = %192, %174
  br label %206

206:                                              ; preds = %205, %154, %145
  %207 = load i64, i64* @ilat_assert, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load i64, i64* %13, align 8
  %211 = load i64, i64* @interrupt_latency_cap, align 8
  %212 = icmp sgt i64 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = call i32 (...) @machine_timeout_suspended()
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  br label %217

217:                                              ; preds = %213, %209, %206
  %218 = phi i1 [ false, %209 ], [ false, %206 ], [ %216, %213 ]
  %219 = zext i1 %218 to i32
  %220 = call i64 @__improbable(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %217
  %223 = load i32, i32* %5, align 4
  %224 = load i64, i64* %13, align 8
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i8*, i32, i64, i32, ...) @panic(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.1, i64 0, i64 0), i32 %223, i64 %224, i32 %227, i32 %230)
  br label %232

232:                                              ; preds = %222, %217
  %233 = load i64, i64* %13, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp sgt i64 %233, %236
  %238 = zext i1 %237 to i32
  %239 = call i64 @__improbable(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %232
  %242 = load i64, i64* %13, align 8
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 2
  store i64 %242, i64* %244, align 8
  %245 = load i32, i32* %5, align 4
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 8
  br label %248

248:                                              ; preds = %241, %232
  br label %249

249:                                              ; preds = %248, %140
  %250 = load i64, i64* %6, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %277, label %252

252:                                              ; preds = %249
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = add i64 %256, 4
  %258 = add i64 %257, 8
  %259 = load i64, i64* %4, align 8
  %260 = sub i64 %258, %259
  store i64 %260, i64* %16, align 8
  %261 = load i64, i64* %16, align 8
  %262 = load i64, i64* @kernel_stack_depth_max, align 8
  %263 = icmp sgt i64 %261, %262
  %264 = zext i1 %263 to i32
  %265 = call i64 @__improbable(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %252
  %268 = load i64, i64* %16, align 8
  store i64 %268, i64* @kernel_stack_depth_max, align 8
  %269 = load i32, i32* @DBG_MACH_SCHED, align 4
  %270 = load i32, i32* @MACH_STACK_DEPTH, align 4
  %271 = call i32 @MACHDBG_CODE(i32 %269, i32 %270)
  %272 = load i64, i64* %16, align 8
  %273 = load i64, i64* %3, align 8
  %274 = call i64 @VM_KERNEL_UNSLIDE(i64 %273)
  %275 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %271, i64 %272, i64 %274, i32 0, i32 0, i32 0)
  br label %276

276:                                              ; preds = %267, %252
  br label %277

277:                                              ; preds = %276, %249
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* @master_cpu, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %277
  %282 = call i32 (...) @ml_entropy_collect()
  br label %283

283:                                              ; preds = %281, %277
  %284 = load i32, i32* @DBG_MACH_EXCP_INTR, align 4
  %285 = call i32 @MACHDBG_CODE(i32 %284, i32 0)
  %286 = load i32, i32* @DBG_FUNC_END, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* %5, align 4
  %289 = call i32 @KDBG_RELEASE(i32 %287, i32 %288)
  %290 = call i64 (...) @ml_get_interrupts_enabled()
  %291 = load i64, i64* @FALSE, align 8
  %292 = icmp eq i64 %290, %291
  %293 = zext i1 %292 to i32
  %294 = call i32 @assert(i32 %293)
  ret void
}

declare dso_local i32 @cpu_number(...) #1

declare dso_local %struct.TYPE_16__* @saved_state64(i32*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i64 @VM_KERNEL_UNSLIDE(i64) #1

declare dso_local i32 @SCHED_STATS_INTERRUPT(i32) #1

declare dso_local i32 @current_processor(...) #1

declare dso_local i32 @get_preemption_level(...) #1

declare dso_local i32 @lapic_interrupt(i32, i32*) #1

declare dso_local i32 @PE_incoming_interrupt(i32) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @panic(i8*, i32, i64, i32, ...) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @TCOAL_DEBUG(i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @rtclock_intr(i32*) #1

declare dso_local i32 @machine_timeout_suspended(...) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @ml_entropy_collect(...) #1

declare dso_local i32 @KDBG_RELEASE(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
