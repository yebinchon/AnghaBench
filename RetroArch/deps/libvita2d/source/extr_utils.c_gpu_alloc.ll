; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_utils.c_gpu_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_utils.c_gpu_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCE_KERNEL_MEMBLOCK_TYPE_USER_CDRAM_RW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"gpu_mem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gpu_alloc(i64 %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @SCE_KERNEL_MEMBLOCK_TYPE_USER_CDRAM_RW, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @ALIGN(i32 %17, i32 262144)
  store i32 %18, i32* %8, align 4
  br label %22

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ALIGN(i32 %20, i32 4096)
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @sceKernelAllocMemBlock(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24, i32* null)
  %26 = load i64*, i64** %11, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i8* null, i8** %6, align 8
  br label %46

31:                                               ; preds = %22
  %32 = load i64*, i64** %11, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @sceKernelGetMemBlockBase(i64 %33, i8** %12)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i8* null, i8** %6, align 8
  br label %46

37:                                               ; preds = %31
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @sceGxmMapMemory(i8* %38, i32 %39, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i8* null, i8** %6, align 8
  br label %46

44:                                               ; preds = %37
  %45 = load i8*, i8** %12, align 8
  store i8* %45, i8** %6, align 8
  br label %46

46:                                               ; preds = %44, %43, %36, %30
  %47 = load i8*, i8** %6, align 8
  ret i8* %47
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @sceKernelAllocMemBlock(i8*, i64, i32, i32*) #1

declare dso_local i64 @sceKernelGetMemBlockBase(i64, i8**) #1

declare dso_local i64 @sceGxmMapMemory(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
