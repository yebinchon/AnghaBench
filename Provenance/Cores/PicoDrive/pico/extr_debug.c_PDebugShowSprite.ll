; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebugShowSprite.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebugShowSprite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64, %struct.PicoVideo }
%struct.PicoVideo = type { i32* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PDRAW_SPRITES_LOW_ON = common dso_local global i32 0, align 4
@PicoDrawMask = common dso_local global i32 0, align 4
@PicoDraw2FB = common dso_local global i8* null, align 8
@DRAW2_LINE_WIDTH = common dso_local global i32 0, align 4
@HighPal = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PDebugShowSprite(i16* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.PicoVideo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i16* %0, i16** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 2), %struct.PicoVideo** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32 80, i32* %16, align 4
  %20 = load %struct.PicoVideo*, %struct.PicoVideo** %7, align 8
  %21 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 12
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 64, i32* %16, align 4
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.PicoVideo*, %struct.PicoVideo** %7, align 8
  %30 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 127
  store i32 %34, i32* %8, align 4
  %35 = load %struct.PicoVideo*, %struct.PicoVideo** %7, align 8
  %36 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 12
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 126
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %28
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 8
  store i32 %47, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %77, %45
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp sle i32 %53, %54
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i1 [ false, %48 ], [ %55, %52 ]
  br i1 %57, label %58, label %80

58:                                               ; preds = %56
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %61, 2
  %63 = add nsw i32 %60, %62
  %64 = and i32 %63, 32764
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %59, %65
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %11, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 16
  %72 = and i32 %71, 127
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %58
  br label %80

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %48

80:                                               ; preds = %75, %56
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %198

85:                                               ; preds = %80
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 32764
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %86, %89
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** %12, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, -8323584
  %104 = or i32 %103, 128
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, -33521665
  %111 = or i32 %110, 8388608
  %112 = load i32*, i32** %12, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.PicoVideo*, %struct.PicoVideo** %7, align 8
  %115 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 7
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %18, align 4
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %17, align 4
  %122 = load %struct.PicoVideo*, %struct.PicoVideo** %7, align 8
  %123 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 7
  store i32 0, i32* %125, align 4
  %126 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* @PDRAW_SPRITES_LOW_ON, align 4
  store i32 %128, i32* @PicoDrawMask, align 4
  %129 = call i32 (...) @PicoFrameFull()
  store i32 0, i32* %15, align 4
  br label %130

130:                                              ; preds = %178, %85
  %131 = load i32, i32* %15, align 4
  %132 = icmp slt i32 %131, 32
  br i1 %132, label %133, label %181

133:                                              ; preds = %130
  %134 = load i8*, i8** @PicoDraw2FB, align 8
  %135 = load i32, i32* @DRAW2_LINE_WIDTH, align 4
  %136 = load i32, i32* %15, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %134, i64 %138
  %140 = getelementptr inbounds i8, i8* %139, i64 8
  store i8* %140, i8** %19, align 8
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %170, %133
  %142 = load i32, i32* %14, align 4
  %143 = icmp slt i32 %142, 32
  br i1 %143, label %144, label %173

144:                                              ; preds = %141
  %145 = load i8*, i8** %19, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %144
  %152 = load i16*, i16** @HighPal, align 8
  %153 = load i8*, i8** %19, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds i16, i16* %152, i64 %158
  %160 = load i16, i16* %159, align 2
  %161 = load i16*, i16** %4, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i16, i16* %161, i64 %163
  store i16 %160, i16* %164, align 2
  %165 = load i8*, i8** %19, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8 0, i8* %168, align 1
  br label %169

169:                                              ; preds = %151, %144
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  br label %141

173:                                              ; preds = %141
  %174 = load i32, i32* %5, align 4
  %175 = load i16*, i16** %4, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i16, i16* %175, i64 %176
  store i16* %177, i16** %4, align 8
  br label %178

178:                                              ; preds = %173
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  br label %130

181:                                              ; preds = %130
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %12, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 %183, i32* %185, align 4
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %12, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %18, align 4
  %191 = load %struct.PicoVideo*, %struct.PicoVideo** %7, align 8
  %192 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 7
  store i32 %190, i32* %194, align 4
  %195 = load i32, i32* %17, align 4
  %196 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 %195, i32* %197, align 4
  store i32 -1, i32* @PicoDrawMask, align 4
  br label %198

198:                                              ; preds = %181, %84
  ret void
}

declare dso_local i32 @PicoFrameFull(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
