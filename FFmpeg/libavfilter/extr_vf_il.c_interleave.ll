; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_il.c_interleave.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_il.c_interleave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32, i32)* @interleave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interleave(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = sub nsw i32 1, %22
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %12, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %15, align 4
  switch i32 %26, label %166 [
    i32 130, label %27
    i32 128, label %73
    i32 129, label %120
  ]

27:                                               ; preds = %8
  store i32 0, i32* %20, align 4
  br label %28

28:                                               ; preds = %69, %27
  %29 = load i32, i32* %20, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %20, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %20, align 4
  %42 = mul nsw i32 %41, 2
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %42, %43
  %45 = mul nsw i32 %40, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %39, i64 %46
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @memcpy(i32* %38, i32* %47, i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %19, align 4
  %54 = add nsw i32 %52, %53
  %55 = mul nsw i32 %51, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %50, i64 %56
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %20, align 4
  %61 = mul nsw i32 %60, 2
  %62 = load i32, i32* %18, align 4
  %63 = add nsw i32 %61, %62
  %64 = mul nsw i32 %59, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %58, i64 %65
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @memcpy(i32* %57, i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %32
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %20, align 4
  br label %28

72:                                               ; preds = %28
  br label %166

73:                                               ; preds = %8
  store i32 0, i32* %20, align 4
  br label %74

74:                                               ; preds = %116, %73
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %119

78:                                               ; preds = %74
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %20, align 4
  %82 = mul nsw i32 %80, %81
  %83 = mul nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %20, align 4
  %89 = mul nsw i32 %88, 2
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %89, %90
  %92 = mul nsw i32 %87, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %86, i64 %93
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @memcpy(i32* %85, i32* %94, i32 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %20, align 4
  %100 = mul nsw i32 %99, 2
  %101 = add nsw i32 %100, 1
  %102 = mul nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %97, i64 %103
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %20, align 4
  %108 = mul nsw i32 %107, 2
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %108, %109
  %111 = mul nsw i32 %106, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %105, i64 %112
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @memcpy(i32* %104, i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %78
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %20, align 4
  br label %74

119:                                              ; preds = %74
  br label %166

120:                                              ; preds = %8
  store i32 0, i32* %20, align 4
  br label %121

121:                                              ; preds = %162, %120
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %19, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %165

125:                                              ; preds = %121
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %20, align 4
  %129 = mul nsw i32 %128, 2
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %129, %130
  %132 = mul nsw i32 %127, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %126, i64 %133
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %20, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @memcpy(i32* %134, i32* %140, i32 %141)
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %20, align 4
  %146 = mul nsw i32 %145, 2
  %147 = load i32, i32* %18, align 4
  %148 = add nsw i32 %146, %147
  %149 = mul nsw i32 %144, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %143, i64 %150
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %19, align 4
  %156 = add nsw i32 %154, %155
  %157 = mul nsw i32 %153, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %152, i64 %158
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @memcpy(i32* %151, i32* %159, i32 %160)
  br label %162

162:                                              ; preds = %125
  %163 = load i32, i32* %20, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %20, align 4
  br label %121

165:                                              ; preds = %121
  br label %166

166:                                              ; preds = %8, %165, %119, %72
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
