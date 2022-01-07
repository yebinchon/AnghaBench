; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_sample_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_sample_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8* }
%struct.kperf_sample = type { i32, i32, %struct.TYPE_13__, i32, i32, %struct.TYPE_15__, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.kperf_context = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@SAMPLE_CONTINUE = common dso_local global i32 0, align 4
@SAMPLE_FLAG_EMPTY_CALLSTACK = common dso_local global i32 0, align 4
@SAMPLER_KSTACK = common dso_local global i32 0, align 4
@SAMPLER_USTACK = common dso_local global i32 0, align 4
@SAMPLE_FLAG_ONLY_SYSTEM = common dso_local global i32 0, align 4
@SAMPLER_SYS_MEM = common dso_local global i32 0, align 4
@SAMPLE_FLAG_THREAD_ONLY = common dso_local global i32 0, align 4
@SAMPLE_FLAG_TASK_ONLY = common dso_local global i32 0, align 4
@SAMPLER_THREAD_MASK = common dso_local global i32 0, align 4
@SAMPLER_TASK_MASK = common dso_local global i32 0, align 4
@kperf_pet_gen = common dso_local global i32 0, align 4
@actionc = common dso_local global i32 0, align 4
@actionv = common dso_local global %struct.TYPE_11__* null, align 8
@MAX_CALLSTACK_FRAMES = common dso_local global i8* null, align 8
@CALLSTACK_VALID = common dso_local global i8* null, align 8
@SAMPLER_TH_INFO = common dso_local global i32 0, align 4
@SAMPLE_FLAG_IDLE_THREADS = common dso_local global i32 0, align 4
@SAMPLER_TH_SNAPSHOT = common dso_local global i32 0, align 4
@SAMPLER_TH_SCHEDULING = common dso_local global i32 0, align 4
@SAMPLE_FLAG_CONTINUATION = common dso_local global i32 0, align 4
@SAMPLE_FLAG_NON_INTERRUPT = common dso_local global i32 0, align 4
@SAMPLER_TK_SNAPSHOT = common dso_local global i32 0, align 4
@SAMPLER_MEMINFO = common dso_local global i32 0, align 4
@SAMPLE_FLAG_PEND_USER = common dso_local global i32 0, align 4
@SAMPLER_TH_DISPATCH = common dso_local global i32 0, align 4
@SAMPLER_PMC_THREAD = common dso_local global i32 0, align 4
@SAMPLER_PMC_CPU = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PERF_GEN_EVENT = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@SAMPLE_FLAG_SYSTEM = common dso_local global i32 0, align 4
@SAMPLER_TH_INSCYC = common dso_local global i32 0, align 4
@SAMPLER_TK_INFO = common dso_local global i32 0, align 4
@PERF_CS_UPEND = common dso_local global i32 0, align 4
@PERF_TI_DISPPEND = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kperf_sample*, %struct.kperf_context*, i32, i32, i32, i32)* @kperf_sample_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kperf_sample_internal(%struct.kperf_sample* %0, %struct.kperf_context* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kperf_sample*, align 8
  %9 = alloca %struct.kperf_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.kperf_sample* %0, %struct.kperf_sample** %8, align 8
  store %struct.kperf_context* %1, %struct.kperf_context** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @SAMPLE_CONTINUE, align 4
  store i32 %25, i32* %7, align 4
  br label %509

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @SAMPLE_FLAG_EMPTY_CALLSTACK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* @SAMPLER_KSTACK, align 4
  %33 = load i32, i32* @SAMPLER_USTACK, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %31, %26
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @SAMPLE_FLAG_ONLY_SYSTEM, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @SAMPLER_SYS_MEM, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @SAMPLE_FLAG_THREAD_ONLY, align 4
  %50 = load i32, i32* @SAMPLE_FLAG_TASK_ONLY, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = load i32, i32* @SAMPLE_FLAG_THREAD_ONLY, align 4
  %54 = load i32, i32* @SAMPLE_FLAG_TASK_ONLY, align 4
  %55 = or i32 %53, %54
  %56 = icmp ne i32 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @SAMPLE_FLAG_THREAD_ONLY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = load i32, i32* @SAMPLER_THREAD_MASK, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %47
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @SAMPLE_FLAG_TASK_ONLY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  store i32 1, i32* %18, align 4
  %73 = load i32, i32* @SAMPLER_TASK_MASK, align 4
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @kperf_pet_gen, align 4
  %81 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %82 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %81, i32 0, i32 2
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %76
  %86 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %87 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %85
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @actionc, align 4
  %96 = icmp ule i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** @actionv, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sub i32 %99, 1
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %106 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  store i8* %104, i8** %107, align 8
  br label %113

108:                                              ; preds = %93, %85
  %109 = load i8*, i8** @MAX_CALLSTACK_FRAMES, align 8
  %110 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %111 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  store i8* %109, i8** %112, align 8
  br label %113

113:                                              ; preds = %108, %97
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %119 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  br label %127

121:                                              ; preds = %113
  %122 = load i8*, i8** @MAX_CALLSTACK_FRAMES, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %125 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  br label %127

127:                                              ; preds = %121, %116
  %128 = load i8*, i8** @CALLSTACK_VALID, align 8
  %129 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %130 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  %132 = load i8*, i8** @CALLSTACK_VALID, align 8
  %133 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %134 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  store i8* %132, i8** %135, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @SAMPLER_TH_INFO, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %127
  %141 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %142 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %141, i32 0, i32 8
  %143 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %144 = call i32 @kperf_thread_info_sample(%struct.TYPE_14__* %142, %struct.kperf_context* %143)
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @SAMPLE_FLAG_IDLE_THREADS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %140
  %150 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %151 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %150, i32 0, i32 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, 64
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i32 1, i32* %16, align 4
  br label %308

157:                                              ; preds = %149
  br label %158

158:                                              ; preds = %157, %140
  br label %159

159:                                              ; preds = %158, %127
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @SAMPLER_TH_SNAPSHOT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %166 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %165, i32 0, i32 6
  %167 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %168 = call i32 @kperf_thread_snapshot_sample(i32* %166, %struct.kperf_context* %167)
  br label %169

169:                                              ; preds = %164, %159
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @SAMPLER_TH_SCHEDULING, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %176 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %175, i32 0, i32 7
  %177 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %178 = call i32 @kperf_thread_scheduling_sample(i32* %176, %struct.kperf_context* %177)
  br label %179

179:                                              ; preds = %174, %169
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* @SAMPLER_KSTACK, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %211

184:                                              ; preds = %179
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @SAMPLE_FLAG_CONTINUATION, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %191 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %190, i32 0, i32 5
  %192 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %193 = call i32 @kperf_continuation_sample(%struct.TYPE_15__* %191, %struct.kperf_context* %192)
  br label %210

194:                                              ; preds = %184
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @SAMPLE_FLAG_NON_INTERRUPT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %201 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %200, i32 0, i32 5
  %202 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %203 = call i32 @kperf_backtrace_sample(%struct.TYPE_15__* %201, %struct.kperf_context* %202)
  br label %209

204:                                              ; preds = %194
  %205 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %206 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %205, i32 0, i32 5
  %207 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %208 = call i32 @kperf_kcallstack_sample(%struct.TYPE_15__* %206, %struct.kperf_context* %207)
  br label %209

209:                                              ; preds = %204, %199
  br label %210

210:                                              ; preds = %209, %189
  br label %211

211:                                              ; preds = %210, %179
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @SAMPLER_TK_SNAPSHOT, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %218 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %221 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %220, i32 0, i32 4
  %222 = call i32 @kperf_task_snapshot_sample(i32 %219, i32* %221)
  br label %223

223:                                              ; preds = %216, %211
  %224 = load i32, i32* %19, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %286, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @SAMPLER_MEMINFO, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %233 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %236 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %235, i32 0, i32 3
  %237 = call i32 @kperf_meminfo_sample(i32 %234, i32* %236)
  br label %238

238:                                              ; preds = %231, %226
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* @SAMPLE_FLAG_PEND_USER, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %264

243:                                              ; preds = %238
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* @SAMPLER_USTACK, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %243
  %249 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %250 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %251 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @kperf_ucallstack_pend(%struct.kperf_context* %249, i32 %253)
  store i32 %254, i32* %14, align 4
  br label %255

255:                                              ; preds = %248, %243
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* @SAMPLER_TH_DISPATCH, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %262 = call i32 @kperf_thread_dispatch_pend(%struct.kperf_context* %261)
  store i32 %262, i32* %15, align 4
  br label %263

263:                                              ; preds = %260, %255
  br label %285

264:                                              ; preds = %238
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* @SAMPLER_USTACK, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %264
  %270 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %271 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %270, i32 0, i32 2
  %272 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %273 = call i32 @kperf_ucallstack_sample(%struct.TYPE_13__* %271, %struct.kperf_context* %272)
  br label %274

274:                                              ; preds = %269, %264
  %275 = load i32, i32* %10, align 4
  %276 = load i32, i32* @SAMPLER_TH_DISPATCH, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %281 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %280, i32 0, i32 1
  %282 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %283 = call i32 @kperf_thread_dispatch_sample(i32* %281, %struct.kperf_context* %282)
  br label %284

284:                                              ; preds = %279, %274
  br label %285

285:                                              ; preds = %284, %263
  br label %286

286:                                              ; preds = %285, %223
  %287 = load i32, i32* %10, align 4
  %288 = load i32, i32* @SAMPLER_PMC_THREAD, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %286
  %292 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %293 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %292, i32 0, i32 0
  %294 = load i32, i32* %10, align 4
  %295 = call i32 @kperf_kpc_thread_sample(i32* %293, i32 %294)
  br label %307

296:                                              ; preds = %286
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* @SAMPLER_PMC_CPU, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %303 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %302, i32 0, i32 0
  %304 = load i32, i32* %10, align 4
  %305 = call i32 @kperf_kpc_cpu_sample(i32* %303, i32 %304)
  br label %306

306:                                              ; preds = %301, %296
  br label %307

307:                                              ; preds = %306, %291
  br label %308

308:                                              ; preds = %307, %156
  %309 = load i32, i32* %12, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %323

311:                                              ; preds = %308
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* @actionc, align 4
  %314 = icmp ule i32 %312, %313
  br i1 %314, label %315, label %323

315:                                              ; preds = %311
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** @actionv, align 8
  %317 = load i32, i32* %12, align 4
  %318 = sub i32 %317, 1
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  store i32 %322, i32* %17, align 4
  br label %323

323:                                              ; preds = %315, %311, %308
  %324 = load i32, i32* %11, align 4
  %325 = load i32, i32* @SAMPLE_FLAG_PEND_USER, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %338

328:                                              ; preds = %323
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* @SAMPLER_USTACK, align 4
  %331 = load i32, i32* @SAMPLER_TH_DISPATCH, align 4
  %332 = or i32 %330, %331
  %333 = xor i32 %332, -1
  %334 = and i32 %329, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %338, label %336

336:                                              ; preds = %328
  %337 = load i32, i32* @SAMPLE_CONTINUE, align 4
  store i32 %337, i32* %7, align 4
  br label %509

338:                                              ; preds = %328, %323
  %339 = load i32, i32* @FALSE, align 4
  %340 = call i32 @ml_set_interrupts_enabled(i32 %339)
  store i32 %340, i32* %20, align 4
  %341 = load i32, i32* @PERF_GEN_EVENT, align 4
  %342 = load i32, i32* @DBG_FUNC_START, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* %10, align 4
  %345 = load i32, i32* %12, align 4
  %346 = load i32, i32* %17, align 4
  %347 = load i32, i32* %11, align 4
  %348 = call i32 (i32, i32, i32, ...) @BUF_DATA(i32 %343, i32 %344, i32 %345, i32 %346, i32 %347)
  %349 = load i32, i32* %11, align 4
  %350 = load i32, i32* @SAMPLE_FLAG_SYSTEM, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %338
  %354 = load i32, i32* %10, align 4
  %355 = load i32, i32* @SAMPLER_SYS_MEM, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %353
  %359 = call i32 (...) @kperf_system_memory_log()
  br label %360

360:                                              ; preds = %358, %353
  br label %361

361:                                              ; preds = %360, %338
  %362 = load i32, i32* %16, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %361
  br label %496

365:                                              ; preds = %361
  %366 = load i32, i32* %10, align 4
  %367 = load i32, i32* @SAMPLER_TH_INFO, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %365
  %371 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %372 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %371, i32 0, i32 8
  %373 = call i32 @kperf_thread_info_log(%struct.TYPE_14__* %372)
  br label %374

374:                                              ; preds = %370, %365
  %375 = load i32, i32* %10, align 4
  %376 = load i32, i32* @SAMPLER_TH_SCHEDULING, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %374
  %380 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %381 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %380, i32 0, i32 7
  %382 = call i32 @kperf_thread_scheduling_log(i32* %381)
  br label %383

383:                                              ; preds = %379, %374
  %384 = load i32, i32* %10, align 4
  %385 = load i32, i32* @SAMPLER_TH_SNAPSHOT, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %383
  %389 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %390 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %389, i32 0, i32 6
  %391 = call i32 @kperf_thread_snapshot_log(i32* %390)
  br label %392

392:                                              ; preds = %388, %383
  %393 = load i32, i32* %10, align 4
  %394 = load i32, i32* @SAMPLER_KSTACK, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %392
  %398 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %399 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %398, i32 0, i32 5
  %400 = call i32 @kperf_kcallstack_log(%struct.TYPE_15__* %399)
  br label %401

401:                                              ; preds = %397, %392
  %402 = load i32, i32* %10, align 4
  %403 = load i32, i32* @SAMPLER_TH_INSCYC, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %401
  %407 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %408 = call i32 @kperf_thread_inscyc_log(%struct.kperf_context* %407)
  br label %409

409:                                              ; preds = %406, %401
  %410 = load i32, i32* %10, align 4
  %411 = load i32, i32* @SAMPLER_TK_SNAPSHOT, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %409
  %415 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %416 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %415, i32 0, i32 4
  %417 = call i32 @kperf_task_snapshot_log(i32* %416)
  br label %418

418:                                              ; preds = %414, %409
  %419 = load i32, i32* %10, align 4
  %420 = load i32, i32* @SAMPLER_TK_INFO, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %418
  %424 = load %struct.kperf_context*, %struct.kperf_context** %9, align 8
  %425 = call i32 @kperf_task_info_log(%struct.kperf_context* %424)
  br label %426

426:                                              ; preds = %423, %418
  %427 = load i32, i32* %19, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %476, label %429

429:                                              ; preds = %426
  %430 = load i32, i32* %10, align 4
  %431 = load i32, i32* @SAMPLER_MEMINFO, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %429
  %435 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %436 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %435, i32 0, i32 3
  %437 = call i32 @kperf_meminfo_log(i32* %436)
  br label %438

438:                                              ; preds = %434, %429
  %439 = load i32, i32* %11, align 4
  %440 = load i32, i32* @SAMPLE_FLAG_PEND_USER, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %456

443:                                              ; preds = %438
  %444 = load i32, i32* %14, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %443
  %447 = load i32, i32* @PERF_CS_UPEND, align 4
  %448 = call i32 @BUF_INFO(i32 %447)
  br label %449

449:                                              ; preds = %446, %443
  %450 = load i32, i32* %15, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %449
  %453 = load i32, i32* @PERF_TI_DISPPEND, align 4
  %454 = call i32 @BUF_INFO(i32 %453)
  br label %455

455:                                              ; preds = %452, %449
  br label %475

456:                                              ; preds = %438
  %457 = load i32, i32* %10, align 4
  %458 = load i32, i32* @SAMPLER_USTACK, align 4
  %459 = and i32 %457, %458
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %456
  %462 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %463 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %462, i32 0, i32 2
  %464 = call i32 @kperf_ucallstack_log(%struct.TYPE_13__* %463)
  br label %465

465:                                              ; preds = %461, %456
  %466 = load i32, i32* %10, align 4
  %467 = load i32, i32* @SAMPLER_TH_DISPATCH, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %465
  %471 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %472 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %471, i32 0, i32 1
  %473 = call i32 @kperf_thread_dispatch_log(i32* %472)
  br label %474

474:                                              ; preds = %470, %465
  br label %475

475:                                              ; preds = %474, %455
  br label %476

476:                                              ; preds = %475, %426
  %477 = load i32, i32* %10, align 4
  %478 = load i32, i32* @SAMPLER_PMC_THREAD, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %485

481:                                              ; preds = %476
  %482 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %483 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %482, i32 0, i32 0
  %484 = call i32 @kperf_kpc_thread_log(i32* %483)
  br label %495

485:                                              ; preds = %476
  %486 = load i32, i32* %10, align 4
  %487 = load i32, i32* @SAMPLER_PMC_CPU, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %494

490:                                              ; preds = %485
  %491 = load %struct.kperf_sample*, %struct.kperf_sample** %8, align 8
  %492 = getelementptr inbounds %struct.kperf_sample, %struct.kperf_sample* %491, i32 0, i32 0
  %493 = call i32 @kperf_kpc_cpu_log(i32* %492)
  br label %494

494:                                              ; preds = %490, %485
  br label %495

495:                                              ; preds = %494, %481
  br label %496

496:                                              ; preds = %495, %364
  %497 = load i32, i32* @PERF_GEN_EVENT, align 4
  %498 = load i32, i32* @DBG_FUNC_END, align 4
  %499 = or i32 %497, %498
  %500 = load i32, i32* %10, align 4
  %501 = load i32, i32* %16, align 4
  %502 = icmp ne i32 %501, 0
  %503 = zext i1 %502 to i64
  %504 = select i1 %502, i32 1, i32 0
  %505 = call i32 (i32, i32, i32, ...) @BUF_DATA(i32 %499, i32 %500, i32 %504)
  %506 = load i32, i32* %20, align 4
  %507 = call i32 @ml_set_interrupts_enabled(i32 %506)
  %508 = load i32, i32* @SAMPLE_CONTINUE, align 4
  store i32 %508, i32* %7, align 4
  br label %509

509:                                              ; preds = %496, %336, %24
  %510 = load i32, i32* %7, align 4
  ret i32 %510
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kperf_thread_info_sample(%struct.TYPE_14__*, %struct.kperf_context*) #1

declare dso_local i32 @kperf_thread_snapshot_sample(i32*, %struct.kperf_context*) #1

declare dso_local i32 @kperf_thread_scheduling_sample(i32*, %struct.kperf_context*) #1

declare dso_local i32 @kperf_continuation_sample(%struct.TYPE_15__*, %struct.kperf_context*) #1

declare dso_local i32 @kperf_backtrace_sample(%struct.TYPE_15__*, %struct.kperf_context*) #1

declare dso_local i32 @kperf_kcallstack_sample(%struct.TYPE_15__*, %struct.kperf_context*) #1

declare dso_local i32 @kperf_task_snapshot_sample(i32, i32*) #1

declare dso_local i32 @kperf_meminfo_sample(i32, i32*) #1

declare dso_local i32 @kperf_ucallstack_pend(%struct.kperf_context*, i32) #1

declare dso_local i32 @kperf_thread_dispatch_pend(%struct.kperf_context*) #1

declare dso_local i32 @kperf_ucallstack_sample(%struct.TYPE_13__*, %struct.kperf_context*) #1

declare dso_local i32 @kperf_thread_dispatch_sample(i32*, %struct.kperf_context*) #1

declare dso_local i32 @kperf_kpc_thread_sample(i32*, i32) #1

declare dso_local i32 @kperf_kpc_cpu_sample(i32*, i32) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @BUF_DATA(i32, i32, i32, ...) #1

declare dso_local i32 @kperf_system_memory_log(...) #1

declare dso_local i32 @kperf_thread_info_log(%struct.TYPE_14__*) #1

declare dso_local i32 @kperf_thread_scheduling_log(i32*) #1

declare dso_local i32 @kperf_thread_snapshot_log(i32*) #1

declare dso_local i32 @kperf_kcallstack_log(%struct.TYPE_15__*) #1

declare dso_local i32 @kperf_thread_inscyc_log(%struct.kperf_context*) #1

declare dso_local i32 @kperf_task_snapshot_log(i32*) #1

declare dso_local i32 @kperf_task_info_log(%struct.kperf_context*) #1

declare dso_local i32 @kperf_meminfo_log(i32*) #1

declare dso_local i32 @BUF_INFO(i32) #1

declare dso_local i32 @kperf_ucallstack_log(%struct.TYPE_13__*) #1

declare dso_local i32 @kperf_thread_dispatch_log(i32*) #1

declare dso_local i32 @kperf_kpc_thread_log(i32*) #1

declare dso_local i32 @kperf_kpc_cpu_log(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
