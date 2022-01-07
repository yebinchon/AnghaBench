; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_ClearRectangle.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_ClearRectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Screen_atari = common dso_local global i64 0, align 8
@Screen_WIDTH = common dso_local global i32 0, align 4
@colour_translation_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @ClearRectangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ClearRectangle(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* @Screen_atari, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* @Screen_WIDTH, align 4
  %17 = mul nsw i32 %16, 24
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = getelementptr inbounds i32, i32* %19, i64 32
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %21, 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @Screen_WIDTH, align 4
  %27 = mul nsw i32 %26, 8
  %28 = mul nsw i32 %25, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  store i32* %30, i32** %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %31, %32
  %34 = add nsw i32 %33, 1
  %35 = shl i32 %34, 3
  store i32 %35, i32* %12, align 4
  %36 = load i64, i64* @Screen_atari, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* @Screen_WIDTH, align 4
  %39 = mul nsw i32 %38, 32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = getelementptr inbounds i32, i32* %41, i64 32
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @Screen_WIDTH, align 4
  %45 = mul nsw i32 %44, 8
  %46 = mul nsw i32 %43, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32* %48, i32** %13, align 8
  br label %49

49:                                               ; preds = %53, %5
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = icmp ult i32* %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @ANTIC_VideoMemset(i32* %54, i32 %55, i32 %56)
  %58 = load i32, i32* @Screen_WIDTH, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %11, align 8
  br label %49

62:                                               ; preds = %49
  ret void
}

declare dso_local i32 @ANTIC_VideoMemset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
