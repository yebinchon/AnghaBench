; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawSpriteInterlace.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawSpriteInterlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DrawScanline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @DrawSpriteInterlace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawSpriteInterlace(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = ashr i32 %15, 24
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %11, align 4
  %18 = and i32 %17, 1023
  %19 = sub nsw i32 %18, 256
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 2
  %22 = and i32 %21, 3
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 3
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @DrawScanline, align 4
  %30 = shl i32 %29, 1
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 511
  %39 = sub nsw i32 %38, 120
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 4096
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %1
  %44 = load i32, i32* %4, align 4
  %45 = shl i32 16, %44
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %5, align 4
  %48 = xor i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 1023
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 2048
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %49
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %3, align 4
  %63 = sub nsw i32 %62, 1
  %64 = mul nsw i32 %61, %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %60, %49
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 %70, 5
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 15
  %74 = shl i32 %73, 1
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %77, 5
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 9
  %81 = and i32 %80, 48
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %110, %69
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %110

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = icmp sge i32 %90, 328
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %118

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 32767
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 2048
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @TileFlip(i32 %100, i32 %101, i32 %102)
  br label %109

104:                                              ; preds = %93
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @TileNorm(i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %88
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 8
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %82

118:                                              ; preds = %92, %82
  ret void
}

declare dso_local i32 @TileFlip(i32, i32, i32) #1

declare dso_local i32 @TileNorm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
