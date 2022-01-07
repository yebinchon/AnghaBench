; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsub.c_dvb_encode_rle8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsub.c_dvb_encode_rle8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32, i32, i32)* @dvb_encode_rle8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_encode_rle8(i32** %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32**, i32*** %6, align 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %124, %5
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %127

23:                                               ; preds = %19
  %24 = load i32*, i32** %11, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %11, align 8
  store i32 18, i32* %24, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %111, %23
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %115

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %15, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %52, %30
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %42, %38
  %51 = phi i1 [ false, %38 ], [ %49, %42 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %38

55:                                               ; preds = %50
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %16, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  br label %111

68:                                               ; preds = %61, %55
  %69 = load i32, i32* %16, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @FFMIN(i32 %72, i32 127)
  store i32 %73, i32* %14, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %11, align 8
  store i32 0, i32* %74, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  br label %110

79:                                               ; preds = %68
  %80 = load i32, i32* %14, align 4
  %81 = icmp sgt i32 %80, 2
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @FFMIN(i32 %83, i32 127)
  store i32 %84, i32* %14, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %11, align 8
  store i32 0, i32* %85, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 128, %87
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %11, align 8
  store i32 %91, i32* %92, align 4
  br label %109

94:                                               ; preds = %79
  %95 = load i32, i32* %14, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  br label %108

104:                                              ; preds = %94
  %105 = load i32, i32* %16, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %11, align 8
  store i32 %105, i32* %106, align 4
  store i32 1, i32* %14, align 4
  br label %108

108:                                              ; preds = %104, %97
  br label %109

109:                                              ; preds = %108, %82
  br label %110

110:                                              ; preds = %109, %71
  br label %111

111:                                              ; preds = %110, %64
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %12, align 4
  br label %26

115:                                              ; preds = %26
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %11, align 8
  store i32 0, i32* %116, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %11, align 8
  store i32 240, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %7, align 8
  br label %124

124:                                              ; preds = %115
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %19

127:                                              ; preds = %19
  %128 = load i32*, i32** %11, align 8
  %129 = load i32**, i32*** %6, align 8
  store i32* %128, i32** %129, align 8
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
