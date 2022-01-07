; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_max_32bit_offset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_max_32bit_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_PMAP_MAX_OFFSET_DEFAULT = common dso_local global i32 0, align 4
@arm_pmap_max_offset_default = common dso_local global i32 0, align 4
@ARM_PMAP_MAX_OFFSET_MIN = common dso_local global i32 0, align 4
@ARM_PMAP_MAX_OFFSET_MAX = common dso_local global i32 0, align 4
@VM_MAX_ADDRESS = common dso_local global i32 0, align 4
@ARM_PMAP_MAX_OFFSET_DEVICE = common dso_local global i32 0, align 4
@max_mem = common dso_local global i32 0, align 4
@ARM_PMAP_MAX_OFFSET_JUMBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pmap_max_32bit_offset illegal option 0x%x\0A\00", align 1
@MACH_VM_MAX_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_max_32bit_offset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @ARM_PMAP_MAX_OFFSET_DEFAULT, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @arm_pmap_max_offset_default, align 4
  store i32 %8, i32* %3, align 4
  br label %48

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @ARM_PMAP_MAX_OFFSET_MIN, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 1711276032, i32* %3, align 4
  br label %47

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @ARM_PMAP_MAX_OFFSET_MAX, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @VM_MAX_ADDRESS, align 4
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @ARM_PMAP_MAX_OFFSET_DEVICE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32, i32* @arm_pmap_max_offset_default, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @arm_pmap_max_offset_default, align 4
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @max_mem, align 4
  %31 = icmp sgt i32 %30, 536870912
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 -2147483648, i32* %3, align 4
  br label %34

33:                                               ; preds = %29
  store i32 1711276032, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %27
  br label %45

36:                                               ; preds = %20
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @ARM_PMAP_MAX_OFFSET_JUMBO, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -2147483648, i32* %3, align 4
  br label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %40
  br label %45

45:                                               ; preds = %44, %35
  br label %46

46:                                               ; preds = %45, %18
  br label %47

47:                                               ; preds = %46, %13
  br label %48

48:                                               ; preds = %47, %7
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @MACH_VM_MAX_ADDRESS, align 4
  %51 = icmp sle i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
