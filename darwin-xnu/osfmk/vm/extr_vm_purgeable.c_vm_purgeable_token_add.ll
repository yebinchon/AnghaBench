; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_token_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_token_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.token = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i32 }

@vm_page_queue_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@token_free_idx = common dso_local global i32 0, align 4
@tokens = common dso_local global %struct.token* null, align 8
@token_init_idx = common dso_local global i64 0, align 8
@token_q_max_cnt = common dso_local global i64 0, align 8
@token_q_allocating = common dso_local global i32 0, align 4
@LCK_SLEEP_DEFAULT = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i64 0, align 8
@KERN_ABORTED = common dso_local global i64 0, align 8
@token_q_cur_size = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TOKEN_COUNT_MAX = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@kernel_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_OSFMK = common dso_local global i32 0, align 4
@PURGEABLE_Q_TYPE_FIFO = common dso_local global i64 0, align 8
@PURGEABLE_Q_TYPE_MAX = common dso_local global i32 0, align 4
@token_new_pagecount = common dso_local global i32 0, align 4
@purgeable_queues = common dso_local global %struct.TYPE_6__* null, align 8
@PURGEABLE_Q_TYPE_OBSOLETE = common dso_local global i64 0, align 8
@available_for_purge = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@DBG_MACH_VM = common dso_local global i32 0, align 4
@PURGEABLE_Q_TYPE_LIFO = common dso_local global i64 0, align 8
@TOKEN_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_purgeable_token_add(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.token*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.token*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %13 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %14 = call i32 @LCK_MTX_ASSERT(i32* @vm_page_queue_lock, i32 %13)
  br label %15

15:                                               ; preds = %116, %53, %1
  %16 = load i32, i32* @token_free_idx, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i32, i32* @token_free_idx, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %4, align 8
  %21 = load %struct.token*, %struct.token** @tokens, align 8
  %22 = load i32, i32* @token_free_idx, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.token, %struct.token* %21, i64 %23
  %25 = getelementptr inbounds %struct.token, %struct.token* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* @token_free_idx, align 4
  br label %119

27:                                               ; preds = %15
  %28 = load i64, i64* @token_init_idx, align 8
  %29 = load i64, i64* @token_q_max_cnt, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* @token_init_idx, align 8
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* @token_init_idx, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* @token_init_idx, align 8
  br label %118

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i32, i32* @token_q_allocating, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32, i32* @LCK_SLEEP_DEFAULT, align 4
  %41 = load i32, i32* @THREAD_UNINT, align 4
  %42 = call i64 @lck_mtx_sleep(i32* @vm_page_queue_lock, i32 %40, i32 ptrtoint (i32* @token_q_allocating to i32), i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @THREAD_AWAKENED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* @KERN_ABORTED, align 8
  store i64 %47, i64* %2, align 8
  br label %258

48:                                               ; preds = %39
  br label %36

49:                                               ; preds = %36
  %50 = load i64, i64* @token_init_idx, align 8
  %51 = load i64, i64* @token_q_max_cnt, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %15

54:                                               ; preds = %49
  store i32 1, i32* @token_q_allocating, align 4
  %55 = call i32 (...) @vm_page_unlock_queues()
  %56 = load i32, i32* @token_q_cur_size, align 4
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %60, 24
  %62 = load i32, i32* @TOKEN_COUNT_MAX, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %66, i64* %9, align 8
  br label %86

67:                                               ; preds = %54
  %68 = load i32, i32* @token_q_cur_size, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32, i32* @kernel_map, align 4
  %72 = load %struct.token*, %struct.token** @tokens, align 8
  %73 = ptrtoint %struct.token* %72 to i32
  %74 = load i32, i32* @token_q_cur_size, align 4
  %75 = bitcast %struct.token** %7 to i32*
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @VM_KERN_MEMORY_OSFMK, align 4
  %78 = call i64 @kmem_realloc(i32 %71, i32 %73, i32 %74, i32* %75, i32 %76, i32 %77)
  store i64 %78, i64* %9, align 8
  br label %85

79:                                               ; preds = %67
  %80 = load i32, i32* @kernel_map, align 4
  %81 = bitcast %struct.token** %7 to i32*
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @VM_KERN_MEMORY_OSFMK, align 4
  %84 = call i64 @kmem_alloc(i32 %80, i32* %81, i32 %82, i32 %83)
  store i64 %84, i64* %9, align 8
  br label %85

85:                                               ; preds = %79, %70
  br label %86

86:                                               ; preds = %85, %65
  %87 = call i32 (...) @vm_page_lock_queues()
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  store i32 0, i32* @token_q_allocating, align 4
  %91 = call i32 @thread_wakeup(i32 ptrtoint (i32* @token_q_allocating to i32))
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %2, align 8
  br label %258

93:                                               ; preds = %86
  %94 = load %struct.token*, %struct.token** @tokens, align 8
  store %struct.token* %94, %struct.token** %10, align 8
  %95 = load %struct.token*, %struct.token** %7, align 8
  store %struct.token* %95, %struct.token** @tokens, align 8
  %96 = load i32, i32* @token_q_cur_size, align 4
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* @token_q_cur_size, align 4
  %98 = load i32, i32* @token_q_cur_size, align 4
  %99 = sext i32 %98 to i64
  %100 = udiv i64 %99, 24
  store i64 %100, i64* @token_q_max_cnt, align 8
  %101 = load i64, i64* @token_init_idx, align 8
  %102 = load i64, i64* @token_q_max_cnt, align 8
  %103 = icmp slt i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %93
  %109 = call i32 (...) @vm_page_unlock_queues()
  %110 = load i32, i32* @kernel_map, align 4
  %111 = load %struct.token*, %struct.token** %10, align 8
  %112 = ptrtoint %struct.token* %111 to i32
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @kmem_free(i32 %110, i32 %112, i32 %113)
  %115 = call i32 (...) @vm_page_lock_queues()
  br label %116

116:                                              ; preds = %108, %93
  store i32 0, i32* @token_q_allocating, align 4
  %117 = call i32 @thread_wakeup(i32 ptrtoint (i32* @token_q_allocating to i32))
  br label %15

118:                                              ; preds = %31
  br label %119

119:                                              ; preds = %118, %18
  %120 = load i64, i64* %4, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i64, i64* @PURGEABLE_Q_TYPE_FIFO, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %163, %119
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @PURGEABLE_Q_TYPE_MAX, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %166

129:                                              ; preds = %125
  %130 = load i32, i32* @token_new_pagecount, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @purgeable_queues, align 8
  %132 = load i32, i32* %5, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %130
  store i32 %137, i32* %135, align 4
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp sge i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @TOKEN_COUNT_MAX, align 4
  %144 = icmp sle i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @purgeable_queues, align 8
  %149 = load i32, i32* %5, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 %147, i32* %152, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @purgeable_queues, align 8
  %154 = load i32, i32* %5, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  br label %163

163:                                              ; preds = %129
  %164 = load i32, i32* %5, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %5, align 4
  br label %125

166:                                              ; preds = %125
  store i32 0, i32* @token_new_pagecount, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @PURGEABLE_Q_TYPE_OBSOLETE, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.token*, %struct.token** @tokens, align 8
  %177 = load i64, i64* %4, align 8
  %178 = getelementptr inbounds %struct.token, %struct.token* %176, i64 %177
  %179 = getelementptr inbounds %struct.token, %struct.token* %178, i32 0, i32 1
  store i64 %175, i64* %179, align 8
  br label %185

180:                                              ; preds = %166
  %181 = load %struct.token*, %struct.token** @tokens, align 8
  %182 = load i64, i64* %4, align 8
  %183 = getelementptr inbounds %struct.token, %struct.token* %181, i64 %182
  %184 = getelementptr inbounds %struct.token, %struct.token* %183, i32 0, i32 1
  store i64 0, i64* %184, align 8
  br label %185

185:                                              ; preds = %180, %172
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  store i64 0, i64* %187, align 8
  %188 = load %struct.token*, %struct.token** @tokens, align 8
  %189 = load i64, i64* %4, align 8
  %190 = getelementptr inbounds %struct.token, %struct.token* %188, i64 %189
  %191 = getelementptr inbounds %struct.token, %struct.token* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %217

196:                                              ; preds = %185
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br label %206

206:                                              ; preds = %201, %196
  %207 = phi i1 [ false, %196 ], [ %205, %201 ]
  %208 = zext i1 %207 to i32
  %209 = call i32 @assert(i32 %208)
  %210 = load i64, i64* %4, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 3
  store i64 %210, i64* %212, align 8
  %213 = load %struct.token*, %struct.token** @tokens, align 8
  %214 = load i64, i64* %4, align 8
  %215 = getelementptr inbounds %struct.token, %struct.token* %213, i64 %214
  %216 = getelementptr inbounds %struct.token, %struct.token* %215, i32 0, i32 2
  store i64 0, i64* %216, align 8
  br label %233

217:                                              ; preds = %185
  %218 = load i64, i64* %4, align 8
  %219 = trunc i64 %218 to i32
  %220 = load %struct.token*, %struct.token** @tokens, align 8
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.token, %struct.token* %220, i64 %223
  %225 = getelementptr inbounds %struct.token, %struct.token* %224, i32 0, i32 0
  store i32 %219, i32* %225, align 8
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.token*, %struct.token** @tokens, align 8
  %230 = load i64, i64* %4, align 8
  %231 = getelementptr inbounds %struct.token, %struct.token* %229, i64 %230
  %232 = getelementptr inbounds %struct.token, %struct.token* %231, i32 0, i32 2
  store i64 %228, i64* %232, align 8
  br label %233

233:                                              ; preds = %217, %206
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %253

238:                                              ; preds = %233
  %239 = load %struct.token*, %struct.token** @tokens, align 8
  %240 = load i64, i64* %4, align 8
  %241 = getelementptr inbounds %struct.token, %struct.token* %239, i64 %240
  %242 = getelementptr inbounds %struct.token, %struct.token* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp sgt i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = load i64, i64* %4, align 8
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 4
  store i64 %246, i64* %248, align 8
  br label %252

249:                                              ; preds = %238
  %250 = load i32, i32* @available_for_purge, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* @available_for_purge, align 4
  br label %252

252:                                              ; preds = %249, %245
  br label %253

253:                                              ; preds = %252, %233
  %254 = load i64, i64* %4, align 8
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 2
  store i64 %254, i64* %256, align 8
  %257 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %257, i64* %2, align 8
  br label %258

258:                                              ; preds = %253, %90, %46
  %259 = load i64, i64* %2, align 8
  ret i64 %259
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i64 @lck_mtx_sleep(i32*, i32, i32, i32) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i64 @kmem_realloc(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @kmem_alloc(i32, i32*, i32, i32) #1

declare dso_local i32 @vm_page_lock_queues(...) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kmem_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
