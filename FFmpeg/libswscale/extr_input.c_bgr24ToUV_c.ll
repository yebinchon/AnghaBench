; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_bgr24ToUV_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_bgr24ToUV_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RU_IDX = common dso_local global i64 0, align 8
@GU_IDX = common dso_local global i64 0, align 8
@BU_IDX = common dso_local global i64 0, align 8
@RV_IDX = common dso_local global i64 0, align 8
@GV_IDX = common dso_local global i64 0, align 8
@BV_IDX = common dso_local global i64 0, align 8
@RGB2YUV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32, i32*)* @bgr24ToUV_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgr24ToUV_c(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %27 = load i32*, i32** %8, align 8
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %9, align 8
  store i32* %28, i32** %16, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load i64, i64* @RU_IDX, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %17, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = load i64, i64* @GU_IDX, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %18, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = load i64, i64* @BU_IDX, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %19, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = load i64, i64* @RV_IDX, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %20, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = load i64, i64* @GV_IDX, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %21, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = load i64, i64* @BV_IDX, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %53

53:                                               ; preds = %131, %7
  %54 = load i32, i32* %23, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %134

57:                                               ; preds = %53
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %23, align 4
  %60 = mul nsw i32 3, %59
  %61 = add nsw i32 %60, 0
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %24, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %23, align 4
  %67 = mul nsw i32 3, %66
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %25, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %23, align 4
  %74 = mul nsw i32 3, %73
  %75 = add nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %26, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %26, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %25, align 4
  %84 = mul nsw i32 %82, %83
  %85 = add nsw i32 %81, %84
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %24, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %85, %88
  %90 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %91 = sub nsw i32 %90, 1
  %92 = shl i32 256, %91
  %93 = add nsw i32 %89, %92
  %94 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %95 = sub nsw i32 %94, 7
  %96 = shl i32 1, %95
  %97 = add nsw i32 %93, %96
  %98 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %99 = sub nsw i32 %98, 6
  %100 = ashr i32 %97, %99
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %23, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %26, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %25, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %107, %110
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %24, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %111, %114
  %116 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %117 = sub nsw i32 %116, 1
  %118 = shl i32 256, %117
  %119 = add nsw i32 %115, %118
  %120 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %121 = sub nsw i32 %120, 7
  %122 = shl i32 1, %121
  %123 = add nsw i32 %119, %122
  %124 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %125 = sub nsw i32 %124, 6
  %126 = ashr i32 %123, %125
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %23, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  br label %131

131:                                              ; preds = %57
  %132 = load i32, i32* %23, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %23, align 4
  br label %53

134:                                              ; preds = %53
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = icmp eq i32* %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @av_assert1(i32 %138)
  ret void
}

declare dso_local i32 @av_assert1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
