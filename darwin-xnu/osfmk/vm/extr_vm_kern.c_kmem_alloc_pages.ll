; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_kern.c_kmem_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_kern.c_kmem_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@VM_PAGE_NULL = common dso_local global %struct.TYPE_4__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kmem_alloc_pages(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @vm_object_round_page(i64 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @vm_object_lock(i32 %11)
  br label %13

13:                                               ; preds = %29, %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %23, %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VM_PAGE_NULL, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_4__* @vm_page_alloc(i32 %19, i32 %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %8, align 8
  %22 = icmp eq %struct.TYPE_4__* %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @vm_object_unlock(i32 %24)
  %26 = call i32 (...) @VM_PAGE_WAIT()
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @vm_object_lock(i32 %27)
  br label %17

29:                                               ; preds = %17
  %30 = load i32, i32* @FALSE, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub nsw i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @vm_object_unlock(i32 %42)
  %44 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %44
}

declare dso_local i64 @vm_object_round_page(i64) #1

declare dso_local i32 @vm_object_lock(i32) #1

declare dso_local %struct.TYPE_4__* @vm_page_alloc(i32, i32) #1

declare dso_local i32 @vm_object_unlock(i32) #1

declare dso_local i32 @VM_PAGE_WAIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
