; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_mem_flags_for_mapping.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_mem_flags_for_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_HWFRAME_MAP_READ = common dso_local global i32 0, align 4
@AV_HWFRAME_MAP_WRITE = common dso_local global i32 0, align 4
@CL_MEM_READ_WRITE = common dso_local global i32 0, align 4
@CL_MEM_READ_ONLY = common dso_local global i32 0, align 4
@CL_MEM_WRITE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @opencl_mem_flags_for_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opencl_mem_flags_for_mapping(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @AV_HWFRAME_MAP_READ, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @AV_HWFRAME_MAP_WRITE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @CL_MEM_READ_WRITE, align 4
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %8, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @AV_HWFRAME_MAP_READ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @CL_MEM_READ_ONLY, align 4
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @AV_HWFRAME_MAP_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @CL_MEM_WRITE_ONLY, align 4
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %27, %20, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
