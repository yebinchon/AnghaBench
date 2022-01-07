; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawAllSpritesInterlace.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawAllSpritesInterlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.PicoVideo }
%struct.PicoVideo = type { i32* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DrawScanline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @DrawAllSpritesInterlace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawAllSpritesInterlace(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.PicoVideo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [80 x i32*], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), %struct.PicoVideo** %5, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @DrawScanline, align 4
  %18 = shl i32 %17, 1
  store i32 %18, i32* %10, align 4
  %19 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %20 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 5
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 127
  store i32 %24, i32* %8, align 4
  %25 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %26 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 12
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 126
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %2
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 8
  store i32 %37, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %113, %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 80
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 21
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ false, %38 ], [ %43, %41 ]
  br i1 %45, label %46, label %116

46:                                               ; preds = %44
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 %49, 2
  %51 = add nsw i32 %48, %50
  %52 = and i32 %51, 32764
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %47, %53
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = ashr i32 %62, 15
  %64 = and i32 %63, 1
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %46
  br label %105

68:                                               ; preds = %46
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, 1023
  %71 = sub nsw i32 %70, 256
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %13, align 4
  %73 = ashr i32 %72, 24
  %74 = and i32 %73, 3
  %75 = add nsw i32 %74, 1
  %76 = shl i32 %75, 4
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %82, %83
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %68
  br label %105

87:                                               ; preds = %80
  %88 = load i32, i32* %14, align 4
  %89 = ashr i32 %88, 16
  %90 = and i32 %89, 511
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = sub nsw i32 %91, 120
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp sle i32 %93, -24
  br i1 %94, label %98, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %14, align 4
  %97 = icmp sge i32 %96, 328
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %87
  br label %105

99:                                               ; preds = %95
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds [80 x i32*], [80 x i32*]* %11, i64 0, i64 %103
  store i32* %100, i32** %104, align 8
  br label %105

105:                                              ; preds = %99, %98, %86, %67
  %106 = load i32, i32* %13, align 4
  %107 = ashr i32 %106, 16
  %108 = and i32 %107, 127
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  br label %116

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %38

116:                                              ; preds = %111, %44
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %128, %116
  %120 = load i32, i32* %6, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [80 x i32*], [80 x i32*]* %11, i64 0, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @DrawSpriteInterlace(i32* %126)
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %6, align 4
  br label %119

131:                                              ; preds = %119
  ret void
}

declare dso_local i32 @DrawSpriteInterlace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
