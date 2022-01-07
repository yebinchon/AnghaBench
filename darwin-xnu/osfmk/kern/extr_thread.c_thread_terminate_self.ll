; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_terminate_self.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_terminate_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i64, i64, i64, i64, i64, i64, i32*, i32, i32, i64, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i64, i32* }

@lwp__exit = common dso_local global i32 0, align 4
@kdebug_enable = common dso_local global i64 0, align 8
@MAXTHREADNAMESIZE = common dso_local global i32 0, align 4
@TRACE_STRING_THREADNAME_PREV = common dso_local global i32 0, align 4
@TRACE_DATA_THREAD_TERMINATE_PID = common dso_local global i32 0, align 4
@TRACE_STRING_PROC_EXIT = common dso_local global i32 0, align 4
@EXC_RESOURCE = common dso_local global i32 0, align 4
@TH_SFLAG_DEPRESSED_MASK = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"depress timer failed to inactivate!thread: %p depress_timer_active: %d\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"wait timer failed to inactivate!thread: %p wait_timer_active: %d\00", align 1
@TH_TERMINATE = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@TH_SFLAG_WAITQ_PROMOTED = common dso_local global i32 0, align 4
@TH_SFLAG_RW_PROMOTED = common dso_local global i32 0, align 4
@TH_SFLAG_EXEC_PROMOTED = common dso_local global i32 0, align 4
@TH_SFLAG_PROMOTED = common dso_local global i32 0, align 4
@thread_terminate_continue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_terminate_self() #0 {
  %1 = alloca %struct.TYPE_26__*, align 8
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i64], align 16
  %11 = alloca i32, align 4
  %12 = call %struct.TYPE_26__* (...) @current_thread()
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %1, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %14 = call i32 @pal_thread_terminate_self(%struct.TYPE_26__* %13)
  %15 = load i32, i32* @lwp__exit, align 4
  %16 = call i32 @DTRACE_PROC(i32 %15)
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %18 = call i32 @thread_mtx_lock(%struct.TYPE_26__* %17)
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %20 = call i32 @ipc_thread_disable(%struct.TYPE_26__* %19)
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %22 = call i32 @thread_mtx_unlock(%struct.TYPE_26__* %21)
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %24 = call i32 @thread_sched_call(%struct.TYPE_26__* %23, i32* null)
  %25 = call i32 (...) @splsched()
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %27 = call i32 @thread_lock(%struct.TYPE_26__* %26)
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %29 = call i32 @thread_depress_abort_locked(%struct.TYPE_26__* %28)
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %31 = call i32 @thread_unlock(%struct.TYPE_26__* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @splx(i32 %32)
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %35 = call i32 @work_interval_thread_terminate(%struct.TYPE_26__* %34)
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %37 = call i32 @thread_mtx_lock(%struct.TYPE_26__* %36)
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %39 = call i32 @thread_policy_reset(%struct.TYPE_26__* %38)
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %41 = call i32 @thread_mtx_unlock(%struct.TYPE_26__* %40)
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %43 = call i32 @bank_swap_thread_bank_ledger(%struct.TYPE_26__* %42, i32* null)
  %44 = load i64, i64* @kdebug_enable, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %0
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @bsd_hasthreadname(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i32, i32* @MAXTHREADNAMESIZE, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %5, align 8
  %56 = alloca i8, i64 %54, align 16
  store i64 %54, i64* %6, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @bsd_getthreadname(i32 %59, i8* %56)
  %61 = load i32, i32* @TRACE_STRING_THREADNAME_PREV, align 4
  %62 = call i32 @kernel_debug_string_simple(i32 %61, i8* %56)
  %63 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %63)
  br label %64

64:                                               ; preds = %52, %46, %0
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 12
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %66, align 8
  store %struct.TYPE_27__* %67, %struct.TYPE_27__** %2, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @uthread_cleanup(%struct.TYPE_27__* %68, i32 %71, i32* %74)
  %76 = load i64, i64* @kdebug_enable, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %64
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %85 = call i32 @task_is_exec_copy(%struct.TYPE_27__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %83
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 12
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @kdbg_trace_data(i32* %92, i64* %7, i64* %8)
  %94 = load i32, i32* @TRACE_DATA_THREAD_TERMINATE_PID, align 4
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 (i32, i64, i64, ...) @KDBG_RELEASE(i32 %94, i64 %95, i64 %96)
  br label %98

98:                                               ; preds = %87, %83, %78, %64
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = call i32 @hw_atomic_sub(i32* %100, i32 1)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %158

104:                                              ; preds = %98
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %158

109:                                              ; preds = %104
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %111 = call i32 @task_is_exec_copy(%struct.TYPE_27__* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %158, label %113

113:                                              ; preds = %109
  store i32 0, i32* %9, align 4
  %114 = load i64, i64* @kdebug_enable, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %138

116:                                              ; preds = %113
  %117 = bitcast [4 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %117, i8 0, i64 32, i1 false)
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 12
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %124 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %125 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %126 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %127 = call i32 @kdbg_trace_string(i32* %122, i64* %123, i64* %124, i64* %125, i64* %126)
  %128 = load i32, i32* @TRACE_STRING_PROC_EXIT, align 4
  %129 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %130 = load i64, i64* %129, align 16
  %131 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %134 = load i64, i64* %133, align 16
  %135 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %136 = load i64, i64* %135, align 8
  %137 = call i32 (i32, i64, i64, ...) @KDBG_RELEASE(i32 %128, i64 %130, i64 %132, i64 %134, i64 %136)
  br label %138

138:                                              ; preds = %116, %113
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @proc_encode_exit_exception_code(i32* %141)
  store i32 %142, i32* %9, align 4
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @proc_exit(i32* %145)
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %138
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %153 = call %struct.TYPE_26__* (...) @current_thread()
  %154 = load i32, i32* @EXC_RESOURCE, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @task_deliver_crash_notification(%struct.TYPE_27__* %152, %struct.TYPE_26__* %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %151, %138
  br label %158

158:                                              ; preds = %157, %109, %104, %98
  %159 = load i32, i32* %3, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %158
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %163 = call i32 @task_lock(%struct.TYPE_27__* %162)
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %165 = call i64 @task_is_a_corpse_fork(%struct.TYPE_27__* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %161
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = ptrtoint i32* %169 to i32
  %171 = call i32 @thread_wakeup(i32 %170)
  br label %172

172:                                              ; preds = %167, %161
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %174 = call i32 @task_unlock(%struct.TYPE_27__* %173)
  br label %175

175:                                              ; preds = %172, %158
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @uthread_cred_free(i32 %178)
  %180 = call i32 (...) @splsched()
  store i32 %180, i32* %4, align 4
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %182 = call i32 @thread_lock(%struct.TYPE_26__* %181)
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @TH_SFLAG_DEPRESSED_MASK, align 4
  %187 = and i32 %185, %186
  %188 = icmp eq i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  store i32 1, i32* %11, align 4
  br label %191

191:                                              ; preds = %213, %175
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp sgt i64 %194, 0
  br i1 %195, label %196, label %217

196:                                              ; preds = %191
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %198 = call i32 @thread_unlock(%struct.TYPE_26__* %197)
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @splx(i32 %199)
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %11, align 4
  %203 = call i32 @delay(i32 %201)
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @USEC_PER_SEC, align 4
  %206 = icmp sgt i32 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %196
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @panic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), %struct.TYPE_26__* %208, i64 %211)
  br label %213

213:                                              ; preds = %207, %196
  %214 = call i32 (...) @splsched()
  store i32 %214, i32* %4, align 4
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %216 = call i32 @thread_lock(%struct.TYPE_26__* %215)
  br label %191

217:                                              ; preds = %191
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 10
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %236

222:                                              ; preds = %217
  %223 = load i64, i64* @FALSE, align 8
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 10
  store i64 %223, i64* %225, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 9
  %228 = call i64 @timer_call_cancel(i32* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %222
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, -1
  store i64 %234, i64* %232, align 8
  br label %235

235:                                              ; preds = %230, %222
  br label %236

236:                                              ; preds = %235, %217
  store i32 1, i32* %11, align 4
  br label %237

237:                                              ; preds = %259, %236
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp sgt i64 %240, 0
  br i1 %241, label %242, label %263

242:                                              ; preds = %237
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %244 = call i32 @thread_unlock(%struct.TYPE_26__* %243)
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @splx(i32 %245)
  %247 = load i32, i32* %11, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %11, align 4
  %249 = call i32 @delay(i32 %247)
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* @USEC_PER_SEC, align 4
  %252 = icmp sgt i32 %250, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %242
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @panic(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_26__* %254, i64 %257)
  br label %259

259:                                              ; preds = %253, %242
  %260 = call i32 (...) @splsched()
  store i32 %260, i32* %4, align 4
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %262 = call i32 @thread_lock(%struct.TYPE_26__* %261)
  br label %237

263:                                              ; preds = %237
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %270 = call i32 @stack_free_reserved(%struct.TYPE_26__* %269)
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 3
  store i64 0, i64* %272, align 8
  br label %273

273:                                              ; preds = %268, %263
  %274 = load i32, i32* @TH_TERMINATE, align 4
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %275, i32 0, i32 8
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 8
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %280 = load i32, i32* @THREAD_UNINT, align 4
  %281 = call i32 @thread_mark_wait_locked(%struct.TYPE_26__* %279, i32 %280)
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @TH_SFLAG_WAITQ_PROMOTED, align 4
  %286 = and i32 %284, %285
  %287 = icmp eq i32 %286, 0
  %288 = zext i1 %287 to i32
  %289 = call i32 @assert(i32 %288)
  %290 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %291 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @TH_SFLAG_RW_PROMOTED, align 4
  %294 = and i32 %292, %293
  %295 = icmp eq i32 %294, 0
  %296 = zext i1 %295 to i32
  %297 = call i32 @assert(i32 %296)
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @TH_SFLAG_EXEC_PROMOTED, align 4
  %302 = and i32 %300, %301
  %303 = icmp eq i32 %302, 0
  %304 = zext i1 %303 to i32
  %305 = call i32 @assert(i32 %304)
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @TH_SFLAG_PROMOTED, align 4
  %310 = and i32 %308, %309
  %311 = icmp eq i32 %310, 0
  %312 = zext i1 %311 to i32
  %313 = call i32 @assert(i32 %312)
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 4
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %316, 0
  %318 = zext i1 %317 to i32
  %319 = call i32 @assert(i32 %318)
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 5
  %322 = load i64, i64* %321, align 8
  %323 = icmp eq i64 %322, 0
  %324 = zext i1 %323 to i32
  %325 = call i32 @assert(i32 %324)
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 7
  %328 = load i32*, i32** %327, align 8
  %329 = icmp eq i32* %328, null
  %330 = zext i1 %329 to i32
  %331 = call i32 @assert(i32 %330)
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %333 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i32 0, i32 6
  %334 = load i64, i64* %333, align 8
  %335 = icmp eq i64 %334, 0
  %336 = zext i1 %335 to i32
  %337 = call i32 @assert(i32 %336)
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %339 = call i32 @thread_unlock(%struct.TYPE_26__* %338)
  %340 = load i64, i64* @thread_terminate_continue, align 8
  %341 = trunc i64 %340 to i32
  %342 = call i32 @thread_block(i32 %341)
  ret void
}

declare dso_local %struct.TYPE_26__* @current_thread(...) #1

declare dso_local i32 @pal_thread_terminate_self(%struct.TYPE_26__*) #1

declare dso_local i32 @DTRACE_PROC(i32) #1

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_26__*) #1

declare dso_local i32 @ipc_thread_disable(%struct.TYPE_26__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_26__*) #1

declare dso_local i32 @thread_sched_call(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @thread_lock(%struct.TYPE_26__*) #1

declare dso_local i32 @thread_depress_abort_locked(%struct.TYPE_26__*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_26__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @work_interval_thread_terminate(%struct.TYPE_26__*) #1

declare dso_local i32 @thread_policy_reset(%struct.TYPE_26__*) #1

declare dso_local i32 @bank_swap_thread_bank_ledger(%struct.TYPE_26__*, i32*) #1

declare dso_local i64 @bsd_hasthreadname(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bsd_getthreadname(i32, i8*) #1

declare dso_local i32 @kernel_debug_string_simple(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @uthread_cleanup(%struct.TYPE_27__*, i32, i32*) #1

declare dso_local i32 @task_is_exec_copy(%struct.TYPE_27__*) #1

declare dso_local i32 @kdbg_trace_data(i32*, i64*, i64*) #1

declare dso_local i32 @KDBG_RELEASE(i32, i64, i64, ...) #1

declare dso_local i32 @hw_atomic_sub(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @kdbg_trace_string(i32*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @proc_encode_exit_exception_code(i32*) #1

declare dso_local i32 @proc_exit(i32*) #1

declare dso_local i32 @task_deliver_crash_notification(%struct.TYPE_27__*, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @task_lock(%struct.TYPE_27__*) #1

declare dso_local i64 @task_is_a_corpse_fork(%struct.TYPE_27__*) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_27__*) #1

declare dso_local i32 @uthread_cred_free(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_26__*, i64) #1

declare dso_local i64 @timer_call_cancel(i32*) #1

declare dso_local i32 @stack_free_reserved(%struct.TYPE_26__*) #1

declare dso_local i32 @thread_mark_wait_locked(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
