; ModuleID = '/home/carl/AnghaBench/RetroArch/bootstrap/vita/extr_sbrk.c__init_vita_heap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/bootstrap/vita/extr_sbrk.c__init_vita_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.SceKernelLwMutexWork = type { i32 }

@_newlib_vm_size_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"code\00", align 1
@_newlib_vm_memblock = common dso_local global i64 0, align 8
@_newlib_sbrk_mutex = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"sbrk mutex\00", align 1
@_newlib_heap_size_user = common dso_local global i32 0, align 4
@_newlib_heap_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Newlib heap\00", align 1
@_newlib_heap_memblock = common dso_local global i64 0, align 8
@_newlib_heap_base = common dso_local global i32 0, align 4
@_newlib_heap_end = common dso_local global i32 0, align 4
@_newlib_heap_cur = common dso_local global i32 0, align 4
@RAM_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_init_vita_heap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @_newlib_vm_size_user, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @_newlib_vm_size_user, align 4
  %5 = call i64 @sceKernelAllocMemBlockForVM(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i64 %5, i64* @_newlib_vm_memblock, align 8
  %6 = load i64, i64* @_newlib_vm_memblock, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %37

9:                                                ; preds = %0
  %10 = load i64, i64* @_newlib_sbrk_mutex, align 8
  %11 = inttoptr i64 %10 to %struct.SceKernelLwMutexWork*
  %12 = call i64 @sceKernelCreateLwMutex(%struct.SceKernelLwMutexWork* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 0)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %37

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 8, i32* %16, align 4
  %17 = call i32 @sceKernelGetFreeMemorySize(%struct.TYPE_3__* %2)
  %18 = load i32, i32* @_newlib_heap_size_user, align 4
  store i32 %18, i32* @_newlib_heap_size, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @_newlib_heap_size, align 4
  %21 = sub nsw i32 %20, %19
  store i32 %21, i32* @_newlib_heap_size, align 4
  %22 = load i32, i32* @_newlib_heap_size, align 4
  %23 = call i64 @sceKernelAllocMemBlock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 203477088, i32 %22, i32 0)
  store i64 %23, i64* @_newlib_heap_memblock, align 8
  %24 = load i64, i64* @_newlib_heap_memblock, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %37

27:                                               ; preds = %15
  %28 = load i64, i64* @_newlib_heap_memblock, align 8
  %29 = call i64 @sceKernelGetMemBlockBase(i64 %28, i8** bitcast (i32* @_newlib_heap_base to i8**))
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @_newlib_heap_base, align 4
  %34 = load i32, i32* @_newlib_heap_size, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* @_newlib_heap_end, align 4
  %36 = load i32, i32* @_newlib_heap_base, align 4
  store i32 %36, i32* @_newlib_heap_cur, align 4
  br label %38

37:                                               ; preds = %31, %26, %14, %8
  store i64 0, i64* @_newlib_vm_memblock, align 8
  store i64 0, i64* @_newlib_heap_memblock, align 8
  store i32 0, i32* @_newlib_heap_base, align 4
  store i32 0, i32* @_newlib_heap_cur, align 4
  br label %38

38:                                               ; preds = %37, %32
  ret void
}

declare dso_local i64 @sceKernelAllocMemBlockForVM(i8*, i32) #1

declare dso_local i64 @sceKernelCreateLwMutex(%struct.SceKernelLwMutexWork*, i8*, i32, i32, i32) #1

declare dso_local i32 @sceKernelGetFreeMemorySize(%struct.TYPE_3__*) #1

declare dso_local i64 @sceKernelAllocMemBlock(i8*, i32, i32, i32) #1

declare dso_local i64 @sceKernelGetMemBlockBase(i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
