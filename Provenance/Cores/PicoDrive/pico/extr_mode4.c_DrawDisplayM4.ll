; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_mode4.c_DrawDisplayM4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_mode4.c_DrawDisplayM4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16*, %struct.PicoVideo }
%struct.PicoVideo = type { i32* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PicoDrawMask = common dso_local global i32 0, align 4
@PDRAW_LAYERB_ON = common dso_local global i32 0, align 4
@PDRAW_SPRITES_LOW_ON = common dso_local global i32 0, align 4
@PDRAW_LAYERA_ON = common dso_local global i32 0, align 4
@HighCol = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @DrawDisplayM4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawDisplayM4(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.PicoVideo*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), %struct.PicoVideo** %3, align 8
  store i32 0, i32* %10, align 4
  store i32 32, i32* %11, align 4
  %12 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %13 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 9
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 224
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 224
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i16*, i16** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  store i16* %25, i16** %4, align 8
  %26 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %27 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 14
  %32 = shl i32 %31, 9
  %33 = load i16*, i16** %4, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i16, i16* %33, i64 %34
  store i16* %35, i16** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 3
  %38 = shl i32 %37, 5
  %39 = load i16*, i16** %4, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i16, i16* %39, i64 %40
  store i16* %41, i16** %4, align 8
  %42 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %43 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp slt i32 %47, 16
  br i1 %48, label %49, label %58

49:                                               ; preds = %24
  %50 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %51 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 64
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %49, %24
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 0, %59
  %61 = ashr i32 %60, 3
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %61, %62
  %64 = and i32 %63, 31
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 7
  %67 = shl i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %71, 1
  %73 = and i32 %72, 7
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 8
  br i1 %76, label %77, label %80

77:                                               ; preds = %58
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77, %58
  %81 = load i32, i32* %10, align 4
  %82 = shl i32 %81, 3
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @PicoDrawMask, align 4
  %86 = load i32, i32* @PDRAW_LAYERB_ON, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load i16*, i16** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %8, align 4
  %95 = shl i32 %94, 16
  %96 = or i32 %93, %95
  %97 = call i32 @draw_strip(i16* %90, i32 %91, i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %89, %80
  %99 = load i32, i32* @PicoDrawMask, align 4
  %100 = load i32, i32* @PDRAW_SPRITES_LOW_ON, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @draw_sprites(i32 %104)
  br label %106

106:                                              ; preds = %103, %98
  %107 = load i32, i32* @PicoDrawMask, align 4
  %108 = load i32, i32* @PDRAW_LAYERA_ON, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load i16*, i16** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, 4096
  %117 = load i32, i32* %8, align 4
  %118 = shl i32 %117, 16
  %119 = or i32 %116, %118
  %120 = call i32 @draw_strip(i16* %112, i32 %113, i32 %114, i32 %119)
  br label %121

121:                                              ; preds = %111, %106
  %122 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %123 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %121
  %130 = load i64, i64* @HighCol, align 8
  %131 = inttoptr i64 %130 to i32*
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  store i32 -522133280, i32* %132, align 4
  %133 = load i64, i64* @HighCol, align 8
  %134 = inttoptr i64 %133 to i32*
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 -522133280, i32* %135, align 4
  br label %136

136:                                              ; preds = %129, %121
  ret void
}

declare dso_local i32 @draw_strip(i16*, i32, i32, i32) #1

declare dso_local i32 @draw_sprites(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
