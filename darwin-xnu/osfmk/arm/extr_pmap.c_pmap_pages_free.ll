; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_pages_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_pages_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@pmap_pages_lock = common dso_local global i32 0, align 4
@pmap_pages_request_count = common dso_local global i64 0, align 8
@pmap_pages_reclaim_list = common dso_local global %struct.TYPE_3__* null, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@inuse_pmap_pages_count = common dso_local global i32 0, align 4
@pmap_object = common dso_local global i32 0, align 4
@gPhysBase = common dso_local global i64 0, align 8
@VM_PAGE_NULL = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @pmap_pages_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_pages_free(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @pmap_simple_lock(i32* @pmap_pages_lock)
  %9 = load i64, i64* @pmap_pages_request_count, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i64, i64* @pmap_pages_request_count, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* @pmap_pages_request_count, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @phystokv(i64 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmap_pages_reclaim_list, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** @pmap_pages_reclaim_list, align 8
  %21 = call i32 @pmap_simple_unlock(i32* @pmap_pages_lock)
  br label %63

22:                                               ; preds = %2
  %23 = call i32 @pmap_simple_unlock(i32* @pmap_pages_lock)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = lshr i32 %24, %25
  %27 = sub i32 0, %26
  %28 = call i32 @OSAddAtomic(i32 %27, i32* @inuse_pmap_pages_count)
  %29 = load i64, i64* %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %59, %22
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %33
  %38 = load i32, i32* @pmap_object, align 4
  %39 = call i32 @vm_object_lock(i32 %38)
  %40 = load i32, i32* @pmap_object, align 4
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @gPhysBase, align 8
  %43 = sub nsw i64 %41, %42
  %44 = call i64 @vm_page_lookup(i32 %40, i64 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @VM_PAGE_NULL, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @VM_PAGE_WIRED(i64 %50)
  %52 = call i32 @assert(i32 %51)
  %53 = call i32 (...) @vm_page_lock_queues()
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @vm_page_free(i64 %54)
  %56 = call i32 (...) @vm_page_unlock_queues()
  %57 = load i32, i32* @pmap_object, align 4
  %58 = call i32 @vm_object_unlock(i32 %57)
  br label %59

59:                                               ; preds = %37
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = add nsw i64 %60, %61
  store i64 %62, i64* %3, align 8
  br label %33

63:                                               ; preds = %11, %33
  ret void
}

declare dso_local i32 @pmap_simple_lock(i32*) #1

declare dso_local i64 @phystokv(i64) #1

declare dso_local i32 @pmap_simple_unlock(i32*) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @vm_object_lock(i32) #1

declare dso_local i64 @vm_page_lookup(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VM_PAGE_WIRED(i64) #1

declare dso_local i32 @vm_page_lock_queues(...) #1

declare dso_local i32 @vm_page_free(i64) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @vm_object_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
