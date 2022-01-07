; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_replace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i8*, i64 }
%struct.TYPE_14__ = type { i8* }

@VM_PAGE_NULL = common dso_local global %struct.TYPE_13__* null, align 8
@vm_page_queue_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@vm_page_buckets = common dso_local global %struct.TYPE_14__* null, align 8
@vm_page_bucket_locks = common dso_local global i32* null, align 8
@BUCKETS_PER_LOCK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_replace(%struct.TYPE_13__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VM_PAGE_NULL, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @vm_object_lock_assert_exclusive(i32 %14)
  %16 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %17 = call i32 @LCK_MTX_ASSERT(i32* @vm_page_queue_lock, i32 %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = call i32 @VM_PAGE_PAGEABLE(%struct.TYPE_13__* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @VM_PAGE_PACK_OBJECT(i32 %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @vm_page_hash(i32 %31, i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vm_page_buckets, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i64 %36
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %7, align 8
  %38 = load i32*, i32** @vm_page_bucket_locks, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @BUCKETS_PER_LOCK, align 4
  %41 = sdiv i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @lck_spin_lock(i32* %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %98

50:                                               ; preds = %3
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i8** %52, i8*** %11, align 8
  %53 = load i8**, i8*** %11, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @VM_PAGE_UNPACK_PTR(i8* %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %12, align 8
  br label %57

57:                                               ; preds = %86, %50
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %57
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %11, align 8
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* @FALSE, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = call i8* @VM_PAGE_PACK_PTR(%struct.TYPE_13__* null)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %8, align 8
  br label %92

83:                                               ; preds = %65, %57
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  store i8** %85, i8*** %11, align 8
  br label %86

86:                                               ; preds = %83
  %87 = load i8**, i8*** %11, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @VM_PAGE_UNPACK_PTR(i8* %88)
  %90 = inttoptr i64 %89 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %12, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %57, label %92

92:                                               ; preds = %86, %71
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  br label %102

98:                                               ; preds = %3
  %99 = call i8* @VM_PAGE_PACK_PTR(%struct.TYPE_13__* null)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %98, %92
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = call i8* @VM_PAGE_PACK_PTR(%struct.TYPE_13__* %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @TRUE, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @lck_spin_unlock(i32* %110)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %113 = icmp ne %struct.TYPE_13__* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %102
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %116 = load i32, i32* @FALSE, align 4
  %117 = call i32 @vm_page_free_unlocked(%struct.TYPE_13__* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %102
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i64, i64* %6, align 8
  %122 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %123 = load i32, i32* @FALSE, align 4
  %124 = load i32, i32* @FALSE, align 4
  %125 = load i32, i32* @FALSE, align 4
  %126 = load i32, i32* @FALSE, align 4
  %127 = call i32 @vm_page_insert_internal(%struct.TYPE_13__* %119, i32 %120, i64 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32* null)
  ret void
}

declare dso_local i32 @vm_object_lock_assert_exclusive(i32) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VM_PAGE_PAGEABLE(%struct.TYPE_13__*) #1

declare dso_local i64 @VM_PAGE_PACK_OBJECT(i32) #1

declare dso_local i32 @vm_page_hash(i32, i64) #1

declare dso_local i32 @lck_spin_lock(i32*) #1

declare dso_local i64 @VM_PAGE_UNPACK_PTR(i8*) #1

declare dso_local i8* @VM_PAGE_PACK_PTR(%struct.TYPE_13__*) #1

declare dso_local i32 @lck_spin_unlock(i32*) #1

declare dso_local i32 @vm_page_free_unlocked(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @vm_page_insert_internal(%struct.TYPE_13__*, i32, i64, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
