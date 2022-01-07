; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_silk.c_silk_is_lpc_stable.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_silk.c_silk_is_lpc_stable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT32_MIN = common dso_local global i64 0, align 8
@INT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @silk_is_lpc_stable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @silk_is_lpc_stable(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x [16 x i32]], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 1073741824, i32* %10, align 4
  %20 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* %9, i64 0, i64 0
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  store i32* %21, i32** %11, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %44, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 4096
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %22

47:                                               ; preds = %22
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %48, 4096
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %162

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %159, %51
  br i1 true, label %55, label %162

55:                                               ; preds = %54
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @FFABS(i32 %60)
  %62 = icmp sgt i32 %61, 16773022
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %162

64:                                               ; preds = %55
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 128
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @MULH(i32 %72, i32 %73)
  %75 = sub nsw i32 1073741824, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @MULH(i32 %76, i32 %77)
  %79 = shl i32 %78, 2
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %64
  %83 = load i32, i32* %10, align 4
  %84 = icmp sge i32 %83, 107374
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %162

86:                                               ; preds = %64
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @opus_ilog(i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  %92 = sub nsw i32 %91, 16
  %93 = ashr i32 %89, %92
  %94 = sdiv i32 536870911, %93
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %16, align 4
  %97 = sub nsw i32 31, %96
  %98 = shl i32 %95, %97
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @MULL(i32 %98, i32 %99, i32 16)
  %101 = sub nsw i32 536870912, %100
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %15, align 4
  %103 = shl i32 %102, 16
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %15, align 4
  %106 = mul nsw i32 %104, %105
  %107 = ashr i32 %106, 13
  %108 = add nsw i32 %103, %107
  store i32 %108, i32* %15, align 4
  %109 = load i32*, i32** %11, align 8
  store i32* %109, i32** %12, align 8
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* %9, i64 0, i64 %112
  %114 = getelementptr inbounds [16 x i32], [16 x i32]* %113, i64 0, i64 0
  store i32* %114, i32** %11, align 8
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %155, %86
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %158

119:                                              ; preds = %115
  %120 = load i32*, i32** %12, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %125, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i64 @ROUND_MULL(i32 %132, i32 %133, i32 31)
  %135 = call i32 @av_sat_sub32(i32 %124, i64 %134)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %16, align 4
  %139 = call i64 @ROUND_MULL(i32 %136, i32 %137, i32 %138)
  store i64 %139, i64* %19, align 8
  %140 = load i64, i64* %19, align 8
  %141 = load i64, i64* @INT32_MIN, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %147, label %143

143:                                              ; preds = %119
  %144 = load i64, i64* %19, align 8
  %145 = load i64, i64* @INT32_MAX, align 8
  %146 = icmp sgt i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143, %119
  store i32 0, i32* %3, align 4
  br label %162

148:                                              ; preds = %143
  %149 = load i64, i64* %19, align 8
  %150 = trunc i64 %149 to i32
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %150, i32* %154, align 4
  br label %155

155:                                              ; preds = %148
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %115

158:                                              ; preds = %115
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %6, align 4
  br label %54

162:                                              ; preds = %50, %63, %82, %147, %54
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @MULH(i32, i32) #1

declare dso_local i32 @opus_ilog(i32) #1

declare dso_local i32 @MULL(i32, i32, i32) #1

declare dso_local i32 @av_sat_sub32(i32, i64) #1

declare dso_local i64 @ROUND_MULL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
