; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_paethPredictor.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_paethPredictor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i16, i16, i16)* @paethPredictor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @paethPredictor(i16 signext %0, i16 signext %1, i16 signext %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %11 = load i16, i16* %6, align 2
  %12 = sext i16 %11 to i32
  %13 = load i16, i16* %7, align 2
  %14 = sext i16 %13 to i32
  %15 = sub nsw i32 %12, %14
  %16 = trunc i32 %15 to i16
  %17 = call signext i16 @abs(i16 signext %16)
  store i16 %17, i16* %8, align 2
  %18 = load i16, i16* %5, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* %7, align 2
  %21 = sext i16 %20 to i32
  %22 = sub nsw i32 %19, %21
  %23 = trunc i32 %22 to i16
  %24 = call signext i16 @abs(i16 signext %23)
  store i16 %24, i16* %9, align 2
  %25 = load i16, i16* %5, align 2
  %26 = sext i16 %25 to i32
  %27 = load i16, i16* %6, align 2
  %28 = sext i16 %27 to i32
  %29 = add nsw i32 %26, %28
  %30 = load i16, i16* %7, align 2
  %31 = sext i16 %30 to i32
  %32 = sub nsw i32 %29, %31
  %33 = load i16, i16* %7, align 2
  %34 = sext i16 %33 to i32
  %35 = sub nsw i32 %32, %34
  %36 = trunc i32 %35 to i16
  %37 = call signext i16 @abs(i16 signext %36)
  store i16 %37, i16* %10, align 2
  %38 = load i16, i16* %10, align 2
  %39 = sext i16 %38 to i32
  %40 = load i16, i16* %8, align 2
  %41 = sext i16 %40 to i32
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %3
  %44 = load i16, i16* %10, align 2
  %45 = sext i16 %44 to i32
  %46 = load i16, i16* %9, align 2
  %47 = sext i16 %46 to i32
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i16, i16* %7, align 2
  %51 = trunc i16 %50 to i8
  store i8 %51, i8* %4, align 1
  br label %64

52:                                               ; preds = %43, %3
  %53 = load i16, i16* %9, align 2
  %54 = sext i16 %53 to i32
  %55 = load i16, i16* %8, align 2
  %56 = sext i16 %55 to i32
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i16, i16* %6, align 2
  %60 = trunc i16 %59 to i8
  store i8 %60, i8* %4, align 1
  br label %64

61:                                               ; preds = %52
  %62 = load i16, i16* %5, align 2
  %63 = trunc i16 %62 to i8
  store i8 %63, i8* %4, align 1
  br label %64

64:                                               ; preds = %61, %58, %49
  %65 = load i8, i8* %4, align 1
  ret i8 %65
}

declare dso_local signext i16 @abs(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
