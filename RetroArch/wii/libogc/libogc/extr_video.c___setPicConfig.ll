; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___setPicConfig.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___setPicConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VI_XFBMODE_DF = common dso_local global i64 0, align 8
@regs = common dso_local global i32* null, align 8
@changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32, i32*, i32*, i32*, i32*)* @__setPicConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setPicConfig(i32 %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 15
  %19 = sdiv i32 %18, 16
  %20 = load i32*, i32** %13, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %14, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @VI_XFBMODE_DF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %8
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %27, %8
  %32 = load i32, i32* %11, align 4
  %33 = srem i32 %32, 16
  %34 = load i32*, i32** %16, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %16, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 15
  %39 = add nsw i32 %36, %38
  %40 = sdiv i32 %39, 16
  %41 = load i32*, i32** %15, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %44, %46
  %48 = load i32*, i32** @regs, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 36
  store i32 %47, i32* %49, align 4
  %50 = call i32 @VI_REGCHANGE(i32 36)
  %51 = load i32, i32* @changed, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* @changed, align 4
  ret void
}

declare dso_local i32 @VI_REGCHANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
