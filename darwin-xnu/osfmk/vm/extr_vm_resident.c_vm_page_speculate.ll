; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_speculate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_speculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_speculative_age_q = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, i64, i64, i64, i32, i64 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@vm_page_guard_addr = common dso_local global i64 0, align 8
@vm_page_queue_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@VM_PAGE_USED_BY_COMPRESSOR = common dso_local global i64 0, align 8
@VM_PAGE_ON_PAGEOUT_Q = common dso_local global i64 0, align 8
@vm_page_speculative_count = common dso_local global i64 0, align 8
@VM_PAGE_MIN_SPECULATIVE_AGE_Q = common dso_local global i64 0, align 8
@speculative_age_index = common dso_local global i64 0, align 8
@speculative_steal_index = common dso_local global i64 0, align 8
@vm_page_queue_speculative = common dso_local global %struct.vm_speculative_age_q* null, align 8
@vm_pageout_state = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@VM_PAGE_MAX_SPECULATIVE_AGE_Q = common dso_local global i64 0, align 8
@VM_PAGE_ON_SPECULATIVE_Q = common dso_local global i64 0, align 8
@vm_page_pageable_external_count = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@vm_page_speculative_created = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_speculate(%struct.TYPE_19__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm_speculative_age_q*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %11 = call %struct.TYPE_20__* @VM_PAGE_OBJECT(%struct.TYPE_19__* %10)
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %6, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = call i32 @VM_PAGE_CHECK(%struct.TYPE_19__* %12)
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = call i32 @vm_page_check_pageable_safe(%struct.TYPE_19__* %14)
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = call i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_19__* %16)
  %18 = load i64, i64* @vm_page_guard_addr, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %23 = call i32 @LCK_MTX_ASSERT(i32* @vm_page_queue_lock, i32 %22)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %2
  %35 = phi i1 [ false, %2 ], [ %33, %28 ]
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FALSE, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %34
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VM_PAGE_USED_BY_COMPRESSOR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @VM_PAGE_ON_PAGEOUT_Q, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %60, %55, %50, %34
  br label %196

73:                                               ; preds = %66
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = load i64, i64* @FALSE, align 8
  %76 = call i32 @vm_page_queues_remove(%struct.TYPE_19__* %74, i64 %75)
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %78 = call i32 @VM_PAGE_WIRED(%struct.TYPE_19__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %193, label %80

80:                                               ; preds = %73
  %81 = call i32 @clock_get_system_nanotime(i64* %8, i32* %9)
  %82 = load i64, i64* %8, align 8
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load i64, i64* @vm_page_speculative_count, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %80
  %90 = load i64, i64* @VM_PAGE_MIN_SPECULATIVE_AGE_Q, align 8
  store i64 %90, i64* @speculative_age_index, align 8
  %91 = load i64, i64* @VM_PAGE_MIN_SPECULATIVE_AGE_Q, align 8
  store i64 %91, i64* @speculative_steal_index, align 8
  %92 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** @vm_page_queue_speculative, align 8
  %93 = load i64, i64* @speculative_age_index, align 8
  %94 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %92, i64 %93
  store %struct.vm_speculative_age_q* %94, %struct.vm_speculative_age_q** %5, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @vm_pageout_state, i32 0, i32 0), align 4
  %96 = sdiv i32 %95, 1000
  %97 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %5, align 8
  %98 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @vm_pageout_state, i32 0, i32 0), align 4
  %101 = srem i32 %100, 1000
  %102 = mul nsw i32 %101, 1000
  %103 = load i32, i32* @NSEC_PER_USEC, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %5, align 8
  %106 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  %108 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %5, align 8
  %109 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %108, i32 0, i32 1
  %110 = call i32 @ADD_MACH_TIMESPEC(%struct.TYPE_18__* %109, %struct.TYPE_21__* %7)
  br label %169

111:                                              ; preds = %80
  %112 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** @vm_page_queue_speculative, align 8
  %113 = load i64, i64* @speculative_age_index, align 8
  %114 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %112, i64 %113
  store %struct.vm_speculative_age_q* %114, %struct.vm_speculative_age_q** %5, align 8
  %115 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %5, align 8
  %116 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %115, i32 0, i32 1
  %117 = call i64 @CMP_MACH_TIMESPEC(%struct.TYPE_21__* %7, %struct.TYPE_18__* %116)
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %168

119:                                              ; preds = %111
  %120 = load i64, i64* @speculative_age_index, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* @speculative_age_index, align 8
  %122 = load i64, i64* @speculative_age_index, align 8
  %123 = load i64, i64* @VM_PAGE_MAX_SPECULATIVE_AGE_Q, align 8
  %124 = icmp ugt i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i64, i64* @VM_PAGE_MIN_SPECULATIVE_AGE_Q, align 8
  store i64 %126, i64* @speculative_age_index, align 8
  br label %127

127:                                              ; preds = %125, %119
  %128 = load i64, i64* @speculative_age_index, align 8
  %129 = load i64, i64* @speculative_steal_index, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load i64, i64* @speculative_age_index, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* @speculative_steal_index, align 8
  %134 = load i64, i64* @speculative_steal_index, align 8
  %135 = load i64, i64* @VM_PAGE_MAX_SPECULATIVE_AGE_Q, align 8
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i64, i64* @VM_PAGE_MIN_SPECULATIVE_AGE_Q, align 8
  store i64 %138, i64* @speculative_steal_index, align 8
  br label %139

139:                                              ; preds = %137, %131
  br label %140

140:                                              ; preds = %139, %127
  %141 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** @vm_page_queue_speculative, align 8
  %142 = load i64, i64* @speculative_age_index, align 8
  %143 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %141, i64 %142
  store %struct.vm_speculative_age_q* %143, %struct.vm_speculative_age_q** %5, align 8
  %144 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %5, align 8
  %145 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %144, i32 0, i32 0
  %146 = call i32 @vm_page_queue_empty(i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %140
  %149 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %5, align 8
  %150 = call i32 @vm_page_speculate_ageit(%struct.vm_speculative_age_q* %149)
  br label %151

151:                                              ; preds = %148, %140
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @vm_pageout_state, i32 0, i32 0), align 4
  %153 = sdiv i32 %152, 1000
  %154 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %5, align 8
  %155 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @vm_pageout_state, i32 0, i32 0), align 4
  %158 = srem i32 %157, 1000
  %159 = mul nsw i32 %158, 1000
  %160 = load i32, i32* @NSEC_PER_USEC, align 4
  %161 = mul nsw i32 %159, %160
  %162 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %5, align 8
  %163 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %5, align 8
  %166 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %165, i32 0, i32 1
  %167 = call i32 @ADD_MACH_TIMESPEC(%struct.TYPE_18__* %166, %struct.TYPE_21__* %7)
  br label %168

168:                                              ; preds = %151, %111
  br label %169

169:                                              ; preds = %168, %89
  %170 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %5, align 8
  %171 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %170, i32 0, i32 0
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  %174 = call i32 @vm_page_enqueue_tail(i32* %171, i32* %173)
  %175 = load i64, i64* @VM_PAGE_ON_SPECULATIVE_Q, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = load i64, i64* @vm_page_speculative_count, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* @vm_page_speculative_count, align 8
  %180 = load i32, i32* @vm_page_pageable_external_count, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* @vm_page_pageable_external_count, align 4
  %182 = load i64, i64* %4, align 8
  %183 = load i64, i64* @TRUE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %169
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %187 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_20__* %186)
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %185, %169
  br label %193

193:                                              ; preds = %192, %73
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %195 = call i32 @VM_PAGE_CHECK(%struct.TYPE_19__* %194)
  br label %196

196:                                              ; preds = %193, %72
  ret void
}

declare dso_local %struct.TYPE_20__* @VM_PAGE_OBJECT(%struct.TYPE_19__*) #1

declare dso_local i32 @VM_PAGE_CHECK(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_page_check_pageable_safe(%struct.TYPE_19__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_19__*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @vm_page_queues_remove(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @VM_PAGE_WIRED(%struct.TYPE_19__*) #1

declare dso_local i32 @clock_get_system_nanotime(i64*, i32*) #1

declare dso_local i32 @ADD_MACH_TIMESPEC(%struct.TYPE_18__*, %struct.TYPE_21__*) #1

declare dso_local i64 @CMP_MACH_TIMESPEC(%struct.TYPE_21__*, %struct.TYPE_18__*) #1

declare dso_local i32 @vm_page_queue_empty(i32*) #1

declare dso_local i32 @vm_page_speculate_ageit(%struct.vm_speculative_age_q*) #1

declare dso_local i32 @vm_page_enqueue_tail(i32*, i32*) #1

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
