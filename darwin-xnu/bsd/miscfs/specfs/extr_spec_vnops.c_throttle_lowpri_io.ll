; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_lowpri_io.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_lowpri_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i8*, i32, %struct._throttle_io_info_t*, i32, i32 }
%struct._throttle_io_info_t = type { i64, i32*, i32*, i32, i32, i32* }

@THROTTLE_LEVEL_NONE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_THROTTLED = common dso_local global i32 0, align 4
@THROTTLE_ENGAGED = common dso_local global i32 0, align 4
@uu_throttlelist = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_END = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_START = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_THROTTLE = common dso_local global i32 0, align 4
@PROCESS_THROTTLED = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@throttle_windows_msecs = common dso_local global i32* null, align 8
@throttled_count = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"throttle_lowpri_io\00", align 1
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @throttle_lowpri_io(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct._throttle_io_info_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** @THROTTLE_LEVEL_NONE, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %11, align 4
  %16 = call i32 (...) @current_thread()
  %17 = call %struct.TYPE_5__* @get_bsdthread_info(i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %350

23:                                               ; preds = %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 6
  %26 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %25, align 8
  store %struct._throttle_io_info_t* %26, %struct._throttle_io_info_t** %5, align 8
  %27 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %28 = icmp eq %struct._throttle_io_info_t* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  store i64 0, i64* %2, align 8
  br label %350

34:                                               ; preds = %23
  %35 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %36 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %35, i32 0, i32 4
  %37 = call i32 @lck_mtx_lock(i32* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @THROTTLE_LEVEL_THROTTLED, align 4
  %42 = icmp slt i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %281

48:                                               ; preds = %34
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %51, %48
  %58 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %59 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %279, %159, %57
  %64 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %65 = call i32 @throttle_io_will_be_throttled_internal(%struct._throttle_io_info_t* %64, i32* %7, i32* %8)
  store i32 %65, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %280

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @THROTTLE_ENGAGED, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %67
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %280

75:                                               ; preds = %71
  %76 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %77 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %280

82:                                               ; preds = %75
  %83 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %84 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp sge i64 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %280

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %67
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @THROTTLE_LEVEL_THROTTLED, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %93
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %107 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = load i32, i32* @uu_throttlelist, align 4
  %116 = call i32 @TAILQ_REMOVE(i32* %113, %struct.TYPE_5__* %114, i32 %115)
  %117 = load i8*, i8** @THROTTLE_LEVEL_NONE, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @TRUE, align 4
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %105, %99, %93
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @THROTTLE_LEVEL_THROTTLED, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @throttle_add_to_list(%struct._throttle_io_info_t* %129, %struct.TYPE_5__* %130, i32 %131, i32 %132)
  %134 = load i32, i32* @THROTTLE_LEVEL_END, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %281

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %122
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @THROTTLE_LEVEL_START, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @THROTTLE_LEVEL_END, align 4
  %145 = icmp sle i32 %143, %144
  br label %146

146:                                              ; preds = %142, %138
  %147 = phi i1 [ false, %138 ], [ %145, %142 ]
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load i32, i32* @FALSE, align 4
  %151 = call i32 @ml_set_interrupts_enabled(i32 %150)
  store i32 %151, i32* %12, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 7
  %154 = call i32 @lck_spin_lock(i32* %153)
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %180

159:                                              ; preds = %146
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 7
  %162 = call i32 @lck_spin_unlock(i32* %161)
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @ml_set_interrupts_enabled(i32 %163)
  %165 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %166 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %165, i32 0, i32 4
  %167 = call i32 @lck_mtx_yield(i32* %166)
  %168 = load i32, i32* @DBG_FSRW, align 4
  %169 = call i32 @FSDBG_CODE(i32 %168, i32 103)
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @thread_tid(i32 %172)
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %169, i32 %173, i32 %176, i32 0, i32 0, i32 0)
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  store i32 0, i32* %179, align 8
  br label %63

180:                                              ; preds = %146
  %181 = load i32, i32* @DBG_THROTTLE, align 4
  %182 = load i32, i32* @PROCESS_THROTTLED, align 4
  %183 = call i32 @FSDBG_CODE(i32 %181, i32 %182)
  %184 = load i32, i32* @DBG_FUNC_NONE, align 4
  %185 = or i32 %183, %184
  %186 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %187 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 (...) @proc_selfpid()
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %185, i32 %192, i32 %193, i32 %194, i32 %195, i32 0)
  %197 = load i32, i32* %9, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %226

199:                                              ; preds = %180
  %200 = load i32, i32* @DBG_FSRW, align 4
  %201 = call i32 @FSDBG_CODE(i32 %200, i32 97)
  %202 = load i32, i32* @DBG_FUNC_START, align 4
  %203 = or i32 %201, %202
  %204 = load i32*, i32** @throttle_windows_msecs, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %210 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %217 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %203, i32 %208, i32 %215, i32 %218, i32 0, i32 0)
  %220 = load i32*, i32** @throttled_count, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %199, %180
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %228, align 8
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 2
  %231 = ptrtoint i32* %230 to i32
  %232 = load i32, i32* @THREAD_UNINT, align 4
  %233 = call i32 @assert_wait(i32 %231, i32 %232)
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 5
  store i32 1, i32* %235, align 8
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 7
  %238 = call i32 @lck_spin_unlock(i32* %237)
  %239 = load i32, i32* %12, align 4
  %240 = call i32 @ml_set_interrupts_enabled(i32 %239)
  %241 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %242 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %241, i32 0, i32 4
  %243 = call i32 @lck_mtx_unlock(i32* %242)
  %244 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %245 = call i32 @thread_block(i32 %244)
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 4
  store i8* null, i8** %247, align 8
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 5
  store i32 0, i32* %249, align 8
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 3
  store i32 0, i32* %251, align 8
  %252 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %253 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %252, i32 0, i32 4
  %254 = call i32 @lck_mtx_lock(i32* %253)
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %9, align 4
  %257 = load i32, i32* %3, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %226
  %260 = load i32, i32* @FALSE, align 4
  store i32 %260, i32* %11, align 4
  br label %279

261:                                              ; preds = %226
  %262 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %263 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* %10, align 8
  %266 = icmp slt i64 %264, %265
  br i1 %266, label %276, label %267

267:                                              ; preds = %261
  %268 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %269 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* %10, align 8
  %272 = sub nsw i64 %270, %271
  %273 = load i32, i32* %3, align 4
  %274 = sext i32 %273 to i64
  %275 = icmp sge i64 %272, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %267, %261
  %277 = load i32, i32* @FALSE, align 4
  store i32 %277, i32* %11, align 4
  store i32 0, i32* %3, align 4
  br label %278

278:                                              ; preds = %276, %267
  br label %279

279:                                              ; preds = %278, %259
  br label %63

280:                                              ; preds = %91, %81, %74, %63
  br label %281

281:                                              ; preds = %280, %136, %47
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @THROTTLE_LEVEL_THROTTLED, align 4
  %286 = icmp sge i32 %284, %285
  br i1 %286, label %287, label %303

287:                                              ; preds = %281
  %288 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %289 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %288, i32 0, i32 5
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %290, i64 %294
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %297 = load i32, i32* @uu_throttlelist, align 4
  %298 = call i32 @TAILQ_REMOVE(i32* %295, %struct.TYPE_5__* %296, i32 %297)
  %299 = load i8*, i8** @THROTTLE_LEVEL_NONE, align 8
  %300 = ptrtoint i8* %299 to i32
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 4
  br label %303

303:                                              ; preds = %287, %281
  %304 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %305 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %304, i32 0, i32 4
  %306 = call i32 @lck_mtx_unlock(i32* %305)
  %307 = load i32, i32* %9, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %339

309:                                              ; preds = %303
  %310 = load i32, i32* @DBG_FSRW, align 4
  %311 = call i32 @FSDBG_CODE(i32 %310, i32 97)
  %312 = load i32, i32* @DBG_FUNC_END, align 4
  %313 = or i32 %311, %312
  %314 = load i32*, i32** @throttle_windows_msecs, align 8
  %315 = load i32, i32* %7, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %320 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %327 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %313, i32 %318, i32 %325, i32 %328, i32 0, i32 0)
  %330 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %331 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %9, align 4
  %338 = call i32 @throttle_update_proc_stats(i32 %336, i32 %337)
  br label %339

339:                                              ; preds = %309, %303
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 6
  store %struct._throttle_io_info_t* null, %struct._throttle_io_info_t** %341, align 8
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 1
  store i32 0, i32* %343, align 8
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 0
  store i64 0, i64* %345, align 8
  %346 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %347 = call i32 @throttle_info_rel(%struct._throttle_io_info_t* %346)
  %348 = load i32, i32* %9, align 4
  %349 = sext i32 %348 to i64
  store i64 %349, i64* %2, align 8
  br label %350

350:                                              ; preds = %339, %29, %22
  %351 = load i64, i64* %2, align 8
  ret i64 %351
}

declare dso_local %struct.TYPE_5__* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @throttle_io_will_be_throttled_internal(%struct._throttle_io_info_t*, i32*, i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @throttle_add_to_list(%struct._throttle_io_info_t*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @lck_spin_lock(i32*) #1

declare dso_local i32 @lck_spin_unlock(i32*) #1

declare dso_local i32 @lck_mtx_yield(i32*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i32 @thread_tid(i32) #1

declare dso_local i32 @proc_selfpid(...) #1

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i32 @throttle_update_proc_stats(i32, i32) #1

declare dso_local i32 @throttle_info_rel(%struct._throttle_io_info_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
