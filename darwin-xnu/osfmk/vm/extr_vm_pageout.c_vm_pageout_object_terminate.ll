; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_object_terminate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_object_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i64, i32, i32, i8*, i8*, i64, i64, i64, i32 }
%struct.TYPE_22__ = type { i32, i64, i64, i64, i64, i64, i32, %struct.TYPE_22__* }

@FALSE = common dso_local global i8* null, align 8
@VM_PAGE_NULL = common dso_local global %struct.TYPE_21__* null, align 8
@VM_PAGE_ON_PAGEOUT_Q = common dso_local global i64 0, align 8
@VM_PAGE_IS_WIRED = common dso_local global i64 0, align 8
@VM_MEM_MODIFIED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@reactivations = common dso_local global i32 0, align 4
@VM_PAGE_NOT_ON_Q = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_pageout_object_terminate(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 7
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %3, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = call i32 @vm_object_lock(%struct.TYPE_22__* %14)
  br label %16

16:                                               ; preds = %229, %166, %69, %1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 6
  %19 = call i32 @vm_page_queue_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %236

22:                                               ; preds = %16
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 6
  %25 = call i64 @vm_page_queue_first(i32* %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %4, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** @FALSE, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 7
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 12
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 11
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %57 = call i32 @VM_PAGE_FREE(%struct.TYPE_21__* %56)
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** @VM_PAGE_NULL, align 8
  store %struct.TYPE_21__* %58, %struct.TYPE_21__** %4, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = call %struct.TYPE_21__* @vm_page_lookup(%struct.TYPE_22__* %59, i64 %64)
  store %struct.TYPE_21__* %65, %struct.TYPE_21__** %5, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** @VM_PAGE_NULL, align 8
  %68 = icmp eq %struct.TYPE_21__* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %22
  br label %16

70:                                               ; preds = %22
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 7
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i1 [ false, %80 ], [ %89, %85 ]
  br label %92

92:                                               ; preds = %90, %75, %70
  %93 = phi i1 [ true, %75 ], [ true, %70 ], [ %91, %90 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = call i32 (...) @vm_page_lock_queues()
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @VM_PAGE_ON_PAGEOUT_Q, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = call i32 @vm_pageout_throttle_up(%struct.TYPE_21__* %103)
  br label %105

105:                                              ; preds = %102, %92
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %168

110:                                              ; preds = %105
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @VM_PAGE_IS_WIRED, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 1
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i8*, i8** @FALSE, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 7
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** @FALSE, align 8
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %136 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_21__* %135)
  %137 = call i32 @pmap_disconnect(i32 %136)
  %138 = load i32, i32* @VM_MEM_MODIFIED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %110
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %143 = load i8*, i8** @FALSE, align 8
  %144 = call i32 @SET_PAGE_DIRTY(%struct.TYPE_21__* %142, i8* %143)
  br label %150

145:                                              ; preds = %110
  %146 = load i8*, i8** @FALSE, align 8
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %145, %141
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %157 = load i32, i32* @TRUE, align 4
  %158 = call i32 @vm_page_unwire(%struct.TYPE_21__* %156, i32 %157)
  %159 = load i32, i32* @reactivations, align 4
  %160 = call i32 @VM_STAT_INCR(i32 %159)
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %162 = call i32 @PAGE_WAKEUP_DONE(%struct.TYPE_21__* %161)
  br label %166

163:                                              ; preds = %150
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %165 = call i32 @vm_page_free(%struct.TYPE_21__* %164)
  br label %166

166:                                              ; preds = %163, %155
  %167 = call i32 (...) @vm_page_unlock_queues()
  br label %16

168:                                              ; preds = %105
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @VM_PAGE_NOT_ON_Q, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %191

174:                                              ; preds = %168
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %174
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 9
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %186 = call i32 @vm_page_activate(%struct.TYPE_21__* %185)
  br label %190

187:                                              ; preds = %179
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %189 = call i32 @vm_page_deactivate(%struct.TYPE_21__* %188)
  br label %190

190:                                              ; preds = %187, %184
  br label %191

191:                                              ; preds = %190, %174, %168
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %224

196:                                              ; preds = %191
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %196
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %203 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_21__* %202)
  %204 = call i32 @pmap_clear_modify(i32 %203)
  %205 = load i8*, i8** @FALSE, align 8
  %206 = ptrtoint i8* %205 to i32
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  %209 = load i8*, i8** @FALSE, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 8
  store i8* %209, i8** %211, align 8
  br label %219

212:                                              ; preds = %196
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %214 = call i32 @VM_PAGE_WIRED(%struct.TYPE_21__* %213)
  %215 = call i32 @assert(i32 %214)
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %217 = load i32, i32* @TRUE, align 4
  %218 = call i32 @vm_page_unwire(%struct.TYPE_21__* %216, i32 %217)
  br label %219

219:                                              ; preds = %212, %201
  %220 = load i8*, i8** @FALSE, align 8
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 6
  store i32 %221, i32* %223, align 4
  br label %229

224:                                              ; preds = %191
  %225 = load i8*, i8** @FALSE, align 8
  %226 = ptrtoint i8* %225 to i32
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %224, %219
  %230 = load i8*, i8** @FALSE, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 7
  store i8* %230, i8** %232, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %234 = call i32 @PAGE_WAKEUP(%struct.TYPE_21__* %233)
  %235 = call i32 (...) @vm_page_unlock_queues()
  br label %16

236:                                              ; preds = %16
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %238 = call i32 @vm_object_activity_end(%struct.TYPE_22__* %237)
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %240 = call i32 @vm_object_unlock(%struct.TYPE_22__* %239)
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %243, 0
  %245 = zext i1 %244 to i32
  %246 = call i32 @assert(i32 %245)
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %249, 0
  %251 = zext i1 %250 to i32
  %252 = call i32 @assert(i32 %251)
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, 0
  %257 = zext i1 %256 to i32
  %258 = call i32 @assert(i32 %257)
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 0
  %263 = zext i1 %262 to i32
  %264 = call i32 @assert(i32 %263)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_page_queue_empty(i32*) #1

declare dso_local i64 @vm_page_queue_first(i32*) #1

declare dso_local i32 @VM_PAGE_FREE(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @vm_page_lookup(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @vm_page_lock_queues(...) #1

declare dso_local i32 @vm_pageout_throttle_up(%struct.TYPE_21__*) #1

declare dso_local i32 @pmap_disconnect(i32) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_21__*) #1

declare dso_local i32 @SET_PAGE_DIRTY(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @vm_page_unwire(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @VM_STAT_INCR(i32) #1

declare dso_local i32 @PAGE_WAKEUP_DONE(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @vm_page_activate(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_page_deactivate(%struct.TYPE_21__*) #1

declare dso_local i32 @pmap_clear_modify(i32) #1

declare dso_local i32 @VM_PAGE_WIRED(%struct.TYPE_21__*) #1

declare dso_local i32 @PAGE_WAKEUP(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_object_activity_end(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
