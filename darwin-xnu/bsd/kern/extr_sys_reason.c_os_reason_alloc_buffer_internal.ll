; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_reason.c_os_reason_alloc_buffer_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_reason.c_os_reason_alloc_buffer_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, i32 }

@OS_REASON_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@OS_REASON_BUFFER_MAX_SIZE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_REASON = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KCDATA_BUFFER_BEGIN_OS_REASON = common dso_local global i32 0, align 4
@KCFLAG_USE_MEMCOPY = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i64)* @os_reason_alloc_buffer_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_reason_alloc_buffer_internal(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @OS_REASON_NULL, align 8
  %10 = icmp eq %struct.TYPE_5__* %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %4, align 4
  br label %94

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @OS_REASON_BUFFER_MAX_SIZE, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %94

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @lck_mtx_lock(i32* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = call i32 @os_reason_dealloc_buffer(%struct.TYPE_5__* %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @lck_mtx_unlock(i32* %29)
  store i32 0, i32* %4, align 4
  br label %94

31:                                               ; preds = %19
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @VM_KERN_MEMORY_REASON, align 4
  %37 = call i32* @kalloc_tag(i32 %35, i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  br label %62

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @VM_KERN_MEMORY_REASON, align 4
  %49 = call i32* @kalloc_noblock_tag(i32 %47, i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @lck_mtx_unlock(i32* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %4, align 4
  br label %94

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %34
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @bzero(i32* %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = ptrtoint i32* %75 to i32
  %77 = load i32, i32* @KCDATA_BUFFER_BEGIN_OS_REASON, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @KCFLAG_USE_MEMCOPY, align 4
  %80 = call i64 @kcdata_memory_static_init(i32* %72, i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i64, i64* @KERN_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %62
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = call i32 @os_reason_dealloc_buffer(%struct.TYPE_5__* %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = call i32 @lck_mtx_unlock(i32* %87)
  %89 = load i32, i32* @EIO, align 4
  store i32 %89, i32* %4, align 4
  br label %94

90:                                               ; preds = %62
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = call i32 @lck_mtx_unlock(i32* %92)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %83, %56, %27, %17, %11
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @os_reason_dealloc_buffer(%struct.TYPE_5__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32* @kalloc_tag(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @kalloc_noblock_tag(i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @kcdata_memory_static_init(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
