; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_s_sound.c_S_AdjustSoundParams.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_s_sound.c_S_AdjustSoundParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@gamemap = common dso_local global i32 0, align 4
@S_CLIPPING_DIST = common dso_local global i32 0, align 4
@ANGLETOFINESHIFT = common dso_local global i64 0, align 8
@S_STEREO_SWING = common dso_local global i32 0, align 4
@finesine = common dso_local global i32* null, align 8
@FRACBITS = common dso_local global i32 0, align 4
@S_CLOSE_DIST = common dso_local global i32 0, align 4
@snd_SfxVolume = common dso_local global i32 0, align 4
@S_ATTENUATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @S_AdjustSoundParams(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = call i32 @abs(i64 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = call i32 @abs(i64 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load i32, i32* %13, align 4
  br label %42

40:                                               ; preds = %5
  %41 = load i32, i32* %14, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = ashr i32 %43, 1
  %45 = sub nsw i32 %34, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* @gamemap, align 4
  %47 = icmp ne i32 %46, 8
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @S_CLIPPING_DIST, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %144

53:                                               ; preds = %48, %42
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @R_PointToAngle2(i64 %56, i64 %59, i64 %62, i64 %65)
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ugt i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %53
  %73 = load i64, i64* %15, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %73, %76
  store i64 %77, i64* %15, align 8
  br label %85

78:                                               ; preds = %53
  %79 = load i64, i64* %15, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 4294967295, %82
  %84 = add i64 %79, %83
  store i64 %84, i64* %15, align 8
  br label %85

85:                                               ; preds = %78, %72
  %86 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %87 = load i64, i64* %15, align 8
  %88 = lshr i64 %87, %86
  store i64 %88, i64* %15, align 8
  %89 = load i32, i32* @S_STEREO_SWING, align 4
  %90 = load i32*, i32** @finesine, align 8
  %91 = load i64, i64* %15, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @FixedMul(i32 %89, i32 %93)
  %95 = load i32, i32* @FRACBITS, align 4
  %96 = ashr i32 %94, %95
  %97 = sub nsw i32 128, %96
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @S_CLOSE_DIST, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %85
  %103 = load i32, i32* @snd_SfxVolume, align 4
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  br label %139

105:                                              ; preds = %85
  %106 = load i32, i32* @gamemap, align 4
  %107 = icmp eq i32 %106, 8
  br i1 %107, label %108, label %127

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @S_CLIPPING_DIST, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @S_CLIPPING_DIST, align 4
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %112, %108
  %115 = load i32, i32* @snd_SfxVolume, align 4
  %116 = sub nsw i32 %115, 15
  %117 = load i32, i32* @S_CLIPPING_DIST, align 4
  %118 = load i32, i32* %12, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load i32, i32* @FRACBITS, align 4
  %121 = ashr i32 %119, %120
  %122 = mul nsw i32 %116, %121
  %123 = load i32, i32* @S_ATTENUATOR, align 4
  %124 = sdiv i32 %122, %123
  %125 = add nsw i32 15, %124
  %126 = load i32*, i32** %9, align 8
  store i32 %125, i32* %126, align 4
  br label %138

127:                                              ; preds = %105
  %128 = load i32, i32* @snd_SfxVolume, align 4
  %129 = load i32, i32* @S_CLIPPING_DIST, align 4
  %130 = load i32, i32* %12, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load i32, i32* @FRACBITS, align 4
  %133 = ashr i32 %131, %132
  %134 = mul nsw i32 %128, %133
  %135 = load i32, i32* @S_ATTENUATOR, align 4
  %136 = sdiv i32 %134, %135
  %137 = load i32*, i32** %9, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %127, %114
  br label %139

139:                                              ; preds = %138, %102
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %141, 0
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %139, %52
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @abs(i64) #1

declare dso_local i64 @R_PointToAngle2(i64, i64, i64, i64) #1

declare dso_local i32 @FixedMul(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
