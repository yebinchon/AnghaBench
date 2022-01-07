; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_rgb24ToUV_half_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_rgb24ToUV_half_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RU_IDX = common dso_local global i64 0, align 8
@GU_IDX = common dso_local global i64 0, align 8
@BU_IDX = common dso_local global i64 0, align 8
@RV_IDX = common dso_local global i64 0, align 8
@GV_IDX = common dso_local global i64 0, align 8
@BV_IDX = common dso_local global i64 0, align 8
@RGB2YUV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32, i32*)* @rgb24ToUV_half_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb24ToUV_half_c(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
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

58:                                               ; preds = %158, %7
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %161

62:                                               ; preds = %58
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %17, align 4
  %65 = mul nsw i32 6, %64
  %66 = add nsw i32 %65, 0
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %17, align 4
  %72 = mul nsw i32 6, %71
  %73 = add nsw i32 %72, 3
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %69, %76
  store i32 %77, i32* %24, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %17, align 4
  %80 = mul nsw i32 6, %79
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %17, align 4
  %87 = mul nsw i32 6, %86
  %88 = add nsw i32 %87, 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %84, %91
  store i32 %92, i32* %25, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %17, align 4
  %95 = mul nsw i32 6, %94
  %96 = add nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %17, align 4
  %102 = mul nsw i32 6, %101
  %103 = add nsw i32 %102, 5
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %99, %106
  store i32 %107, i32* %26, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %24, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %25, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %110, %113
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %26, align 4
  %117 = mul nsw i32 %115, %116
  %118 = add nsw i32 %114, %117
  %119 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %120 = shl i32 256, %119
  %121 = add nsw i32 %118, %120
  %122 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %123 = sub nsw i32 %122, 6
  %124 = shl i32 1, %123
  %125 = add nsw i32 %121, %124
  %126 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %127 = sub nsw i32 %126, 5
  %128 = ashr i32 %125, %127
  %129 = load i32*, i32** %15, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %24, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %25, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 %135, %138
  %140 = load i32, i32* %23, align 4
  %141 = load i32, i32* %26, align 4
  %142 = mul nsw i32 %140, %141
  %143 = add nsw i32 %139, %142
  %144 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %145 = shl i32 256, %144
  %146 = add nsw i32 %143, %145
  %147 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %148 = sub nsw i32 %147, 6
  %149 = shl i32 1, %148
  %150 = add nsw i32 %146, %149
  %151 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %152 = sub nsw i32 %151, 5
  %153 = ashr i32 %150, %152
  %154 = load i32*, i32** %16, align 8
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %62
  %159 = load i32, i32* %17, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %17, align 4
  br label %58

161:                                              ; preds = %58
  ret void
}

declare dso_local i32 @av_assert1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
