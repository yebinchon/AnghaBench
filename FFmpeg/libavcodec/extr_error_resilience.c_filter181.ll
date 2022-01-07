; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_error_resilience.c_filter181.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_error_resilience.c_filter181.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @filter181 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter181(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %15

15:                                               ; preds = %91, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %94

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %22, %23
  %25 = add nsw i32 0, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  store i32 1, i32* %9, align 4
  br label %29

29:                                               ; preds = %87, %20
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %90

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 0, %35
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 8
  %47 = add nsw i32 %36, %46
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %48, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %47, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @INT_MIN, align 4
  %61 = sdiv i32 %60, 10923
  %62 = load i32, i32* @INT_MAX, align 4
  %63 = sdiv i32 %62, 10923
  %64 = sub nsw i32 %63, 32768
  %65 = call i32 @av_clip(i32 %59, i32 %61, i32 %64)
  %66 = mul nsw i32 %65, 10923
  %67 = add nsw i32 %66, 32768
  %68 = ashr i32 %67, 16
  store i32 %68, i32* %12, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %69, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 %81, %82
  %84 = add nsw i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  store i32 %78, i32* %86, align 4
  br label %87

87:                                               ; preds = %34
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %29

90:                                               ; preds = %29
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %15

94:                                               ; preds = %15
  store i32 1, i32* %9, align 4
  br label %95

95:                                               ; preds = %168, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %97, 1
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %171

100:                                              ; preds = %95
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %13, align 4
  store i32 1, i32* %10, align 4
  br label %106

106:                                              ; preds = %164, %100
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %108, 1
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %167

111:                                              ; preds = %106
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 0, %112
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = mul nsw i32 %116, %117
  %119 = add nsw i32 %115, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %114, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %122, 8
  %124 = add nsw i32 %113, %123
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  %129 = load i32, i32* %8, align 4
  %130 = mul nsw i32 %128, %129
  %131 = add nsw i32 %126, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %125, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %124, %134
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @INT_MIN, align 4
  %138 = sdiv i32 %137, 10923
  %139 = load i32, i32* @INT_MAX, align 4
  %140 = sdiv i32 %139, 10923
  %141 = sub nsw i32 %140, 32768
  %142 = call i32 @av_clip(i32 %136, i32 %138, i32 %141)
  %143 = mul nsw i32 %142, 10923
  %144 = add nsw i32 %143, 32768
  %145 = ashr i32 %144, 16
  store i32 %145, i32* %14, align 4
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %8, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %147, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %146, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %8, align 4
  %160 = mul nsw i32 %158, %159
  %161 = add nsw i32 %157, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %156, i64 %162
  store i32 %155, i32* %163, align 4
  br label %164

164:                                              ; preds = %111
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %106

167:                                              ; preds = %106
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %95

171:                                              ; preds = %95
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
