; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_sky.c_DrawSkySide.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_sky.c_DrawSkySide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_s = type { i32 }

@HALF_SKY_SUBDIVISIONS = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@s_skyTexCoords = common dso_local global i32** null, align 8
@s_skyPoints = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.image_s*, i32*, i32*)* @DrawSkySide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawSkySide(%struct.image_s* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.image_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.image_s* %0, %struct.image_s** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.image_s*, %struct.image_s** %4, align 8
  %10 = call i32 @GL_Bind(%struct.image_s* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %88, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %22 = add nsw i32 %20, %21
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %91

24:                                               ; preds = %16
  %25 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %26 = call i32 @qglBegin(i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %83, %24
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp sle i32 %33, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %32
  %41 = load i32**, i32*** @s_skyTexCoords, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @qglTexCoord2fv(i32 %49)
  %51 = load i32**, i32*** @s_skyPoints, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @qglVertex3fv(i32 %59)
  %61 = load i32**, i32*** @s_skyTexCoords, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %61, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @qglTexCoord2fv(i32 %70)
  %72 = load i32**, i32*** @s_skyPoints, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %72, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @qglVertex3fv(i32 %81)
  br label %83

83:                                               ; preds = %40
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %32

86:                                               ; preds = %32
  %87 = call i32 (...) @qglEnd()
  br label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %16

91:                                               ; preds = %16
  ret void
}

declare dso_local i32 @GL_Bind(%struct.image_s*) #1

declare dso_local i32 @qglBegin(i32) #1

declare dso_local i32 @qglTexCoord2fv(i32) #1

declare dso_local i32 @qglVertex3fv(i32) #1

declare dso_local i32 @qglEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
