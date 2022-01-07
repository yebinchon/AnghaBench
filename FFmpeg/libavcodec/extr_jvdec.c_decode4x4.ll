; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jvdec.c_decode4x4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jvdec.c_decode4x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @decode4x4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode4x4(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @get_bits(i32* %10, i32 2)
  switch i32 %11, label %118 [
    i32 1, label %12
    i32 2, label %33
    i32 3, label %89
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @get_bits(i32* %13, i32 8)
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %14, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %29, %12
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memset(i32* %25, i32 %27, i32 4)
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %16

32:                                               ; preds = %16
  br label %118

33:                                               ; preds = %3
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @get_bits(i32* %34, i32 8)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @get_bits(i32* %37, i32 8)
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  store i32 2, i32* %8, align 4
  br label %40

40:                                               ; preds = %85, %33
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @get_bits1(i32* %48)
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %52, i64 %58
  store i32 %51, i32* %59, align 4
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %44

63:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %81, %63
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load i32*, i32** %4, align 8
  %69 = call i64 @get_bits1(i32* %68)
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %72, i64 %79
  store i32 %71, i32* %80, align 4
  br label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %64

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, 2
  store i32 %87, i32* %8, align 4
  br label %40

88:                                               ; preds = %40
  br label %118

89:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %114, %89
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %117

93:                                               ; preds = %90
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %110, %93
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %113

97:                                               ; preds = %94
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %6, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @decode2x2(i32* %98, i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %97
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %7, align 4
  br label %94

113:                                              ; preds = %94
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 2
  store i32 %116, i32* %8, align 4
  br label %90

117:                                              ; preds = %90
  br label %118

118:                                              ; preds = %117, %3, %88, %32
  ret void
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @decode2x2(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
