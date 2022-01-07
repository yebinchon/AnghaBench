; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_font.c_gx_priv_render_text.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_font.c_gx_priv_render_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@VCOS_SUCCESS = common dso_local global i32 0, align 4
@inited = common dso_local global i32 0, align 4
@GRAPHICS_RESOURCE_WIDTH = common dso_local global i64 0, align 8
@GRAPHICS_RESOURCE_HEIGHT = common dso_local global i64 0, align 8
@VCOS_ENOMEM = common dso_local global i32 0, align 4
@VG_SCISSORING = common dso_local global i32 0, align 4
@VG_TRUE = common dso_local global i32 0, align 4
@VG_SCISSOR_RECTS = common dso_local global i32 0, align 4
@GRAPHICS_TRANSPARENT_COLOUR = common dso_local global i64 0, align 8
@VG_CLEAR_COLOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error %d clearing bg text %d %d %g %g\00", align 1
@VG_PAINT_TYPE = common dso_local global i32 0, align 4
@VG_PAINT_TYPE_COLOR = common dso_local global i32 0, align 4
@VG_PAINT_COLOR = common dso_local global i32 0, align 4
@VG_FILL_PATH = common dso_local global i32 0, align 4
@VG_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gx_priv_render_text(i32* %0, %struct.TYPE_4__* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i8* %8, i64 %9, i64 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca [4 x i64], align 16
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [4 x i64], align 16
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca [4 x i64], align 16
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  store i64 %10, i64* %22, align 8
  %36 = load i32, i32* @VCOS_SUCCESS, align 4
  store i32 %36, i32* %27, align 4
  store i32 1, i32* %28, align 4
  %37 = load i32, i32* @inited, align 4
  %38 = call i32 @vcos_demand(i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = call i32 @gx_priv_save(i32* %26, %struct.TYPE_4__* %39)
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* @GRAPHICS_RESOURCE_WIDTH, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %11
  %45 = load i64, i64* %17, align 8
  %46 = load i64, i64* @GRAPHICS_RESOURCE_HEIGHT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %28, align 4
  br label %49

49:                                               ; preds = %48, %44, %11
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* @GRAPHICS_RESOURCE_WIDTH, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  br label %59

57:                                               ; preds = %49
  %58 = load i64, i64* %16, align 8
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i64 [ %56, %53 ], [ %58, %57 ]
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* @GRAPHICS_RESOURCE_HEIGHT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  br label %70

68:                                               ; preds = %59
  %69 = load i64, i64* %17, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i64 [ %67, %64 ], [ %69, %68 ]
  store i64 %71, i64* %17, align 8
  %72 = load i8*, i8** %20, align 8
  %73 = load i64, i64* %22, align 8
  %74 = call i32* @find_font(i8* %72, i64 %73)
  store i32* %74, i32** %24, align 8
  %75 = load i32*, i32** %24, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @VCOS_ENOMEM, align 4
  store i32 %78, i32* %27, align 4
  br label %182

79:                                               ; preds = %70
  %80 = load i32, i32* %28, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %29, i64 0, i64 0
  %84 = load i64, i64* %14, align 8
  store i64 %84, i64* %83, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 1
  %86 = load i64, i64* %15, align 8
  store i64 %86, i64* %85, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 1
  %88 = load i64, i64* %16, align 8
  store i64 %88, i64* %87, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 1
  %90 = load i64, i64* %17, align 8
  store i64 %90, i64* %89, align 8
  %91 = load i32, i32* @VG_SCISSORING, align 4
  %92 = load i32, i32* @VG_TRUE, align 4
  %93 = call i32 @vgSeti(i32 %91, i32 %92)
  %94 = load i32, i32* @VG_SCISSOR_RECTS, align 4
  %95 = getelementptr inbounds [4 x i64], [4 x i64]* %29, i64 0, i64 0
  %96 = call i32 @vgSetiv(i32 %94, i32 4, i64* %95)
  br label %97

97:                                               ; preds = %82, %79
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* @GRAPHICS_TRANSPARENT_COLOUR, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %145

101:                                              ; preds = %97
  %102 = load i64, i64* %19, align 8
  %103 = getelementptr inbounds [4 x i64], [4 x i64]* %33, i64 0, i64 0
  %104 = call i32 @gx_priv_colour_to_paint(i64 %102, i64* %103)
  %105 = load i32, i32* @VG_CLEAR_COLOR, align 4
  %106 = getelementptr inbounds [4 x i64], [4 x i64]* %33, i64 0, i64 0
  %107 = call i32 @vgSetfv(i32 %105, i32 4, i64* %106)
  %108 = load i32*, i32** %24, align 8
  %109 = load i8*, i8** %20, align 8
  %110 = load i64, i64* %21, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @vgft_get_text_extents(i32* %108, i8* %109, i64 %110, i64 %111, i64 %112, i64* %31, i64* %32)
  %114 = load i64, i64* %31, align 8
  %115 = icmp slt i64 0, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %101
  %117 = load i64, i64* %32, align 8
  %118 = icmp slt i64 0, %117
  br i1 %118, label %119, label %144

119:                                              ; preds = %116
  %120 = load i32*, i32** %24, align 8
  %121 = call i64 @vgft_first_line_y_offset(i32* %120)
  store i64 %121, i64* %34, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* %34, align 8
  %124 = add nsw i64 %122, %123
  %125 = load i64, i64* %32, align 8
  %126 = sub nsw i64 %124, %125
  store i64 %126, i64* %35, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* %35, align 8
  %129 = load i64, i64* %31, align 8
  %130 = load i64, i64* %32, align 8
  %131 = call i32 @vgClear(i64 %127, i64 %128, i64 %129, i64 %130)
  %132 = call i32 (...) @vgGetError()
  store i32 %132, i32* %30, align 4
  %133 = load i32, i32* %30, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %119
  %136 = load i32, i32* %30, align 4
  %137 = load i64, i64* %14, align 8
  %138 = load i64, i64* %15, align 8
  %139 = load i64, i64* %31, align 8
  %140 = load i64, i64* %32, align 8
  %141 = call i32 @GX_LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  %142 = call i32 @vcos_assert(i32 0)
  br label %143

143:                                              ; preds = %135, %119
  br label %144

144:                                              ; preds = %143, %116, %101
  br label %145

145:                                              ; preds = %144, %97
  %146 = call i32 (...) @vgCreatePaint()
  store i32 %146, i32* %25, align 4
  %147 = load i32, i32* %25, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* @VCOS_ENOMEM, align 4
  store i32 %150, i32* %27, align 4
  br label %182

151:                                              ; preds = %145
  %152 = load i32, i32* %25, align 4
  %153 = load i32, i32* @VG_PAINT_TYPE, align 4
  %154 = load i32, i32* @VG_PAINT_TYPE_COLOR, align 4
  %155 = call i32 @vgSetParameteri(i32 %152, i32 %153, i32 %154)
  %156 = load i64, i64* %18, align 8
  %157 = getelementptr inbounds [4 x i64], [4 x i64]* %23, i64 0, i64 0
  %158 = call i32 @gx_priv_colour_to_paint(i64 %156, i64* %157)
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* @VG_PAINT_COLOR, align 4
  %161 = getelementptr inbounds [4 x i64], [4 x i64]* %23, i64 0, i64 0
  %162 = call i32 @vgSetParameterfv(i32 %159, i32 %160, i32 4, i64* %161)
  %163 = load i32, i32* %25, align 4
  %164 = load i32, i32* @VG_FILL_PATH, align 4
  %165 = call i32 @vgSetPaint(i32 %163, i32 %164)
  %166 = load i32*, i32** %24, align 8
  %167 = load i64, i64* %14, align 8
  %168 = load i64, i64* %15, align 8
  %169 = load i8*, i8** %20, align 8
  %170 = load i64, i64* %21, align 8
  %171 = load i32, i32* @VG_FILL_PATH, align 4
  %172 = call i32 @vgft_font_draw(i32* %166, i64 %167, i64 %168, i8* %169, i64 %170, i32 %171)
  %173 = load i32, i32* %25, align 4
  %174 = call i32 @vgDestroyPaint(i32 %173)
  %175 = call i32 (...) @vgGetError()
  %176 = icmp eq i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @vcos_assert(i32 %177)
  %179 = load i32, i32* @VG_SCISSORING, align 4
  %180 = load i32, i32* @VG_FALSE, align 4
  %181 = call i32 @vgSeti(i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %151, %149, %77
  %183 = call i32 @gx_priv_restore(i32* %26)
  %184 = load i32, i32* %27, align 4
  ret i32 %184
}

declare dso_local i32 @vcos_demand(i32) #1

declare dso_local i32 @gx_priv_save(i32*, %struct.TYPE_4__*) #1

declare dso_local i32* @find_font(i8*, i64) #1

declare dso_local i32 @vgSeti(i32, i32) #1

declare dso_local i32 @vgSetiv(i32, i32, i64*) #1

declare dso_local i32 @gx_priv_colour_to_paint(i64, i64*) #1

declare dso_local i32 @vgSetfv(i32, i32, i64*) #1

declare dso_local i32 @vgft_get_text_extents(i32*, i8*, i64, i64, i64, i64*, i64*) #1

declare dso_local i64 @vgft_first_line_y_offset(i32*) #1

declare dso_local i32 @vgClear(i64, i64, i64, i64) #1

declare dso_local i32 @vgGetError(...) #1

declare dso_local i32 @GX_LOG(i8*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vgCreatePaint(...) #1

declare dso_local i32 @vgSetParameteri(i32, i32, i32) #1

declare dso_local i32 @vgSetParameterfv(i32, i32, i32, i64*) #1

declare dso_local i32 @vgSetPaint(i32, i32) #1

declare dso_local i32 @vgft_font_draw(i32*, i64, i64, i8*, i64, i32) #1

declare dso_local i32 @vgDestroyPaint(i32) #1

declare dso_local i32 @gx_priv_restore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
