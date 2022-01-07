; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_Plot.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_Plot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@charset = common dso_local global i32* null, align 8
@Screen_atari = common dso_local global i64 0, align 8
@Screen_WIDTH = common dso_local global i32 0, align 4
@colour_translation_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @Plot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Plot(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** @charset, align 8
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 127
  %19 = mul nsw i32 %18, 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %11, align 8
  %22 = load i64, i64* @Screen_atari, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* @Screen_WIDTH, align 4
  %25 = mul nsw i32 24, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = getelementptr inbounds i32, i32* %27, i64 32
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @Screen_WIDTH, align 4
  %31 = mul nsw i32 8, %30
  %32 = mul nsw i32 %29, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32* %38, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %74, %5
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %77

42:                                               ; preds = %39
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %11, align 8
  %45 = load i32, i32* %43, align 4
  store i32 %45, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %65, %42
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %12, align 8
  %52 = ptrtoint i32* %50 to i32
  %53 = load i32, i32* %15, align 4
  %54 = and i32 %53, 128
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  br label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = call i32 @ANTIC_VideoPutByte(i32 %52, i32 %61)
  %63 = load i32, i32* %15, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %46

68:                                               ; preds = %46
  %69 = load i32, i32* @Screen_WIDTH, align 4
  %70 = sub nsw i32 %69, 8
  %71 = load i32*, i32** %12, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %12, align 8
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %39

77:                                               ; preds = %39
  ret void
}

declare dso_local i32 @ANTIC_VideoPutByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
