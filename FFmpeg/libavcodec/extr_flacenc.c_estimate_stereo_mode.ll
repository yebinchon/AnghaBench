; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flacenc.c_estimate_stereo_mode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flacenc.c_estimate_stereo_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @estimate_stereo_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_stereo_mode(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %19, align 16
  store i32 2, i32* %9, align 4
  br label %20

20:                                               ; preds = %98, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %101

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 2, %35
  %37 = sub nsw i32 %29, %36
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %37, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 2, %55
  %57 = sub nsw i32 %49, %56
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %57, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %65, %66
  %68 = ashr i32 %67, 1
  %69 = call i64 @FFABS(i32 %68)
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %69
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i64 @FFABS(i32 %77)
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %78
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i64 @FFABS(i32 %84)
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %87 = load i32, i32* %86, align 16
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %85
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 16
  %91 = load i32, i32* %12, align 4
  %92 = call i64 @FFABS(i32 %91)
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %92
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  br label %98

98:                                               ; preds = %24
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %20

101:                                              ; preds = %20
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %125, %101
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %128

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 2, %109
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @find_optimal_param(i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 2, %117
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @rice_encode_count(i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %123
  store i32 %121, i32* %124, align 4
  br label %125

125:                                              ; preds = %105
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %102

128:                                              ; preds = %102
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %130 = load i32, i32* %129, align 16
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %130, %132
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %133, i32* %134, align 16
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %136, %138
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %142, %144
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %145, i32* %146, align 8
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %148, %150
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %151, i32* %152, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %153

153:                                              ; preds = %169, %128
  %154 = load i32, i32* %9, align 4
  %155 = icmp slt i32 %154, 4
  br i1 %155, label %156, label %172

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %160, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %156
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %166, %156
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %153

172:                                              ; preds = %153
  %173 = load i32, i32* %10, align 4
  ret i32 %173
}

declare dso_local i64 @FFABS(i32) #1

declare dso_local i32 @find_optimal_param(i32, i32, i32) #1

declare dso_local i32 @rice_encode_count(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
