; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspacedsp.c_multiply3x3_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspacedsp.c_multiply3x3_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32, i32, [3 x [8 x i32]]*)* @multiply3x3_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiply3x3_c(i32** %0, i32 %1, i32 %2, i32 %3, [3 x [8 x i32]]* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x [8 x i32]]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store [3 x [8 x i32]]* %4, [3 x [8 x i32]]** %10, align 8
  %19 = load i32**, i32*** %6, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %14, align 8
  %25 = load i32**, i32*** %6, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 2
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %15, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %159, %5
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %162

32:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %143, %32
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %146

37:                                               ; preds = %33
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %17, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %18, align 4
  %53 = load [3 x [8 x i32]]*, [3 x [8 x i32]]** %10, align 8
  %54 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %53, i64 0
  %55 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %54, i64 0, i64 0
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %55, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %16, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load [3 x [8 x i32]]*, [3 x [8 x i32]]** %10, align 8
  %61 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %60, i64 0
  %62 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %61, i64 0, i64 1
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %62, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %17, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %59, %66
  %68 = load [3 x [8 x i32]]*, [3 x [8 x i32]]** %10, align 8
  %69 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %68, i64 0
  %70 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %69, i64 0, i64 2
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %70, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %18, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %67, %74
  %76 = add nsw i32 %75, 8192
  %77 = ashr i32 %76, 14
  %78 = call i32 @av_clip_int16(i32 %77)
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = load [3 x [8 x i32]]*, [3 x [8 x i32]]** %10, align 8
  %84 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %83, i64 1
  %85 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %84, i64 0, i64 0
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %85, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %16, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load [3 x [8 x i32]]*, [3 x [8 x i32]]** %10, align 8
  %91 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %90, i64 1
  %92 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %91, i64 0, i64 1
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %92, i64 0, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %17, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %89, %96
  %98 = load [3 x [8 x i32]]*, [3 x [8 x i32]]** %10, align 8
  %99 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %98, i64 1
  %100 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %99, i64 0, i64 2
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %100, i64 0, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %18, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %97, %104
  %106 = add nsw i32 %105, 8192
  %107 = ashr i32 %106, 14
  %108 = call i32 @av_clip_int16(i32 %107)
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  %113 = load [3 x [8 x i32]]*, [3 x [8 x i32]]** %10, align 8
  %114 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %113, i64 2
  %115 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %114, i64 0, i64 0
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %115, i64 0, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %16, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load [3 x [8 x i32]]*, [3 x [8 x i32]]** %10, align 8
  %121 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %120, i64 2
  %122 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %121, i64 0, i64 1
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %122, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %17, align 4
  %126 = mul nsw i32 %124, %125
  %127 = add nsw i32 %119, %126
  %128 = load [3 x [8 x i32]]*, [3 x [8 x i32]]** %10, align 8
  %129 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %128, i64 2
  %130 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %129, i64 0, i64 2
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %130, i64 0, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %18, align 4
  %134 = mul nsw i32 %132, %133
  %135 = add nsw i32 %127, %134
  %136 = add nsw i32 %135, 8192
  %137 = ashr i32 %136, 14
  %138 = call i32 @av_clip_int16(i32 %137)
  %139 = load i32*, i32** %15, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %138, i32* %142, align 4
  br label %143

143:                                              ; preds = %37
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %33

146:                                              ; preds = %33
  %147 = load i32, i32* %7, align 4
  %148 = load i32*, i32** %13, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %13, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32*, i32** %14, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %14, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load i32*, i32** %15, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32* %158, i32** %15, align 8
  br label %159

159:                                              ; preds = %146
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %28

162:                                              ; preds = %28
  ret void
}

declare dso_local i32 @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
