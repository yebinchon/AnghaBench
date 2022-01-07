; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___calcFbbs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___calcFbbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VI_XFBMODE_DF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32*, i32*)* @__calcFbbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__calcFbbs(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, 65520
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %12, align 4
  %22 = shl i32 %21, 5
  %23 = and i32 %22, 8160
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 %25, 5
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %17, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %26, %29
  %31 = add nsw i32 %24, %30
  %32 = load i32*, i32** %15, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %16, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @VI_XFBMODE_DF, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %8
  %40 = load i32*, i32** %15, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %17, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32*, i32** %16, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %8
  %46 = load i32, i32* %14, align 4
  %47 = srem i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32*, i32** %15, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %18, align 4
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %15, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32*, i32** %16, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %45
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %59)
  %61 = load i32*, i32** %15, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %63)
  %65 = load i32*, i32** %16, align 8
  store i32 %64, i32* %65, align 4
  ret void
}

declare dso_local i32 @MEM_VIRTUAL_TO_PHYSICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
