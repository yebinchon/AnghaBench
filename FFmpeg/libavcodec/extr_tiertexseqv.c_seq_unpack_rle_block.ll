; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiertexseqv.c_seq_unpack_rle_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiertexseqv.c_seq_unpack_rle_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32)* @seq_unpack_rle_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @seq_unpack_rle_block(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [64 x i32], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = mul nsw i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @init_get_bits(i32* %13, i8* %15, i32 %22)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %51, %4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  br i1 %32, label %33, label %54

33:                                               ; preds = %31
  %34 = call i32 @get_bits_left(i32* %13)
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8* null, i8** %5, align 8
  br label %130

37:                                               ; preds = %33
  %38 = call i32 @get_sbits(i32* %13, i32 4)
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %40
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @FFABS(i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %24

54:                                               ; preds = %31
  %55 = call i32 @get_bits_count(i32* %13)
  %56 = add nsw i32 %55, 7
  %57 = sdiv i32 %56, 8
  %58 = load i8*, i8** %6, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %125, %54
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 64
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = icmp sgt i32 %65, 0
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i1 [ false, %61 ], [ %66, %64 ]
  br i1 %68, label %69, label %128

69:                                               ; preds = %67
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = icmp slt i64 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i8* null, i8** %5, align 8
  br label %130

86:                                               ; preds = %76
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  %90 = load i8, i8* %88, align 1
  %91 = zext i8 %90 to i32
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @FFMIN(i32 %92, i32 %93)
  %95 = call i32 @memset(i8* %87, i32 %91, i32 %94)
  br label %117

96:                                               ; preds = %69
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i8* null, i8** %5, align 8
  br label %130

106:                                              ; preds = %96
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @FFMIN(i32 %109, i32 %110)
  %112 = call i32 @memcpy(i8* %107, i8* %108, i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = load i8*, i8** %6, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %6, align 8
  br label %117

117:                                              ; preds = %106, %86
  %118 = load i32, i32* %11, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %8, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %61

128:                                              ; preds = %67
  %129 = load i8*, i8** %6, align 8
  store i8* %129, i8** %5, align 8
  br label %130

130:                                              ; preds = %128, %105, %85, %36
  %131 = load i8*, i8** %5, align 8
  ret i8* %131
}

declare dso_local i32 @init_get_bits(i32*, i8*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_sbits(i32*, i32) #1

declare dso_local i64 @FFABS(i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
