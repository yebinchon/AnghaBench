; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/tools/ftrandom/extr_ftrandom.c_TestFace.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/tools/ftrandom/extr_ftrandom.c_TestFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@FT_LOAD_DEFAULT = common dso_local global i32 0, align 4
@check_outlines = common dso_local global i64 0, align 8
@FT_LOAD_NO_BITMAP = common dso_local global i32 0, align 4
@nohints = common dso_local global i64 0, align 8
@FT_LOAD_NO_HINTING = common dso_local global i32 0, align 4
@font_size = common dso_local global i32 0, align 4
@outlinefuncs = common dso_local global i32 0, align 4
@rasterize = common dso_local global i64 0, align 8
@ft_render_mode_normal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @TestFace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TestFace(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load i32, i32* @FT_LOAD_DEFAULT, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i64, i64* @check_outlines, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = call i64 @FT_IS_SCALABLE(%struct.TYPE_8__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @FT_LOAD_NO_BITMAP, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %8, %1
  %15 = load i64, i64* @nohints, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @FT_LOAD_NO_HINTING, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load i32, i32* @font_size, align 4
  %24 = call i32 @FT_Set_Char_Size(%struct.TYPE_8__* %22, i32 0, i32 %23, i32 72, i32 72)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %66, %21
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = load i64, i64* @check_outlines, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = call i64 @FT_IS_SCALABLE(%struct.TYPE_8__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @FT_Load_Glyph(%struct.TYPE_8__* %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = call i32 @FT_Outline_Decompose(i32* %48, i32* @outlinefuncs, i32* null)
  br label %50

50:                                               ; preds = %44, %38
  br label %56

51:                                               ; preds = %34, %31
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @FT_Load_Glyph(%struct.TYPE_8__* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %50
  %57 = load i64, i64* @rasterize, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = load i32, i32* @ft_render_mode_normal, align 4
  %64 = call i32 @FT_Render_Glyph(%struct.TYPE_9__* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %56
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %25

69:                                               ; preds = %25
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = call i32 @FT_Done_Face(%struct.TYPE_8__* %70)
  ret void
}

declare dso_local i64 @FT_IS_SCALABLE(%struct.TYPE_8__*) #1

declare dso_local i32 @FT_Set_Char_Size(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @FT_Load_Glyph(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @FT_Outline_Decompose(i32*, i32*, i32*) #1

declare dso_local i32 @FT_Render_Glyph(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @FT_Done_Face(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
