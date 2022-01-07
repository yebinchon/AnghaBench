; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideoencdsp.c_pix_norm1_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideoencdsp.c_pix_norm1_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_square_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @pix_norm1_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_norm1_c(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32*, i32** @ff_square_tab, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 256
  store i32* %11, i32** %8, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %106, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %109

15:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %97, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %100

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 255
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %49, 24
  %51 = and i32 %50, 255
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 255
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 16
  %80 = and i32 %79, 255
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = ashr i32 %87, 24
  %89 = and i32 %88, 255
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 8
  store i32* %96, i32** %3, align 8
  br label %97

97:                                               ; preds = %19
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 8
  store i32 %99, i32* %7, align 4
  br label %16

100:                                              ; preds = %16
  %101 = load i32, i32* %4, align 4
  %102 = sub nsw i32 %101, 16
  %103 = load i32*, i32** %3, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %3, align 8
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %12

109:                                              ; preds = %12
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
