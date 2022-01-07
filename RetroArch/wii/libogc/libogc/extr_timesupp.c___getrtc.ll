; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_timesupp.c___getrtc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_timesupp.c___getrtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_DEVICE_1 = common dso_local global i32 0, align 4
@EXI_SPEED8MHZ = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@EXI_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @__getrtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__getrtc(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @EXI_CHANNEL_0, align 4
  %8 = load i32, i32* @EXI_DEVICE_1, align 4
  %9 = load i32, i32* @EXI_SPEED8MHZ, align 4
  %10 = call i64 @EXI_Select(i32 %7, i32 %8, i32 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 536870912, i32* %5, align 4
  %14 = load i32, i32* @EXI_CHANNEL_0, align 4
  %15 = load i32, i32* @EXI_WRITE, align 4
  %16 = call i64 @EXI_Imm(i32 %14, i32* %5, i32 4, i32 %15, i32* null)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* @EXI_CHANNEL_0, align 4
  %23 = call i64 @EXI_Sync(i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, 2
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* @EXI_CHANNEL_0, align 4
  %30 = load i32, i32* @EXI_READ, align 4
  %31 = call i64 @EXI_Imm(i32 %29, i32* %6, i32 4, i32 %30, i32* null)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* @EXI_CHANNEL_0, align 4
  %38 = call i64 @EXI_Sync(i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, 8
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* @EXI_CHANNEL_0, align 4
  %45 = call i64 @EXI_Deselect(i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, 16
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %3, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %57

56:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @EXI_Select(i32, i32, i32) #1

declare dso_local i64 @EXI_Imm(i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @EXI_Sync(i32) #1

declare dso_local i64 @EXI_Deselect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
