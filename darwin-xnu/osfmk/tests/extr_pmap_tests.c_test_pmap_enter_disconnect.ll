; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_pmap_tests.c_test_pmap_enter_disconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_pmap_tests.c_test_pmap_enter_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8
@VM_PAGE_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@pmap_disconnect_thread = common dso_local global i32 0, align 4
@PMAP_TEST_VA = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_WIMG_USE_DEFAULT = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @test_pmap_enter_disconnect(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %11, i64* %4, align 8
  %12 = call i32* (...) @pmap_create_wrapper()
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %16, i64* %2, align 8
  br label %93

17:                                               ; preds = %1
  %18 = call i64 (...) @vm_page_grab()
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @VM_PAGE_NULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @pmap_destroy(i32* %23)
  %25 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %25, i64* %2, align 8
  br label %93

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @VM_PAGE_GET_PHYS_PAGE(i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %30 = load i32*, i32** %6, align 8
  %31 = ptrtoint i32* %30 to i32
  store i32 %31, i32* %29, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* @pmap_disconnect_thread, align 4
  %38 = call i64 @kernel_thread_start(i32 %37, %struct.TYPE_3__* %9, i32* %5)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %26
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @pmap_destroy(i32* %42)
  %44 = call i32 (...) @vm_page_lock_queues()
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @vm_page_free(i64 %45)
  %47 = call i32 (...) @vm_page_unlock_queues()
  %48 = load i64, i64* %10, align 8
  store i64 %48, i64* %2, align 8
  br label %93

49:                                               ; preds = %26
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @thread_deallocate(i32 %50)
  br label %52

52:                                               ; preds = %56, %49
  %53 = load i32, i32* %3, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %3, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* @PMAP_TEST_VA, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @VM_PROT_READ, align 4
  %61 = load i32, i32* @VM_PROT_WRITE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @VM_PROT_NONE, align 4
  %64 = load i32, i32* @VM_WIMG_USE_DEFAULT, align 4
  %65 = load i32, i32* @FALSE, align 4
  %66 = call i64 @pmap_enter(i32* %57, i64 %58, i32 %59, i32 %62, i32 %63, i32 %64, i32 %65)
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @KERN_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %52

72:                                               ; preds = %52
  %73 = ptrtoint %struct.TYPE_3__* %9 to i32
  %74 = load i32, i32* @THREAD_UNINT, align 4
  %75 = call i32 @assert_wait(i32 %73, i32 %74)
  %76 = load i32, i32* @TRUE, align 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %79 = call i32 @thread_block(i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load i64, i64* @PMAP_TEST_VA, align 8
  %82 = load i64, i64* @PMAP_TEST_VA, align 8
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @pmap_remove(i32* %80, i64 %81, i64 %84)
  %86 = call i32 (...) @vm_page_lock_queues()
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @vm_page_free(i64 %87)
  %89 = call i32 (...) @vm_page_unlock_queues()
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @pmap_destroy(i32* %90)
  %92 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %92, i64* %2, align 8
  br label %93

93:                                               ; preds = %72, %41, %22, %15
  %94 = load i64, i64* %2, align 8
  ret i64 %94
}

declare dso_local i32* @pmap_create_wrapper(...) #1

declare dso_local i64 @vm_page_grab(...) #1

declare dso_local i32 @pmap_destroy(i32*) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(i64) #1

declare dso_local i64 @kernel_thread_start(i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @vm_page_lock_queues(...) #1

declare dso_local i32 @vm_page_free(i64) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @thread_deallocate(i32) #1

declare dso_local i64 @pmap_enter(i32*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i32 @pmap_remove(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
