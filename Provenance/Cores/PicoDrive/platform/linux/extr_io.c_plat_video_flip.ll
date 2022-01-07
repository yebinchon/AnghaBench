; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_io.c_plat_video_flip.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_io.c_plat_video_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ximage = common dso_local global %struct.TYPE_2__* null, align 8
@g_screen_width = common dso_local global i32 0, align 4
@g_screen_height = common dso_local global i32 0, align 4
@current_bpp = common dso_local global i32 0, align 4
@g_screen_ptr = common dso_local global i8* null, align 8
@current_pal = common dso_local global i32* null, align 8
@scr_changed = common dso_local global i64 0, align 8
@xlib_display = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plat_video_flip() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ximage, align 8
  %8 = icmp eq %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %109

10:                                               ; preds = %0
  %11 = load i32, i32* @g_screen_width, align 4
  %12 = load i32, i32* @g_screen_height, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %2, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ximage, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %1, align 8
  %19 = load i32, i32* @current_bpp, align 4
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %46

21:                                               ; preds = %10
  %22 = load i8*, i8** @g_screen_ptr, align 8
  store i8* %22, i8** %4, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %42, %21
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32*, i32** @current_pal, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i32, i32* %28, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %1, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %23

45:                                               ; preds = %23
  br label %98

46:                                               ; preds = %10
  %47 = load i8*, i8** @g_screen_ptr, align 8
  %48 = bitcast i8* %47 to i16*
  store i16* %48, i16** %6, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %94, %46
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %97

53:                                               ; preds = %49
  %54 = load i16*, i16** %6, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %54, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = shl i32 %59, 8
  %61 = and i32 %60, 16252928
  %62 = load i32*, i32** %1, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i16*, i16** %6, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %66, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = shl i32 %71, 5
  %73 = and i32 %72, 64512
  %74 = load i32*, i32** %1, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 4
  %80 = load i16*, i16** %6, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i16, i16* %80, i64 %82
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i32
  %86 = shl i32 %85, 3
  %87 = and i32 %86, 248
  %88 = load i32*, i32** %1, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %87
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %53
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %49

97:                                               ; preds = %49
  br label %98

98:                                               ; preds = %97, %45
  %99 = call i32 (...) @xlib_update()
  %100 = load i64, i64* @scr_changed, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = call i32 (...) @realloc_screen()
  %104 = load i32, i32* @xlib_display, align 4
  %105 = load i32, i32* @xlib_display, align 4
  %106 = call i32 @DefaultVisual(i32 %105, i32 0)
  %107 = call i32 @ximage_realloc(i32 %104, i32 %106)
  %108 = call i32 @plat_video_toggle_renderer(i32 0, i32 0)
  br label %109

109:                                              ; preds = %9, %102, %98
  ret void
}

declare dso_local i32 @xlib_update(...) #1

declare dso_local i32 @realloc_screen(...) #1

declare dso_local i32 @ximage_realloc(i32, i32) #1

declare dso_local i32 @DefaultVisual(i32, i32) #1

declare dso_local i32 @plat_video_toggle_renderer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
