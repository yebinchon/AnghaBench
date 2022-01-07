; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_rgb24ToUV_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_rgb24ToUV_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RU_IDX = common dso_local global i64 0, align 8
@GU_IDX = common dso_local global i64 0, align 8
@BU_IDX = common dso_local global i64 0, align 8
@RV_IDX = common dso_local global i64 0, align 8
@GV_IDX = common dso_local global i64 0, align 8
@BV_IDX = common dso_local global i64 0, align 8
@RGB2YUV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32, i32*)* @rgb24ToUV_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb24ToUV_c(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
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
  store i32 %32, i32* %18, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = load i64, i64* @GU_IDX, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %19, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = load i64, i64* @BU_IDX, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %20, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = load i64, i64* @RV_IDX, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %21, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = load i64, i64* @GV_IDX, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %22, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = load i64, i64* @BV_IDX, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %23, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = icmp eq i32* %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @av_assert1(i32 %56)
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %136, %7
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %139

62:                                               ; preds = %58
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %17, align 4
  %65 = mul nsw i32 3, %64
  %66 = add nsw i32 %65, 0
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %24, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %17, align 4
  %72 = mul nsw i32 3, %71
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %25, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %17, align 4
  %79 = mul nsw i32 3, %78
  %80 = add nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %26, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %24, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %25, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %86, %89
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %26, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %90, %93
  %95 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %96 = sub nsw i32 %95, 1
  %97 = shl i32 256, %96
  %98 = add nsw i32 %94, %97
  %99 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %100 = sub nsw i32 %99, 7
  %101 = shl i32 1, %100
  %102 = add nsw i32 %98, %101
  %103 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %104 = sub nsw i32 %103, 6
  %105 = ashr i32 %102, %104
  %106 = load i32*, i32** %15, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %24, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %22, align 4
  %114 = load i32, i32* %25, align 4
  %115 = mul nsw i32 %113, %114
  %116 = add nsw i32 %112, %115
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* %26, align 4
  %119 = mul nsw i32 %117, %118
  %120 = add nsw i32 %116, %119
  %121 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %122 = sub nsw i32 %121, 1
  %123 = shl i32 256, %122
  %124 = add nsw i32 %120, %123
  %125 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %126 = sub nsw i32 %125, 7
  %127 = shl i32 1, %126
  %128 = add nsw i32 %124, %127
  %129 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %130 = sub nsw i32 %129, 6
  %131 = ashr i32 %128, %130
  %132 = load i32*, i32** %16, align 8
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %62
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %17, align 4
  br label %58

139:                                              ; preds = %58
  ret void
}

declare dso_local i32 @av_assert1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
