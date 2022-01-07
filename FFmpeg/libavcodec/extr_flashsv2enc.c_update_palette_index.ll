; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv2enc.c_update_palette_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv2enc.c_update_palette_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @update_palette_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_palette_index(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 4, i32* %3, align 4
  br label %9

9:                                                ; preds = %56, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %59

12:                                               ; preds = %9
  store i32 4, i32* %4, align 4
  br label %13

13:                                               ; preds = %52, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  store i32 4, i32* %5, align 4
  br label %17

17:                                               ; preds = %48, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %22, 8
  %24 = or i32 %21, %23
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 %24, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 3
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 248
  %32 = shl i32 %31, 2
  %33 = or i32 %29, %32
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 248
  %36 = shl i32 %35, 7
  %37 = or i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @pixel_color7_slow(%struct.TYPE_4__* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %20
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 8
  store i32 %50, i32* %5, align 4
  br label %17

51:                                               ; preds = %17
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 8
  store i32 %54, i32* %4, align 4
  br label %13

55:                                               ; preds = %13
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 8
  store i32 %58, i32* %3, align 4
  br label %9

59:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @pixel_color7_slow(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
