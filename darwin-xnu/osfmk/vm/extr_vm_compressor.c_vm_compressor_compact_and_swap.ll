; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_compact_and_swap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_compact_and_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i64, i32, i64, i64, i32, i32 }

@fastwake_warmup = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@c_segment_warmup_count = common dso_local global i64 0, align 8
@DBG_HIBERNATE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@first_c_segment_to_warm_generation_id = common dso_local global i64 0, align 8
@last_c_segment_to_warm_generation_id = common dso_local global i32 0, align 4
@c_swappedout_list_head = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@c_age_list_head = common dso_local global i32 0, align 4
@compaction_swapper_abort = common dso_local global i64 0, align 8
@hibernate_flushing = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"vm_compressor_flush - hibernate_should_abort returned TRUE\0A\00", align 1
@hibernate_no_swapspace = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"vm_compressor_flush - out of swap space\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"vm_compressor_flush - unpinned swap files\0A\00", align 1
@hibernate_in_progress_with_pinned_swap = common dso_local global i64 0, align 8
@vm_swapfile_total_segs_alloced = common dso_local global i64 0, align 8
@vm_swapfile_total_segs_used = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"vm_compressor_flush - out of pinned swap space\0A\00", align 1
@hibernate_flushing_deadline = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"vm_compressor_flush - failed to finish before deadline\0A\00", align 1
@c_swapout_count = common dso_local global i64 0, align 8
@C_SWAPOUT_LIMIT = common dso_local global i64 0, align 8
@compaction_swapper_running = common dso_local global i32 0, align 4
@THREAD_INTERRUPTIBLE = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@c_list_lock = common dso_local global i32* null, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@C_ON_AGE_Q = common dso_local global i64 0, align 8
@c_generation_id_flush_barrier = common dso_local global i64 0, align 8
@c_seg_major_compact_stats = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@VM_CONFIG_SWAP_IS_ACTIVE = common dso_local global i64 0, align 8
@C_ON_SWAPOUT_Q = common dso_local global i32 0, align 4
@vm_swapout_ripe_segments = common dso_local global i64 0, align 8
@c_overage_swapped_count = common dso_local global i64 0, align 8
@c_overage_swapped_limit = common dso_local global i64 0, align 8
@VM_CONFIG_SWAP_IS_PRESENT = common dso_local global i32 0, align 4
@vm_ripe_target_age = common dso_local global i64 0, align 8
@C_ON_MAJORCOMPACT_Q = common dso_local global i32 0, align 4
@C_SEG_BUFSIZE = common dso_local global i64 0, align 8
@c_swapout_list_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_compressor_compact_and_swap(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* @fastwake_warmup, align 8
  %12 = load i64, i64* @TRUE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = load i64, i64* @c_segment_warmup_count, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i32, i32* @DBG_HIBERNATE, align 4
  %17 = call i32 @IOKDBG_CODE(i32 %16, i32 11)
  %18 = load i32, i32* @DBG_FUNC_START, align 4
  %19 = or i32 %17, %18
  %20 = load i64, i64* @c_segment_warmup_count, align 8
  %21 = load i64, i64* @first_c_segment_to_warm_generation_id, align 8
  %22 = load i32, i32* @last_c_segment_to_warm_generation_id, align 4
  %23 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %19, i64 %20, i64 %21, i32 %22, i32 0, i32 0)
  %24 = load i64, i64* @FALSE, align 8
  %25 = call i32 @do_fastwake_warmup(i32* @c_swappedout_list_head, i64 %24)
  %26 = load i32, i32* @DBG_HIBERNATE, align 4
  %27 = call i32 @IOKDBG_CODE(i32 %26, i32 11)
  %28 = load i32, i32* @DBG_FUNC_END, align 4
  %29 = or i32 %27, %28
  %30 = load i64, i64* @c_segment_warmup_count, align 8
  %31 = load i64, i64* @c_segment_warmup_count, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub nsw i64 %31, %32
  %34 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %29, i64 %30, i64 %33, i32 0, i32 0, i32 0)
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* @fastwake_warmup, align 8
  br label %36

36:                                               ; preds = %14, %1
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @vm_compressor_do_delayed_compactions(i64 %37)
  %39 = load i64, i64* %2, align 8
  %40 = call i32 @vm_compressor_age_swapped_in_segments(i64 %39)
  %41 = call i32 @clock_get_system_nanotime(i64* %6, i32* %7)
  br label %42

42:                                               ; preds = %361, %185, %169, %112, %36
  %43 = call i64 @queue_empty(i32* @c_age_list_head)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* @compaction_swapper_abort, align 8
  %47 = icmp eq i64 %46, 0
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %362

50:                                               ; preds = %48
  %51 = load i64, i64* @hibernate_flushing, align 8
  %52 = load i64, i64* @TRUE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %50
  %55 = call i64 (...) @hibernate_should_abort()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @HIBLOG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %362

59:                                               ; preds = %54
  %60 = load i64, i64* @hibernate_no_swapspace, align 8
  %61 = load i64, i64* @TRUE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @HIBLOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %362

65:                                               ; preds = %59
  %66 = call i64 (...) @vm_swap_files_pinned()
  %67 = load i64, i64* @FALSE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @HIBLOG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %362

71:                                               ; preds = %65
  %72 = load i64, i64* @hibernate_in_progress_with_pinned_swap, align 8
  %73 = load i64, i64* @TRUE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i64, i64* @vm_swapfile_total_segs_alloced, align 8
  %77 = load i64, i64* @vm_swapfile_total_segs_used, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 @HIBLOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %362

81:                                               ; preds = %75, %71
  %82 = call i32 @clock_get_system_nanotime(i64* %9, i32* %7)
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @hibernate_flushing_deadline, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @HIBLOG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %362

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %50
  %90 = load i64, i64* @c_swapout_count, align 8
  %91 = load i64, i64* @C_SWAPOUT_LIMIT, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load i32, i32* @THREAD_INTERRUPTIBLE, align 4
  %95 = load i32, i32* @NSEC_PER_USEC, align 4
  %96 = mul nsw i32 1000, %95
  %97 = call i32 @assert_wait_timeout(i32 ptrtoint (i32* @compaction_swapper_running to i32), i32 %94, i32 100, i32 %96)
  %98 = load i32*, i32** @c_list_lock, align 8
  %99 = call i32 @lck_mtx_unlock_always(i32* %98)
  %100 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %101 = call i32 @thread_block(i32 %100)
  %102 = load i32*, i32** @c_list_lock, align 8
  %103 = call i32 @lck_mtx_lock_spin_always(i32* %102)
  br label %104

104:                                              ; preds = %93, %89
  %105 = load i64, i64* %2, align 8
  %106 = call i32 @vm_compressor_do_delayed_compactions(i64 %105)
  %107 = load i64, i64* %2, align 8
  %108 = call i32 @vm_compressor_age_swapped_in_segments(i64 %107)
  %109 = load i64, i64* @c_swapout_count, align 8
  %110 = load i64, i64* @C_SWAPOUT_LIMIT, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %42

113:                                              ; preds = %104
  %114 = load i64, i64* %2, align 8
  %115 = load i64, i64* @FALSE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %113
  %118 = load i32*, i32** @c_list_lock, align 8
  %119 = call i32 @lck_mtx_unlock_always(i32* %118)
  %120 = call i64 (...) @compressor_needs_to_swap()
  store i64 %120, i64* %10, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* @TRUE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = call i64 (...) @vm_swap_low_on_space()
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 (...) @vm_compressor_take_paging_space_action()
  br label %129

129:                                              ; preds = %127, %124, %117
  %130 = load i32*, i32** @c_list_lock, align 8
  %131 = call i32 @lck_mtx_lock_spin_always(i32* %130)
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* @FALSE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %362

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %113
  %138 = call i64 @queue_empty(i32* @c_age_list_head)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %362

141:                                              ; preds = %137
  %142 = call i64 @queue_first(i32* @c_age_list_head)
  %143 = inttoptr i64 %142 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %143, %struct.TYPE_13__** %3, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @C_ON_AGE_Q, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i64, i64* %2, align 8
  %152 = load i64, i64* @TRUE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %141
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @c_generation_id_flush_barrier, align 8
  %159 = icmp sgt i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %362

161:                                              ; preds = %154, %141
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 4
  %164 = call i32 @lck_mtx_lock_spin_always(i32* %163)
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %161
  %170 = load i32*, i32** @c_list_lock, align 8
  %171 = call i32 @lck_mtx_unlock_always(i32* %170)
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %173 = call i32 @c_seg_wait_on_busy(%struct.TYPE_13__* %172)
  %174 = load i32*, i32** @c_list_lock, align 8
  %175 = call i32 @lck_mtx_lock_spin_always(i32* %174)
  br label %42

176:                                              ; preds = %161
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %178 = call i32 @C_SEG_BUSY(%struct.TYPE_13__* %177)
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %180 = load i64, i64* @FALSE, align 8
  %181 = load i64, i64* @TRUE, align 8
  %182 = load i64, i64* @TRUE, align 8
  %183 = call i64 @c_seg_do_minor_compaction_and_unlock(%struct.TYPE_13__* %179, i64 %180, i64 %181, i64 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %176
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @c_seg_major_compact_stats, i32 0, i32 2), align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @c_seg_major_compact_stats, i32 0, i32 2), align 4
  br label %42

188:                                              ; preds = %176
  %189 = load i64, i64* @TRUE, align 8
  store i64 %189, i64* %5, align 8
  br label %190

190:                                              ; preds = %267, %246, %230, %188
  %191 = load i64, i64* %5, align 8
  %192 = load i64, i64* @TRUE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %272

194:                                              ; preds = %190
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @assert(i32 %197)
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 8
  %201 = call i64 @queue_next(i32* %200)
  %202 = inttoptr i64 %201 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %202, %struct.TYPE_13__** %4, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %204 = ptrtoint %struct.TYPE_13__* %203 to i32
  %205 = call i64 @queue_end(i32* @c_age_list_head, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %194
  br label %272

208:                                              ; preds = %194
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @C_ON_AGE_Q, align 8
  %213 = icmp eq i64 %211, %212
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %218 = call i64 @c_seg_major_compact_ok(%struct.TYPE_13__* %216, %struct.TYPE_13__* %217)
  %219 = load i64, i64* @FALSE, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %208
  br label %272

222:                                              ; preds = %208
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 4
  %225 = call i32 @lck_mtx_lock_spin_always(i32* %224)
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %222
  %231 = load i32*, i32** @c_list_lock, align 8
  %232 = call i32 @lck_mtx_unlock_always(i32* %231)
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %234 = call i32 @c_seg_wait_on_busy(%struct.TYPE_13__* %233)
  %235 = load i32*, i32** @c_list_lock, align 8
  %236 = call i32 @lck_mtx_lock_spin_always(i32* %235)
  br label %190

237:                                              ; preds = %222
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %239 = call i32 @C_SEG_BUSY(%struct.TYPE_13__* %238)
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %241 = load i64, i64* @FALSE, align 8
  %242 = load i64, i64* @TRUE, align 8
  %243 = load i64, i64* @TRUE, align 8
  %244 = call i64 @c_seg_do_minor_compaction_and_unlock(%struct.TYPE_13__* %240, i64 %241, i64 %242, i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %237
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @c_seg_major_compact_stats, i32 0, i32 2), align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @c_seg_major_compact_stats, i32 0, i32 2), align 4
  br label %190

249:                                              ; preds = %237
  %250 = load i32*, i32** @c_list_lock, align 8
  %251 = call i32 @lck_mtx_unlock_always(i32* %250)
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %254 = call i64 @c_seg_major_compact(%struct.TYPE_13__* %252, %struct.TYPE_13__* %253)
  store i64 %254, i64* %5, align 8
  %255 = load i64, i64* @TRUE, align 8
  %256 = call i32 @PAGE_REPLACEMENT_DISALLOWED(i64 %255)
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 4
  %259 = call i32 @lck_mtx_lock_spin_always(i32* %258)
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %261 = load i64, i64* @TRUE, align 8
  %262 = call i64 @c_seg_minor_compaction_and_unlock(%struct.TYPE_13__* %260, i64 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %249
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @c_seg_major_compact_stats, i32 0, i32 2), align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @c_seg_major_compact_stats, i32 0, i32 2), align 4
  br label %267

267:                                              ; preds = %264, %249
  %268 = load i64, i64* @FALSE, align 8
  %269 = call i32 @PAGE_REPLACEMENT_DISALLOWED(i64 %268)
  %270 = load i32*, i32** @c_list_lock, align 8
  %271 = call i32 @lck_mtx_lock_spin_always(i32* %270)
  br label %190

272:                                              ; preds = %221, %207, %190
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 4
  %275 = call i32 @lck_mtx_lock_spin_always(i32* %274)
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @assert(i32 %278)
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = call i32 @assert(i32 %285)
  %287 = load i64, i64* @VM_CONFIG_SWAP_IS_ACTIVE, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %272
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %291 = load i32, i32* @C_ON_SWAPOUT_Q, align 4
  %292 = load i64, i64* @FALSE, align 8
  %293 = call i32 @c_seg_switch_state(%struct.TYPE_13__* %290, i32 %291, i64 %292)
  br label %324

294:                                              ; preds = %272
  %295 = load i64, i64* @vm_swapout_ripe_segments, align 8
  %296 = load i64, i64* @TRUE, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %323

298:                                              ; preds = %294
  %299 = load i64, i64* @c_overage_swapped_count, align 8
  %300 = load i64, i64* @c_overage_swapped_limit, align 8
  %301 = icmp slt i64 %299, %300
  br i1 %301, label %302, label %323

302:                                              ; preds = %298
  %303 = load i32, i32* @VM_CONFIG_SWAP_IS_PRESENT, align 4
  %304 = call i32 @assert(i32 %303)
  %305 = load i64, i64* %6, align 8
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  %309 = sub nsw i64 %305, %308
  %310 = load i64, i64* @vm_ripe_target_age, align 8
  %311 = icmp sge i64 %309, %310
  br i1 %311, label %312, label %322

312:                                              ; preds = %302
  %313 = load i64, i64* @TRUE, align 8
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 6
  store i64 %313, i64* %315, align 8
  %316 = load i64, i64* @c_overage_swapped_count, align 8
  %317 = add nsw i64 %316, 1
  store i64 %317, i64* @c_overage_swapped_count, align 8
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %319 = load i32, i32* @C_ON_SWAPOUT_Q, align 4
  %320 = load i64, i64* @FALSE, align 8
  %321 = call i32 @c_seg_switch_state(%struct.TYPE_13__* %318, i32 %319, i64 %320)
  br label %322

322:                                              ; preds = %312, %302
  br label %323

323:                                              ; preds = %322, %298, %294
  br label %324

324:                                              ; preds = %323, %289
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @C_ON_AGE_Q, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %335

330:                                              ; preds = %324
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %332 = load i32, i32* @C_ON_MAJORCOMPACT_Q, align 4
  %333 = load i64, i64* @FALSE, align 8
  %334 = call i32 @c_seg_switch_state(%struct.TYPE_13__* %331, i32 %332, i64 %333)
  br label %347

335:                                              ; preds = %324
  %336 = load i64, i64* @C_SEG_BUFSIZE, align 8
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 5
  %339 = load i64, i64* %338, align 8
  %340 = sub nsw i64 %336, %339
  %341 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @c_seg_major_compact_stats, i32 0, i32 1), align 4
  %342 = sext i32 %341 to i64
  %343 = add nsw i64 %342, %340
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @c_seg_major_compact_stats, i32 0, i32 1), align 4
  %345 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @c_seg_major_compact_stats, i32 0, i32 0), align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @c_seg_major_compact_stats, i32 0, i32 0), align 4
  br label %347

347:                                              ; preds = %335, %330
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %349 = call i32 @C_SEG_WAKEUP_DONE(%struct.TYPE_13__* %348)
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 4
  %352 = call i32 @lck_mtx_unlock_always(i32* %351)
  %353 = load i64, i64* @c_swapout_count, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %347
  %356 = load i32*, i32** @c_list_lock, align 8
  %357 = call i32 @lck_mtx_unlock_always(i32* %356)
  %358 = call i32 @thread_wakeup(i32 ptrtoint (i32* @c_swapout_list_head to i32))
  %359 = load i32*, i32** @c_list_lock, align 8
  %360 = call i32 @lck_mtx_lock_spin_always(i32* %359)
  br label %361

361:                                              ; preds = %355, %347
  br label %42

362:                                              ; preds = %160, %140, %135, %86, %79, %69, %63, %57, %48
  ret void
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @IOKDBG_CODE(i32, i32) #1

declare dso_local i32 @do_fastwake_warmup(i32*, i64) #1

declare dso_local i32 @vm_compressor_do_delayed_compactions(i64) #1

declare dso_local i32 @vm_compressor_age_swapped_in_segments(i64) #1

declare dso_local i32 @clock_get_system_nanotime(i64*, i32*) #1

declare dso_local i64 @queue_empty(i32*) #1

declare dso_local i64 @hibernate_should_abort(...) #1

declare dso_local i32 @HIBLOG(i8*) #1

declare dso_local i64 @vm_swap_files_pinned(...) #1

declare dso_local i32 @assert_wait_timeout(i32, i32, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock_always(i32*) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i64 @compressor_needs_to_swap(...) #1

declare dso_local i64 @vm_swap_low_on_space(...) #1

declare dso_local i32 @vm_compressor_take_paging_space_action(...) #1

declare dso_local i64 @queue_first(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @c_seg_wait_on_busy(%struct.TYPE_13__*) #1

declare dso_local i32 @C_SEG_BUSY(%struct.TYPE_13__*) #1

declare dso_local i64 @c_seg_do_minor_compaction_and_unlock(%struct.TYPE_13__*, i64, i64, i64) #1

declare dso_local i64 @queue_next(i32*) #1

declare dso_local i64 @queue_end(i32*, i32) #1

declare dso_local i64 @c_seg_major_compact_ok(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @c_seg_major_compact(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @PAGE_REPLACEMENT_DISALLOWED(i64) #1

declare dso_local i64 @c_seg_minor_compaction_and_unlock(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @c_seg_switch_state(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i32 @C_SEG_WAKEUP_DONE(%struct.TYPE_13__*) #1

declare dso_local i32 @thread_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
