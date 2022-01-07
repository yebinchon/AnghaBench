; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aacdec.c_adts_aac_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aacdec.c_adts_aac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @adts_aac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adts_aac_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = getelementptr inbounds i32, i32* %21, i64 -7
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %8, align 8
  store i32* %23, i32** %10, align 8
  br label %24

24:                                               ; preds = %82, %1
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ult i32* %25, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %24
  %29 = load i32*, i32** %10, align 8
  store i32* %29, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %69, %28
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @AV_RB16(i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, 65526
  %39 = icmp ne i32 %38, 65520
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %40
  br label %72

46:                                               ; preds = %34
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = call i32 @AV_RB32(i32* %48)
  %50 = ashr i32 %49, 13
  %51 = and i32 %50, 8191
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 7
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %72

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = ptrtoint i32* %57 to i64
  %60 = ptrtoint i32* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @FFMIN(i32 %56, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %9, align 8
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %30

72:                                               ; preds = %54, %45, %30
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @FFMAX(i32 %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = icmp eq i32* %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %72
  br label %82

82:                                               ; preds = %81
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32* %84, i32** %10, align 8
  br label %24

85:                                               ; preds = %24
  %86 = load i32, i32* %5, align 4
  %87 = icmp sge i32 %86, 3
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %2, align 4
  br label %107

91:                                               ; preds = %85
  %92 = load i32, i32* %4, align 4
  %93 = icmp sgt i32 %92, 100
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  store i32 %95, i32* %2, align 4
  br label %107

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  %98 = icmp sge i32 %97, 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %101 = sdiv i32 %100, 2
  store i32 %101, i32* %2, align 4
  br label %107

102:                                              ; preds = %96
  %103 = load i32, i32* %5, align 4
  %104 = icmp sge i32 %103, 1
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1, i32* %2, align 4
  br label %107

106:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %105, %99, %94, %88
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
