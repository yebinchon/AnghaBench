; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_bgr24ToUV_half_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_bgr24ToUV_half_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RU_IDX = common dso_local global i64 0, align 8
@GU_IDX = common dso_local global i64 0, align 8
@BU_IDX = common dso_local global i64 0, align 8
@RV_IDX = common dso_local global i64 0, align 8
@GV_IDX = common dso_local global i64 0, align 8
@BV_IDX = common dso_local global i64 0, align 8
@RGB2YUV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32, i32*)* @bgr24ToUV_half_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgr24ToUV_half_c(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
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
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %153, %7
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %156

57:                                               ; preds = %53
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %17, align 4
  %60 = mul nsw i32 6, %59
  %61 = add nsw i32 %60, 0
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %17, align 4
  %67 = mul nsw i32 6, %66
  %68 = add nsw i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %64, %71
  store i32 %72, i32* %24, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %17, align 4
  %75 = mul nsw i32 6, %74
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %17, align 4
  %82 = mul nsw i32 6, %81
  %83 = add nsw i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %79, %86
  store i32 %87, i32* %25, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %17, align 4
  %90 = mul nsw i32 6, %89
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %17, align 4
  %97 = mul nsw i32 6, %96
  %98 = add nsw i32 %97, 5
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %94, %101
  store i32 %102, i32* %26, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %26, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %25, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %105, %108
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %24, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %109, %112
  %114 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %115 = shl i32 256, %114
  %116 = add nsw i32 %113, %115
  %117 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %118 = sub nsw i32 %117, 6
  %119 = shl i32 1, %118
  %120 = add nsw i32 %116, %119
  %121 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %122 = sub nsw i32 %121, 5
  %123 = ashr i32 %120, %122
  %124 = load i32*, i32** %15, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* %26, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* %22, align 4
  %132 = load i32, i32* %25, align 4
  %133 = mul nsw i32 %131, %132
  %134 = add nsw i32 %130, %133
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* %24, align 4
  %137 = mul nsw i32 %135, %136
  %138 = add nsw i32 %134, %137
  %139 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %140 = shl i32 256, %139
  %141 = add nsw i32 %138, %140
  %142 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %143 = sub nsw i32 %142, 6
  %144 = shl i32 1, %143
  %145 = add nsw i32 %141, %144
  %146 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %147 = sub nsw i32 %146, 5
  %148 = ashr i32 %145, %147
  %149 = load i32*, i32** %16, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  br label %153

153:                                              ; preds = %57
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %17, align 4
  br label %53

156:                                              ; preds = %53
  %157 = load i32*, i32** %11, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = icmp eq i32* %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @av_assert1(i32 %160)
  ret void
}

declare dso_local i32 @av_assert1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
