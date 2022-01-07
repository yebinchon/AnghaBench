; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }

@PMAP_NULL = common dso_local global %struct.TYPE_17__* null, align 8
@PMAP__DESTROY = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@pmap_pcid_ncpus = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_17__* null, align 8
@pmap_anchor_zone = common dso_local global i32 0, align 4
@pmap_uanchor_zone = common dso_local global i32 0, align 4
@inuse_ptepages_count = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@pmap_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_destroy(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** @PMAP_NULL, align 8
  %7 = icmp eq %struct.TYPE_17__* %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %143

9:                                                ; preds = %1
  %10 = load i32, i32* @PMAP__DESTROY, align 4
  %11 = call i32 @PMAP_CODE(i32 %10)
  %12 = load i32, i32* @DBG_FUNC_START, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %15 = call i32 @VM_KERNEL_ADDRHIDe(%struct.TYPE_17__* %14)
  %16 = call i32 (i32, ...) @PMAP_TRACE(i32 %13, i32 %15)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %18 = call i32 @PMAP_LOCK(%struct.TYPE_17__* %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  store i32 %22, i32* %3, align 4
  %23 = call %struct.TYPE_19__* (...) @current_thread()
  %24 = icmp ne %struct.TYPE_19__* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %9
  %26 = call %struct.TYPE_19__* (...) @current_thread()
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = icmp ne %struct.TYPE_16__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = call %struct.TYPE_19__* (...) @current_thread()
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %37 = icmp ne %struct.TYPE_17__* %35, %36
  %38 = zext i1 %37 to i32
  br label %41

39:                                               ; preds = %25, %9
  %40 = load i32, i32* @TRUE, align 4
  br label %41

41:                                               ; preds = %39, %30
  %42 = phi i32 [ %38, %30 ], [ %40, %39 ]
  %43 = call i32 @pmap_assert(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %48 = call i32 @PMAP_UPDATE_TLBS(%struct.TYPE_17__* %47, i32 0, i32 -4096)
  %49 = load i64, i64* @pmap_pcid_ncpus, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %53 = call i32 @pmap_destroy_pcid_sync(%struct.TYPE_17__* %52)
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %57 = call i32 @PMAP_UNLOCK(%struct.TYPE_17__* %56)
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i32, i32* @PMAP__DESTROY, align 4
  %62 = call i32 @PMAP_CODE(i32 %61)
  %63 = load i32, i32* @DBG_FUNC_END, align 4
  %64 = or i32 %62, %63
  %65 = call i32 (i32, ...) @PMAP_TRACE(i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** @kernel_pmap, align 8
  %68 = icmp eq %struct.TYPE_17__* %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @pmap_assert(i32 %69)
  br label %143

71:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  %72 = load i32, i32* @pmap_anchor_zone, align 4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 6
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = call i32 @zfree(i32 %72, %struct.TYPE_17__* %75)
  %77 = load i32, i32* @pmap_uanchor_zone, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = call i32 @zfree(i32 %77, %struct.TYPE_17__* %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = call i32 @vm_object_deallocate(%struct.TYPE_18__* %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %4, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = call i32 @vm_object_deallocate(%struct.TYPE_18__* %106)
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %4, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = call i32 @vm_object_deallocate(%struct.TYPE_18__* %119)
  %121 = load i32, i32* %4, align 4
  %122 = sub nsw i32 0, %121
  %123 = call i32 @OSAddAtomic(i32 %122, i32* @inuse_ptepages_count)
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @PAGE_SIZE, align 4
  %127 = mul nsw i32 %125, %126
  %128 = call i32 @PMAP_ZINFO_PFREE(%struct.TYPE_17__* %124, i32 %127)
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %130 = call i32 @pmap_check_ledgers(%struct.TYPE_17__* %129)
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ledger_dereference(i32 %133)
  %135 = load i32, i32* @pmap_zone, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %137 = call i32 @zfree(i32 %135, %struct.TYPE_17__* %136)
  %138 = load i32, i32* @PMAP__DESTROY, align 4
  %139 = call i32 @PMAP_CODE(i32 %138)
  %140 = load i32, i32* @DBG_FUNC_END, align 4
  %141 = or i32 %139, %140
  %142 = call i32 (i32, ...) @PMAP_TRACE(i32 %141)
  br label %143

143:                                              ; preds = %71, %60, %8
  ret void
}

declare dso_local i32 @PMAP_TRACE(i32, ...) #1

declare dso_local i32 @PMAP_CODE(i32) #1

declare dso_local i32 @VM_KERNEL_ADDRHIDe(%struct.TYPE_17__*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @pmap_assert(i32) #1

declare dso_local %struct.TYPE_19__* @current_thread(...) #1

declare dso_local i32 @PMAP_UPDATE_TLBS(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @pmap_destroy_pcid_sync(%struct.TYPE_17__*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @vm_object_deallocate(%struct.TYPE_18__*) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @PMAP_ZINFO_PFREE(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @pmap_check_ledgers(%struct.TYPE_17__*) #1

declare dso_local i32 @ledger_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
