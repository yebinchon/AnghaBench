; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/pngminus/extr_pnm2png.c_get_data.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/pngminus/extr_pnm2png.c_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_data.bits_left = internal global i32 0, align 4
@get_data.old_value = internal global i32 0, align 4
@get_data.mask = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_data(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @get_data.mask, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %18, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* @get_data.mask, align 4
  %16 = ashr i32 %15, 1
  %17 = or i32 %16, 128
  store i32 %17, i32* @get_data.mask, align 4
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %10

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* @get_data.bits_left, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @fgetc(i32* %26)
  store i32 %27, i32* @get_data.old_value, align 4
  store i32 8, i32* @get_data.bits_left, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @get_data.old_value, align 4
  %30 = load i32, i32* @get_data.mask, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %48, %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sdiv i32 8, %34
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i1 [ true, %37 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load i32, i32* @get_data.old_value, align 4
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %52, %53
  %55 = and i32 %54, 255
  store i32 %55, i32* @get_data.old_value, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @get_data.bits_left, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* @get_data.bits_left, align 4
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @fgetc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
