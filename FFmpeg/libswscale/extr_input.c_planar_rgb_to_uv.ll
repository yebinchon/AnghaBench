; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_planar_rgb_to_uv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_planar_rgb_to_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RU_IDX = common dso_local global i64 0, align 8
@GU_IDX = common dso_local global i64 0, align 8
@BU_IDX = common dso_local global i64 0, align 8
@RV_IDX = common dso_local global i64 0, align 8
@GV_IDX = common dso_local global i64 0, align 8
@BV_IDX = common dso_local global i64 0, align 8
@RGB2YUV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32**, i32, i32*)* @planar_rgb_to_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @planar_rgb_to_uv(i32* %0, i32* %1, i32** %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %23 = load i32*, i32** %6, align 8
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %7, align 8
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i64, i64* @RU_IDX, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* @GU_IDX, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i64, i64* @BU_IDX, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i64, i64* @RV_IDX, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %16, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i64, i64* @GV_IDX, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* @BV_IDX, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %49

49:                                               ; preds = %119, %5
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %122

53:                                               ; preds = %49
  %54 = load i32**, i32*** %8, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %20, align 4
  %61 = load i32**, i32*** %8, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %19, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %21, align 4
  %68 = load i32**, i32*** %8, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %22, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %20, align 4
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 %77, %80
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %21, align 4
  %84 = mul nsw i32 %82, %83
  %85 = add nsw i32 %81, %84
  %86 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %87 = sub nsw i32 %86, 7
  %88 = shl i32 16385, %87
  %89 = add nsw i32 %85, %88
  %90 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %91 = sub nsw i32 %90, 6
  %92 = ashr i32 %89, %91
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %22, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %20, align 4
  %102 = mul nsw i32 %100, %101
  %103 = add nsw i32 %99, %102
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %21, align 4
  %106 = mul nsw i32 %104, %105
  %107 = add nsw i32 %103, %106
  %108 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %109 = sub nsw i32 %108, 7
  %110 = shl i32 16385, %109
  %111 = add nsw i32 %107, %110
  %112 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %113 = sub nsw i32 %112, 6
  %114 = ashr i32 %111, %113
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %53
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %19, align 4
  br label %49

122:                                              ; preds = %49
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
