; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_put.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.swapout_io_completion = type { i32, i32, i64, i64, %struct.swapfile*, %struct.TYPE_3__* }
%struct.swapfile = type { i32, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_3__**, i32 }

@FALSE = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@vm_swap_data_lock = common dso_local global i32 0, align 4
@swf_global_queue = common dso_local global i32 0, align 4
@SWAP_READY = common dso_local global i32 0, align 4
@COMPRESSED_SWAP_CHUNK_SIZE = common dso_local global i32 0, align 4
@vm_swapfile_total_segs_used = common dso_local global i32 0, align 4
@vm_swapfile_create_thread_running = common dso_local global i32 0, align 4
@vm_swapfile_create_needed = common dso_local global i32 0, align 4
@hibernate_flushing = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@vm_num_swap_files = common dso_local global i32 0, align 4
@THREAD_INTERRUPTIBLE = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@hibernate_no_swapspace = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@vm_swap_put_failures = common dso_local global i32 0, align 4
@SWAP_DEVICE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i32 0, align 4
@SWAP_WRITE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_swap_put(i32 %0, i32* %1, i32 %2, %struct.TYPE_3__* %3, %struct.swapout_io_completion* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.swapout_io_completion*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.swapfile*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store %struct.swapout_io_completion* %4, %struct.swapout_io_completion** %11, align 8
  store i32 0, i32* %12, align 4
  store %struct.swapfile* null, %struct.swapfile** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = load i64, i64* @FALSE, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %18, align 4
  %27 = load i64, i64* @FALSE, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %19, align 4
  %29 = load i64, i64* @FALSE, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i8* null, i8** %24, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %5
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %5
  %37 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %37, i32* %6, align 4
  br label %269

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %197, %38
  %40 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  %41 = call i64 @queue_first(i32* @swf_global_queue)
  %42 = inttoptr i64 %41 to %struct.swapfile*
  store %struct.swapfile* %42, %struct.swapfile** %13, align 8
  br label %43

43:                                               ; preds = %145, %39
  %44 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %45 = ptrtoint %struct.swapfile* %44 to i32
  %46 = call i32 @queue_end(i32* @swf_global_queue, i32 %45)
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @FALSE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %150

50:                                               ; preds = %43
  %51 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %52 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %12, align 4
  %54 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %55 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SWAP_READY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %62 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %65 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ult i32 %63, %66
  br label %68

68:                                               ; preds = %60, %50
  %69 = phi i1 [ false, %50 ], [ %67, %60 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %145

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %96, %73
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %77 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %80, label %144

80:                                               ; preds = %74
  %81 = load i32, i32* %12, align 4
  %82 = lshr i32 %81, 3
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %12, align 4
  %84 = urem i32 %83, 8
  store i32 %84, i32* %17, align 4
  %85 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %86 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %17, align 4
  %93 = shl i32 1, %92
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %80
  %97 = load i32, i32* %12, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %74

99:                                               ; preds = %80
  %100 = load i32, i32* %17, align 4
  %101 = shl i32 1, %100
  %102 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %103 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %16, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %101
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @COMPRESSED_SWAP_CHUNK_SIZE, align 4
  %112 = mul i32 %110, %111
  store i32 %112, i32* %14, align 4
  %113 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %114 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %118 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %122 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %123 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %122, i32 0, i32 8
  %124 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %124, i64 %126
  store %struct.TYPE_3__* %121, %struct.TYPE_3__** %127, align 8
  %128 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %129 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* @vm_swapfile_total_segs_used, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @vm_swapfile_total_segs_used, align 4
  %133 = call i32 @clock_get_system_nanotime(i32* %22, i32* %23)
  %134 = load i32, i32* %22, align 4
  %135 = call i64 @VM_SWAP_SHOULD_CREATE(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %99
  %138 = load i32, i32* @vm_swapfile_create_thread_running, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = call i32 @thread_wakeup(i32 ptrtoint (i32* @vm_swapfile_create_needed to i32))
  br label %142

142:                                              ; preds = %140, %137, %99
  %143 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  br label %204

144:                                              ; preds = %74
  br label %145

145:                                              ; preds = %144, %68
  %146 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %147 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %146, i32 0, i32 7
  %148 = call i64 @queue_next(i32* %147)
  %149 = inttoptr i64 %148 to %struct.swapfile*
  store %struct.swapfile* %149, %struct.swapfile** %13, align 8
  br label %43

150:                                              ; preds = %43
  %151 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %152 = ptrtoint %struct.swapfile* %151 to i32
  %153 = call i32 @queue_end(i32* @swf_global_queue, i32 %152)
  %154 = call i32 @assert(i32 %153)
  %155 = call i32 @clock_get_system_nanotime(i32* %22, i32* %23)
  %156 = load i32, i32* %22, align 4
  %157 = call i64 @VM_SWAP_SHOULD_CREATE(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %150
  %160 = load i32, i32* @vm_swapfile_create_thread_running, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = call i32 @thread_wakeup(i32 ptrtoint (i32* @vm_swapfile_create_needed to i32))
  br label %164

164:                                              ; preds = %162, %159, %150
  %165 = load i64, i64* @hibernate_flushing, align 8
  %166 = load i64, i64* @FALSE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %22, align 4
  %170 = call i64 @VM_SWAP_SHOULD_CREATE(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %168, %164
  %173 = load i32, i32* @TRUE, align 4
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* @THREAD_INTERRUPTIBLE, align 4
  %175 = load i32, i32* @NSEC_PER_USEC, align 4
  %176 = mul nsw i32 1000, %175
  %177 = call i32 @assert_wait_timeout(i32 ptrtoint (i32* @vm_num_swap_files to i32), i32 %174, i32 1000, i32 %176)
  br label %180

178:                                              ; preds = %168
  %179 = load i32, i32* @TRUE, align 4
  store i32 %179, i32* @hibernate_no_swapspace, align 4
  br label %180

180:                                              ; preds = %178, %172
  %181 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* @TRUE, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %200

185:                                              ; preds = %180
  %186 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %187 = call i32 @thread_block(i32 %186)
  %188 = load i32, i32* %20, align 4
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* @FALSE, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %185
  %193 = load i64, i64* @hibernate_flushing, align 8
  %194 = load i32, i32* @TRUE, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp eq i64 %193, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i32, i32* @TRUE, align 4
  store i32 %198, i32* %20, align 4
  br label %39

199:                                              ; preds = %192, %185
  br label %200

200:                                              ; preds = %199, %180
  %201 = load i32, i32* @vm_swap_put_failures, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* @vm_swap_put_failures, align 4
  %203 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %203, i32* %6, align 4
  br label %269

204:                                              ; preds = %142
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @assert(i32 %207)
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @assert(i32 %211)
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  %219 = call i32 @assert(i32 %218)
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* @SWAP_DEVICE_SHIFT, align 4
  %222 = shl i32 %220, %221
  %223 = load i32, i32* %14, align 4
  %224 = or i32 %222, %223
  %225 = load i32*, i32** %8, align 8
  store i32 %224, i32* %225, align 4
  %226 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %11, align 8
  %227 = icmp ne %struct.swapout_io_completion* %226, null
  br i1 %227, label %228, label %245

228:                                              ; preds = %204
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %230 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %11, align 8
  %231 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %230, i32 0, i32 5
  store %struct.TYPE_3__* %229, %struct.TYPE_3__** %231, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %11, align 8
  %234 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %236 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %11, align 8
  %237 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %236, i32 0, i32 4
  store %struct.swapfile* %235, %struct.swapfile** %237, align 8
  %238 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %11, align 8
  %239 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %238, i32 0, i32 3
  store i64 0, i64* %239, align 8
  %240 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %11, align 8
  %241 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %240, i32 0, i32 2
  store i64 0, i64* %241, align 8
  %242 = load %struct.swapout_io_completion*, %struct.swapout_io_completion** %11, align 8
  %243 = getelementptr inbounds %struct.swapout_io_completion, %struct.swapout_io_completion* %242, i32 0, i32 1
  %244 = bitcast i32* %243 to i8*
  store i8* %244, i8** %24, align 8
  br label %245

245:                                              ; preds = %228, %204
  %246 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %247 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* @PAGE_SIZE_64, align 4
  %253 = sdiv i32 %251, %252
  %254 = load i32, i32* @SWAP_WRITE, align 4
  %255 = load i8*, i8** %24, align 8
  %256 = call i32 @vm_swapfile_io(i32 %248, i32 %249, i32 %250, i32 %253, i32 %254, i8* %255)
  store i32 %256, i32* %21, align 4
  %257 = load i32, i32* %21, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %245
  %260 = load i8*, i8** %24, align 8
  %261 = icmp eq i8* %260, null
  br i1 %261, label %262, label %267

262:                                              ; preds = %259, %245
  %263 = load %struct.swapfile*, %struct.swapfile** %13, align 8
  %264 = load i32*, i32** %8, align 8
  %265 = load i32, i32* %21, align 4
  %266 = call i32 @vm_swap_put_finish(%struct.swapfile* %263, i32* %264, i32 %265)
  store i32 %266, i32* %6, align 4
  br label %269

267:                                              ; preds = %259
  %268 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %268, i32* %6, align 4
  br label %269

269:                                              ; preds = %267, %262, %200, %36
  %270 = load i32, i32* %6, align 4
  ret i32 %270
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i64 @queue_first(i32*) #1

declare dso_local i32 @queue_end(i32*, i32) #1

declare dso_local i32 @clock_get_system_nanotime(i32*, i32*) #1

declare dso_local i64 @VM_SWAP_SHOULD_CREATE(i32) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @queue_next(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_wait_timeout(i32, i32, i32, i32) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i32 @vm_swapfile_io(i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @vm_swap_put_finish(%struct.swapfile*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
