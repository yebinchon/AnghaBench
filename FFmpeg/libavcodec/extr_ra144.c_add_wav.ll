; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra144.c_add_wav.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra144.c_add_wav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_gain_val_tab = common dso_local global i32** null, align 8
@ff_gain_exp_tab = common dso_local global i32* null, align 8
@BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32*, i32*, i32*)* @add_wav to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_wav(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [3 x i32], align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %15, align 4
  br label %22

22:                                               ; preds = %50, %7
  %23 = load i32, i32* %15, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load i32**, i32*** @ff_gain_val_tab, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = mul i32 %34, %39
  %41 = load i32*, i32** @ff_gain_exp_tab, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = lshr i32 %40, %45
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %48
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %25
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  br label %22

53:                                               ; preds = %22
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %53
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %94, %57
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @BLOCKSIZE, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %97

62:                                               ; preds = %58
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = mul i32 %67, %69
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %75, %77
  %79 = add i32 %70, %78
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %84, %86
  %88 = add i32 %79, %87
  %89 = ashr i32 %88, 12
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %62
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %58

97:                                               ; preds = %58
  br label %130

98:                                               ; preds = %53
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %126, %98
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @BLOCKSIZE, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %129

103:                                              ; preds = %99
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %108, %110
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %116, %118
  %120 = add nsw i32 %111, %119
  %121 = ashr i32 %120, 12
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %103
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  br label %99

129:                                              ; preds = %99
  br label %130

130:                                              ; preds = %129, %97
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
