; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dvbsub.c_dvbsub_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dvbsub.c_dvbsub_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @dvbsub_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsub_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [6 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %129, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %132

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 15
  br i1 %36, label %37, label %128

37:                                               ; preds = %28
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %11, align 8
  %44 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %44, i8 0, i64 24, i1 false)
  store i32 255, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %101, %37
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = icmp slt i64 6, %51
  br i1 %52, label %53, label %104

53:                                               ; preds = %45
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 15
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %104

58:                                               ; preds = %53
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = call i32 @AV_RB16(i32* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %83

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  %70 = icmp sge i32 %69, 16
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp sle i32 %72, 20
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 16
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %82

81:                                               ; preds = %71, %68
  br label %104

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %67
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 6, %84
  %86 = sext i32 %85 to i64
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = ptrtoint i32* %87 to i64
  %90 = ptrtoint i32* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = icmp sgt i64 %86, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %104

95:                                               ; preds = %83
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 6, %96
  %98 = load i32*, i32** %11, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %11, align 8
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %45

104:                                              ; preds = %94, %81, %57, %45
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %115, %104
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @FFMIN(i32 %109, i32 %113)
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %105

118:                                              ; preds = %105
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %125, %121, %118
  br label %128

128:                                              ; preds = %127, %28
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %22

132:                                              ; preds = %22
  %133 = load i32, i32* %10, align 4
  %134 = icmp sgt i32 %133, 5
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  store i32 %136, i32* %2, align 4
  br label %138

137:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %135
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AV_RB16(i32*) #2

declare dso_local i32 @FFMIN(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
