; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_36__ = type { i64, i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_32__ = type { i32, i64, i64, i64, i8*, i64, i32, i8*, i32, i32 }
%struct.TYPE_34__ = type { i64, i64, i64, i64, i64, i32, i64, i32, %struct.TYPE_31__, i64 }
%struct.TYPE_31__ = type { i64, i64 }

@XPR_VM_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"vm_page_remove, object 0x%X offset 0x%X page 0x%X\0A\00", align 1
@vm_page_queue_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@vm_page_buckets = common dso_local global %struct.TYPE_33__* null, align 8
@vm_page_bucket_locks = common dso_local global i32* null, align 8
@BUCKETS_PER_LOCK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@vm_page_internal_count = common dso_local global i64 0, align 8
@vm_page_external_count = common dso_local global i64 0, align 8
@vm_page_xpmapped_external_count = common dso_local global i64 0, align 8
@vm_page_stats_reusable = common dso_local global %struct.TYPE_36__ zeroinitializer, align 8
@VM_PURGABLE_DENY = common dso_local global i64 0, align 8
@TASK_NULL = common dso_local global %struct.TYPE_35__* null, align 8
@VM_PURGABLE_NONVOLATILE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@VM_PURGABLE_VOLATILE = common dso_local global i64 0, align 8
@VM_PURGABLE_EMPTY = common dso_local global i64 0, align 8
@vm_page_purgeable_wired_count = common dso_local global i64 0, align 8
@vm_page_purgeable_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_remove(%struct.TYPE_32__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %18 = call %struct.TYPE_34__* @VM_PAGE_OBJECT(%struct.TYPE_32__* %17)
  store %struct.TYPE_34__* %18, %struct.TYPE_34__** %10, align 8
  %19 = load i32, i32* @XPR_VM_PAGE, align 4
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %25 = call i32 @XPR(i32 %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.TYPE_34__* %20, i64 %23, %struct.TYPE_32__* %24, i32 0, i32 0)
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %27 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_34__* %26)
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %47 = call i64 @VM_PAGE_PAGEABLE(%struct.TYPE_32__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %51 = call i32 @LCK_MTX_ASSERT(i32* @vm_page_queue_lock, i32 %50)
  br label %52

52:                                               ; preds = %49, %2
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @TRUE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %115

56:                                               ; preds = %52
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @vm_page_hash(%struct.TYPE_34__* %57, i64 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** @vm_page_buckets, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %62, i64 %64
  store %struct.TYPE_33__* %65, %struct.TYPE_33__** %5, align 8
  %66 = load i32*, i32** @vm_page_bucket_locks, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @BUCKETS_PER_LOCK, align 4
  %69 = sdiv i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  store i32* %71, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @lck_spin_lock(i32* %72)
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @VM_PAGE_UNPACK_PTR(i32 %76)
  %78 = inttoptr i64 %77 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %78, %struct.TYPE_32__** %6, align 8
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %80 = icmp eq %struct.TYPE_32__* %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %56
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %106

87:                                               ; preds = %56
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 6
  store i32* %89, i32** %16, align 8
  br label %90

90:                                               ; preds = %98, %87
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @VM_PAGE_UNPACK_PTR(i32 %92)
  %94 = inttoptr i64 %93 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %94, %struct.TYPE_32__** %6, align 8
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %96 = icmp ne %struct.TYPE_32__* %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %99, i32 0, i32 6
  store i32* %100, i32** %16, align 8
  br label %90

101:                                              ; preds = %90
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %16, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %81
  %107 = load i8*, i8** @FALSE, align 8
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 7
  store i8* %107, i8** %109, align 8
  %110 = call i32 @VM_PAGE_PACK_PTR(i32* null)
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @lck_spin_unlock(i32* %113)
  br label %115

115:                                              ; preds = %106, %52
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %117 = call i32 @vm_page_remove_internal(%struct.TYPE_32__* %116)
  %118 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, -1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %128, i32 0, i32 9
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %115
  %133 = call i32 @OSAddAtomic(i32 -1, i64* @vm_page_internal_count)
  br label %149

134:                                              ; preds = %115
  %135 = load i64, i64* @vm_page_external_count, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = call i32 @OSAddAtomic(i32 -1, i64* @vm_page_external_count)
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %134
  %144 = load i64, i64* @vm_page_xpmapped_external_count, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = call i32 @OSAddAtomic(i32 -1, i64* @vm_page_xpmapped_external_count)
  br label %148

148:                                              ; preds = %143, %134
  br label %149

149:                                              ; preds = %148, %132
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 9
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %175, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %154
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %160
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %173 = call i32 @vm_object_cache_remove(%struct.TYPE_34__* %172)
  br label %174

174:                                              ; preds = %171, %166
  br label %175

175:                                              ; preds = %174, %160, %154, %149
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %177 = call i64 @VM_PAGE_WIRED(%struct.TYPE_32__* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %175
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp sgt i64 %182, 0
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %187 = call i32 @VM_OBJECT_WIRED_PAGE_UPDATE_START(%struct.TYPE_34__* %186)
  %188 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %190 = call i32 @VM_OBJECT_WIRED_PAGE_REMOVE(%struct.TYPE_34__* %188, %struct.TYPE_32__* %189)
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %192 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @VM_OBJECT_WIRED_PAGE_UPDATE_END(%struct.TYPE_34__* %191, i32 %194)
  br label %196

196:                                              ; preds = %179, %175
  %197 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp sge i64 %199, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %206, i32 0, i32 4
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %236

210:                                              ; preds = %196
  %211 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp sgt i64 %213, 0
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, -1
  store i64 %220, i64* %218, align 8
  %221 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp sle i64 %223, %226
  %228 = zext i1 %227 to i32
  %229 = call i32 @assert(i32 %228)
  %230 = load i8*, i8** @FALSE, align 8
  %231 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %231, i32 0, i32 4
  store i8* %230, i8** %232, align 8
  %233 = call i32 @OSAddAtomic(i32 -1, i64* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @vm_page_stats_reusable, i32 0, i32 0))
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @vm_page_stats_reusable, i32 0, i32 1), align 8
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @vm_page_stats_reusable, i32 0, i32 1), align 8
  br label %246

236:                                              ; preds = %196
  %237 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %237, i32 0, i32 6
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = call i32 @OSAddAtomic(i32 -1, i64* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @vm_page_stats_reusable, i32 0, i32 0))
  %243 = load i32, i32* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @vm_page_stats_reusable, i32 0, i32 1), align 8
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @vm_page_stats_reusable, i32 0, i32 1), align 8
  br label %245

245:                                              ; preds = %241, %236
  br label %246

246:                                              ; preds = %245, %210
  %247 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @VM_PURGABLE_DENY, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %246
  %253 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %252
  %258 = load %struct.TYPE_35__*, %struct.TYPE_35__** @TASK_NULL, align 8
  store %struct.TYPE_35__* %258, %struct.TYPE_35__** %9, align 8
  br label %264

259:                                              ; preds = %252, %246
  %260 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %261 = call %struct.TYPE_35__* @VM_OBJECT_OWNER(%struct.TYPE_34__* %260)
  store %struct.TYPE_35__* %261, %struct.TYPE_35__** %9, align 8
  %262 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %263 = call i32 @vm_object_ledger_tag_ledgers(%struct.TYPE_34__* %262, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15)
  br label %264

264:                                              ; preds = %259, %257
  %265 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %266 = icmp ne %struct.TYPE_35__* %265, null
  br i1 %266, label %267, label %300

267:                                              ; preds = %264
  %268 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @VM_PURGABLE_NONVOLATILE, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %283, label %273

273:                                              ; preds = %267
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @VM_PURGABLE_DENY, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %283, label %279

279:                                              ; preds = %273
  %280 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %281 = call i64 @VM_PAGE_WIRED(%struct.TYPE_32__* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %300

283:                                              ; preds = %279, %273, %267
  %284 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* @PAGE_SIZE, align 4
  %289 = call i32 @ledger_debit(i32 %286, i32 %287, i32 %288)
  %290 = load i32, i32* %15, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %283
  %293 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @task_ledgers, i32 0, i32 0), align 4
  %297 = load i32, i32* @PAGE_SIZE, align 4
  %298 = call i32 @ledger_debit(i32 %295, i32 %296, i32 %297)
  br label %299

299:                                              ; preds = %292, %283
  br label %329

300:                                              ; preds = %279, %264
  %301 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %302 = icmp ne %struct.TYPE_35__* %301, null
  br i1 %302, label %303, label %328

303:                                              ; preds = %300
  %304 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @VM_PURGABLE_VOLATILE, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %315, label %309

309:                                              ; preds = %303
  %310 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @VM_PURGABLE_EMPTY, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %328

315:                                              ; preds = %309, %303
  %316 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %317 = call i64 @VM_PAGE_WIRED(%struct.TYPE_32__* %316)
  %318 = icmp ne i64 %317, 0
  %319 = xor i1 %318, true
  %320 = zext i1 %319 to i32
  %321 = call i32 @assert(i32 %320)
  %322 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %323 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* @PAGE_SIZE, align 4
  %327 = call i32 @ledger_debit(i32 %324, i32 %325, i32 %326)
  br label %328

328:                                              ; preds = %315, %309, %300
  br label %329

329:                                              ; preds = %328, %299
  %330 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %330, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @VM_PURGABLE_VOLATILE, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %352

335:                                              ; preds = %329
  %336 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %337 = call i64 @VM_PAGE_WIRED(%struct.TYPE_32__* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %335
  %340 = load i64, i64* @vm_page_purgeable_wired_count, align 8
  %341 = icmp sgt i64 %340, 0
  %342 = zext i1 %341 to i32
  %343 = call i32 @assert(i32 %342)
  %344 = call i32 @OSAddAtomic(i32 -1, i64* @vm_page_purgeable_wired_count)
  br label %351

345:                                              ; preds = %335
  %346 = load i64, i64* @vm_page_purgeable_count, align 8
  %347 = icmp sgt i64 %346, 0
  %348 = zext i1 %347 to i32
  %349 = call i32 @assert(i32 %348)
  %350 = call i32 @OSAddAtomic(i32 -1, i64* @vm_page_purgeable_count)
  br label %351

351:                                              ; preds = %345, %339
  br label %352

352:                                              ; preds = %351, %329
  %353 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %353, i32 0, i32 4
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @TRUE, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %362

358:                                              ; preds = %352
  %359 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %360 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_32__* %359)
  %361 = call i32 @pmap_set_cache_attributes(i32 %360, i32 0)
  br label %362

362:                                              ; preds = %358, %352
  %363 = load i8*, i8** @FALSE, align 8
  %364 = ptrtoint i8* %363 to i32
  %365 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %365, i32 0, i32 0
  store i32 %364, i32* %366, align 8
  %367 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %367, i32 0, i32 3
  store i64 0, i64* %368, align 8
  %369 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %369, i32 0, i32 2
  store i64 -1, i64* %370, align 8
  ret void
}

declare dso_local %struct.TYPE_34__* @VM_PAGE_OBJECT(%struct.TYPE_32__*) #1

declare dso_local i32 @XPR(i32, i8*, %struct.TYPE_34__*, i64, %struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_34__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @VM_PAGE_PAGEABLE(%struct.TYPE_32__*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @vm_page_hash(%struct.TYPE_34__*, i64) #1

declare dso_local i32 @lck_spin_lock(i32*) #1

declare dso_local i64 @VM_PAGE_UNPACK_PTR(i32) #1

declare dso_local i32 @VM_PAGE_PACK_PTR(i32*) #1

declare dso_local i32 @lck_spin_unlock(i32*) #1

declare dso_local i32 @vm_page_remove_internal(%struct.TYPE_32__*) #1

declare dso_local i32 @OSAddAtomic(i32, i64*) #1

declare dso_local i32 @vm_object_cache_remove(%struct.TYPE_34__*) #1

declare dso_local i64 @VM_PAGE_WIRED(%struct.TYPE_32__*) #1

declare dso_local i32 @VM_OBJECT_WIRED_PAGE_UPDATE_START(%struct.TYPE_34__*) #1

declare dso_local i32 @VM_OBJECT_WIRED_PAGE_REMOVE(%struct.TYPE_34__*, %struct.TYPE_32__*) #1

declare dso_local i32 @VM_OBJECT_WIRED_PAGE_UPDATE_END(%struct.TYPE_34__*, i32) #1

declare dso_local %struct.TYPE_35__* @VM_OBJECT_OWNER(%struct.TYPE_34__*) #1

declare dso_local i32 @vm_object_ledger_tag_ledgers(%struct.TYPE_34__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ledger_debit(i32, i32, i32) #1

declare dso_local i32 @pmap_set_cache_attributes(i32, i32) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
