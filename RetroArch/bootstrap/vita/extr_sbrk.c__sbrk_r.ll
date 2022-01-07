; ModuleID = '/home/carl/AnghaBench/RetroArch/bootstrap/vita/extr_sbrk.c__sbrk_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/bootstrap/vita/extr_sbrk.c__sbrk_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.SceKernelLwMutexWork = type { i32 }

@_newlib_sbrk_mutex = common dso_local global i64 0, align 8
@_newlib_heap_base = common dso_local global i32 0, align 4
@_newlib_heap_cur = common dso_local global i64 0, align 8
@_newlib_heap_end = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_sbrk_r(%struct._reent* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._reent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct._reent* %0, %struct._reent** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @_newlib_sbrk_mutex, align 8
  %8 = inttoptr i64 %7 to %struct.SceKernelLwMutexWork*
  %9 = call i64 @sceKernelLockLwMutex(%struct.SceKernelLwMutexWork* %8, i32 1, i32 0)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %26

12:                                               ; preds = %2
  %13 = load i32, i32* @_newlib_heap_base, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i64, i64* @_newlib_heap_cur, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load i64, i64* @_newlib_heap_end, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %15, %12
  %23 = load i64, i64* @_newlib_sbrk_mutex, align 8
  %24 = inttoptr i64 %23 to %struct.SceKernelLwMutexWork*
  %25 = call i32 @sceKernelUnlockLwMutex(%struct.SceKernelLwMutexWork* %24, i32 1)
  br label %26

26:                                               ; preds = %22, %11
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = load %struct._reent*, %struct._reent** %4, align 8
  %29 = getelementptr inbounds %struct._reent, %struct._reent* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i8* inttoptr (i64 -1 to i8*), i8** %3, align 8
  br label %41

30:                                               ; preds = %15
  %31 = load i64, i64* @_newlib_heap_cur, align 8
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @_newlib_heap_cur, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* @_newlib_heap_cur, align 8
  %37 = load i64, i64* @_newlib_sbrk_mutex, align 8
  %38 = inttoptr i64 %37 to %struct.SceKernelLwMutexWork*
  %39 = call i32 @sceKernelUnlockLwMutex(%struct.SceKernelLwMutexWork* %38, i32 1)
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %30, %26
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i64 @sceKernelLockLwMutex(%struct.SceKernelLwMutexWork*, i32, i32) #1

declare dso_local i32 @sceKernelUnlockLwMutex(%struct.SceKernelLwMutexWork*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
