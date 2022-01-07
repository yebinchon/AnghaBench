; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_pageout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_pageout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_pageout_queue = type { i32, i64 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i64, i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i32 }

@VM_CONFIG_COMPRESSOR_IS_PRESENT = common dso_local global i32 0, align 4
@vm_pageout_queue_internal = common dso_local global %struct.vm_pageout_queue zeroinitializer, align 8
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_16__* null, align 8
@MEMORY_OBJECT_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@VM_PAGE_ON_FREE_Q = common dso_local global i64 0, align 8
@VM_PAGE_ON_THROTTLED_Q = common dso_local global i64 0, align 8
@THREAD_INTERRUPTIBLE = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@PMAP_OPTIONS_COMPRESSOR_IFF_MODIFIED = common dso_local global i32 0, align 4
@PMAP_OPTIONS_COMPRESSOR = common dso_local global i32 0, align 4
@VM_MEM_MODIFIED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_object_pageout(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.vm_pageout_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %8 = load i32, i32* @VM_CONFIG_COMPRESSOR_IS_PRESENT, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %277

11:                                               ; preds = %1
  store %struct.vm_pageout_queue* @vm_pageout_queue_internal, %struct.vm_pageout_queue** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** @VM_OBJECT_NULL, align 8
  %14 = icmp ne %struct.TYPE_16__* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = call i32 @vm_object_lock(%struct.TYPE_16__* %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %11
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %23, %11
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %35 = call i32 @vm_object_unlock(%struct.TYPE_16__* %34)
  br label %277

36:                                               ; preds = %28
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MEMORY_OBJECT_NULL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %41, %36
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = load i64, i64* @TRUE, align 8
  %55 = call i32 @vm_object_collapse(%struct.TYPE_16__* %53, i32 0, i64 %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %62 = call i32 @vm_object_compressor_pager_create(%struct.TYPE_16__* %61)
  br label %63

63:                                               ; preds = %60, %52
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MEMORY_OBJECT_NULL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69, %64
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %77 = call i32 @vm_object_unlock(%struct.TYPE_16__* %76)
  br label %277

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %41
  br label %80

80:                                               ; preds = %155, %79
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = call i64 @vm_page_queue_first(i32* %82)
  %84 = inttoptr i64 %83 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %84, %struct.TYPE_15__** %4, align 8
  br label %85

85:                                               ; preds = %267, %263, %145, %80
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %89 = ptrtoint %struct.TYPE_15__* %88 to i32
  %90 = call i32 @vm_page_queue_end(i32* %87, i32 %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br i1 %92, label %93, label %274

93:                                               ; preds = %85
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %94, %struct.TYPE_15__** %3, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 11
  %97 = call i64 @vm_page_queue_next(i32* %96)
  %98 = inttoptr i64 %97 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %4, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VM_PAGE_ON_FREE_Q, align 8
  %103 = icmp ne i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @VM_PAGE_ON_THROTTLED_Q, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %145, label %111

111:                                              ; preds = %93
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %145, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 10
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %145, label %121

121:                                              ; preds = %116
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 8
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %145, label %126

126:                                              ; preds = %121
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 7
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %145, label %131

131:                                              ; preds = %126
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 9
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %143 = call i64 @VM_PAGE_WIRED(%struct.TYPE_15__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141, %136, %131, %126, %121, %116, %111, %93
  br label %85

146:                                              ; preds = %141
  %147 = call i64 (...) @vm_compressor_low_on_space()
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  br label %274

150:                                              ; preds = %146
  %151 = call i32 (...) @vm_page_lockspin_queues()
  %152 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %5, align 8
  %153 = call i64 @VM_PAGE_Q_THROTTLED(%struct.vm_pageout_queue* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %150
  %156 = load i64, i64* @TRUE, align 8
  %157 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %5, align 8
  %158 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %5, align 8
  %160 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %159, i32 0, i32 0
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = ptrtoint i32* %161 to i32
  %163 = load i32, i32* @THREAD_INTERRUPTIBLE, align 4
  %164 = call i32 @assert_wait(i32 %162, i32 %163)
  %165 = call i32 (...) @vm_page_unlock_queues()
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %167 = call i32 @vm_object_unlock(%struct.TYPE_16__* %166)
  %168 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %169 = call i32 @thread_block(i32 %168)
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %171 = call i32 @vm_object_lock(%struct.TYPE_16__* %170)
  br label %80

172:                                              ; preds = %150
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 9
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i32 @assert(i32 %178)
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 8
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %209 = call i64 @VM_PAGE_WIRED(%struct.TYPE_15__* %208)
  %210 = icmp ne i64 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert(i32 %219)
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @TRUE, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %253

226:                                              ; preds = %172
  %227 = load i32, i32* @PMAP_OPTIONS_COMPRESSOR_IFF_MODIFIED, align 4
  store i32 %227, i32* %7, align 4
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %226
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %232, %226
  %238 = load i32, i32* @PMAP_OPTIONS_COMPRESSOR, align 4
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %237, %232
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %241 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_15__* %240)
  %242 = load i32, i32* %7, align 4
  %243 = call i32 @pmap_disconnect_options(i32 %241, i32 %242, i32* null)
  store i32 %243, i32* %6, align 4
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @VM_MEM_MODIFIED, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %239
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %250 = load i32, i32* @FALSE, align 4
  %251 = call i32 @SET_PAGE_DIRTY(%struct.TYPE_15__* %249, i32 %250)
  br label %252

252:                                              ; preds = %248, %239
  br label %253

253:                                              ; preds = %252, %172
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %253
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %258
  %264 = call i32 (...) @vm_page_unlock_queues()
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %266 = call i32 @VM_PAGE_FREE(%struct.TYPE_15__* %265)
  br label %85

267:                                              ; preds = %258, %253
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %269 = load i64, i64* @TRUE, align 8
  %270 = call i32 @vm_page_queues_remove(%struct.TYPE_15__* %268, i64 %269)
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %272 = call i32 @vm_pageout_cluster(%struct.TYPE_15__* %271)
  %273 = call i32 (...) @vm_page_unlock_queues()
  br label %85

274:                                              ; preds = %149, %85
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %276 = call i32 @vm_object_unlock(%struct.TYPE_16__* %275)
  br label %277

277:                                              ; preds = %274, %75, %33, %10
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_object_collapse(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @vm_object_compressor_pager_create(%struct.TYPE_16__*) #1

declare dso_local i64 @vm_page_queue_first(i32*) #1

declare dso_local i32 @vm_page_queue_end(i32*, i32) #1

declare dso_local i64 @vm_page_queue_next(i32*) #1

declare dso_local i64 @VM_PAGE_WIRED(%struct.TYPE_15__*) #1

declare dso_local i64 @vm_compressor_low_on_space(...) #1

declare dso_local i32 @vm_page_lockspin_queues(...) #1

declare dso_local i64 @VM_PAGE_Q_THROTTLED(%struct.vm_pageout_queue*) #1

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i32 @pmap_disconnect_options(i32, i32, i32*) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_15__*) #1

declare dso_local i32 @SET_PAGE_DIRTY(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @VM_PAGE_FREE(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_page_queues_remove(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @vm_pageout_cluster(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
