; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_mode4.c_draw_sprites.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_mode4.c_draw_sprites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.PicoVideo }
%struct.PicoVideo = type { i32* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @draw_sprites to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_sprites(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.PicoVideo*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca [8 x i32], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), %struct.PicoVideo** %3, align 8
  store i32 8, i32* %7, align 4
  %14 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %15 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %26 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 126
  %31 = shl i32 %30, 7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %24, i64 %32
  store i8* %33, i8** %6, align 8
  %34 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %35 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  store i32 254, i32* %9, align 4
  store i32 16, i32* %12, align 4
  br label %43

42:                                               ; preds = %22
  store i32 255, i32* %9, align 4
  store i32 8, i32* %12, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %45 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 4
  %50 = shl i32 %49, 10
  store i32 %50, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %119, %43
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 64
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br i1 %58, label %59, label %122

59:                                               ; preds = %57
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, 209
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %122

70:                                               ; preds = %59
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %2, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %70
  br label %119

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = mul nsw i32 %84, 2
  %86 = add nsw i32 128, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = add nsw i32 %82, %90
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %93
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = mul nsw i32 %97, 2
  %99 = add nsw i32 128, %98
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %96, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %104, %105
  %107 = shl i32 %106, 4
  %108 = add nsw i32 %95, %107
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %109, %110
  %112 = shl i32 %111, 1
  %113 = add nsw i32 %108, %112
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %115
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %81, %80
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %51

122:                                              ; preds = %69, %57
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %138, %122
  %126 = load i32, i32* %11, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @TileNormM4(i32 %132, i32 %136, i32 16)
  br label %138

138:                                              ; preds = %128
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %11, align 4
  br label %125

141:                                              ; preds = %125
  ret void
}

declare dso_local i32 @TileNormM4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
