; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_InitBuffer.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_InitBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCREENWIDTH = common dso_local global i32 0, align 4
@viewwindowx = common dso_local global i32 0, align 4
@columnofs = common dso_local global i32* null, align 8
@viewwindowy = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i32 0, align 4
@SBARHEIGHT = common dso_local global i32 0, align 4
@screens = common dso_local global i64* null, align 8
@ylookup = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_InitBuffer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SCREENWIDTH, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %6, %7
  %9 = ashr i32 %8, 1
  store i32 %9, i32* @viewwindowx, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i32, i32* @viewwindowx, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32*, i32** @columnofs, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %10

25:                                               ; preds = %10
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SCREENWIDTH, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* @viewwindowy, align 4
  br label %37

30:                                               ; preds = %25
  %31 = load i32, i32* @SCREENHEIGHT, align 4
  %32 = load i32, i32* @SBARHEIGHT, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %33, %34
  %36 = ashr i32 %35, 1
  store i32 %36, i32* @viewwindowy, align 4
  br label %37

37:                                               ; preds = %30, %29
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i64*, i64** @screens, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @viewwindowy, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* @SCREENWIDTH, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %45, %51
  %53 = load i64*, i64** @ylookup, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %52, i64* %56, align 8
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %38

60:                                               ; preds = %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
