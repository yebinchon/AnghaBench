; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_mode4.c_draw_strip.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_mode4.c_draw_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*, i32, i32, i32)* @draw_strip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_strip(i16* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i16* %0, i16** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %80, %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %87

18:                                               ; preds = %15
  %19 = load i16*, i16** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 31
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %19, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %80

30:                                               ; preds = %18
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = xor i32 %31, %32
  %34 = and i32 %33, 4096
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %80

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, 511
  %45 = shl i32 %44, 4
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 16
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %13, align 4
  %51 = and i32 %50, 1024
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* %11, align 4
  %55 = xor i32 %54, 14
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %41
  %57 = load i32, i32* %13, align 4
  %58 = ashr i32 %57, 7
  %59 = and i32 %58, 16
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %37
  %61 = load i32, i32* %13, align 4
  %62 = and i32 %61, 512
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @TileFlipM4(i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  br label %74

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @TileNormM4(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %77, %74
  br label %80

80:                                               ; preds = %79, %36, %29
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 8
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %7, align 4
  br label %15

87:                                               ; preds = %15
  ret void
}

declare dso_local i32 @TileFlipM4(i32, i32, i32) #1

declare dso_local i32 @TileNormM4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
