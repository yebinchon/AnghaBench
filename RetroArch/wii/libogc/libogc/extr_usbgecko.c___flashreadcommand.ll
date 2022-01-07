; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_usbgecko.c___flashreadcommand.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_usbgecko.c___flashreadcommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@EXI_SPEED16MHZ = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@EXI_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @__flashreadcommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__flashreadcommand(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 9
  %12 = or i32 -268435456, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 524287
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EXI_DEVICE_0, align 4
  %19 = load i32, i32* @EXI_SPEED16MHZ, align 4
  %20 = call i32 @EXI_Select(i32 %17, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @EXI_WRITE, align 4
  %28 = call i32 @EXI_ImmEx(i32 %26, i32* %9, i32 4, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, 2
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @EXI_READ, align 4
  %36 = call i32 @EXI_ImmEx(i32 %34, i32* %9, i32 4, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @EXI_Deselect(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, 8
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, 23
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %51, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @EXI_Select(i32, i32, i32) #1

declare dso_local i32 @EXI_ImmEx(i32, i32*, i32, i32) #1

declare dso_local i32 @EXI_Deselect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
