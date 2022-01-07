; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_decode_band_structure.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_decode_band_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32)* @decode_band_structure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_band_structure(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8, i32* %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [22 x i32], align 16
  %28 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32 %10, i32* %22, align 4
  store i32 0, i32* %26, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %16, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %25, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %11
  %35 = load i32*, i32** %21, align 8
  %36 = load i32*, i32** %18, align 8
  %37 = load i32, i32* %22, align 4
  %38 = call i32 @memcpy(i32* %35, i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %11
  %40 = load i32, i32* %22, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %25, align 4
  %43 = add nsw i32 %41, %42
  %44 = icmp sge i32 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @av_assert0(i32 %45)
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32*, i32** %21, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %21, align 8
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %39
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @get_bits1(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %54, %39
  store i32 0, i32* %23, align 4
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i32, i32* %23, align 4
  %61 = load i32, i32* %25, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @get_bits1(i32* %65)
  %67 = load i32*, i32** %21, align 8
  %68 = load i32, i32* %23, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %23, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %23, align 4
  br label %59

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %54
  %76 = load i32*, i32** %19, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32*, i32** %20, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %129

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %25, align 4
  store i32 %82, i32* %26, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 6, i32 12
  %87 = getelementptr inbounds [22 x i32], [22 x i32]* %27, i64 0, i64 0
  store i32 %86, i32* %87, align 16
  store i32 0, i32* %24, align 4
  store i32 1, i32* %23, align 4
  br label %88

88:                                               ; preds = %125, %81
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %25, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %23, align 4
  %97 = icmp slt i32 %96, 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i1 [ false, %92 ], [ %97, %95 ]
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 6, i32 12
  store i32 %101, i32* %28, align 4
  %102 = load i32*, i32** %21, align 8
  %103 = load i32, i32* %23, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %98
  %110 = load i32, i32* %26, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %26, align 4
  %112 = load i32, i32* %28, align 4
  %113 = load i32, i32* %24, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [22 x i32], [22 x i32]* %27, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %112
  store i32 %117, i32* %115, align 4
  br label %124

118:                                              ; preds = %98
  %119 = load i32, i32* %28, align 4
  %120 = load i32, i32* %24, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %24, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [22 x i32], [22 x i32]* %27, i64 0, i64 %122
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %118, %109
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %23, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %23, align 4
  br label %88

128:                                              ; preds = %88
  br label %129

129:                                              ; preds = %128, %78
  %130 = load i32*, i32** %19, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %26, align 4
  %134 = load i32*, i32** %19, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32*, i32** %20, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32*, i32** %20, align 8
  %140 = getelementptr inbounds [22 x i32], [22 x i32]* %27, i64 0, i64 0
  %141 = load i32, i32* %26, align 4
  %142 = call i32 @memcpy(i32* %139, i32* %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %135
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
