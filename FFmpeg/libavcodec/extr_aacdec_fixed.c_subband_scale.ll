; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_fixed.c_subband_scale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_fixed.c_subband_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exp2tab = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Overflow in subband_scale()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i8*)* @subband_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subband_scale(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 -1, i32 1
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @FFABS(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32*, i32** @exp2tab, align 8
  %26 = load i32, i32* %14, align 4
  %27 = and i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %14, align 4
  %33 = ashr i32 %32, 2
  %34 = sub nsw i32 %31, %33
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sgt i32 %35, 31
  br i1 %36, label %37, label %51

37:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %47, %37
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %16, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %16, align 4
  br label %38

50:                                               ; preds = %38
  br label %128

51:                                               ; preds = %6
  %52 = load i32, i32* %14, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %51
  %55 = load i32, i32* %14, align 4
  %56 = sub nsw i32 %55, 1
  %57 = shl i32 1, %56
  store i32 %57, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %58

58:                                               ; preds = %82, %54
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %18, align 4
  %69 = mul nsw i32 %67, %68
  %70 = ashr i32 %69, 32
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %15, align 4
  %73 = add i32 %71, %72
  %74 = load i32, i32* %14, align 4
  %75 = ashr i32 %73, %74
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %62
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %58

85:                                               ; preds = %58
  br label %127

86:                                               ; preds = %51
  %87 = load i32, i32* %14, align 4
  %88 = icmp sgt i32 %87, -32
  br i1 %88, label %89, label %122

89:                                               ; preds = %86
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 32
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = sub nsw i32 %92, 1
  %94 = shl i32 1, %93
  store i32 %94, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %118, %89
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %95
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %18, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %15, align 4
  %108 = add i32 %106, %107
  %109 = load i32, i32* %14, align 4
  %110 = ashr i32 %108, %109
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %13, align 4
  %113 = mul i32 %111, %112
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %99
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %95

121:                                              ; preds = %95
  br label %126

122:                                              ; preds = %86
  %123 = load i8*, i8** %12, align 8
  %124 = load i32, i32* @AV_LOG_ERROR, align 4
  %125 = call i32 @av_log(i8* %123, i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %122, %121
  br label %127

127:                                              ; preds = %126, %85
  br label %128

128:                                              ; preds = %127, %50
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
