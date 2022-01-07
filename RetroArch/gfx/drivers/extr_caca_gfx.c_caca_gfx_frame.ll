; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_caca_gfx.c_caca_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_caca_gfx.c_caca_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@caca_video_width = common dso_local global i32 0, align 4
@caca_video_height = common dso_local global i32 0, align 4
@caca_video_pitch = common dso_local global i32 0, align 4
@caca_cv = common dso_local global i32 0, align 4
@caca_menu_frame = common dso_local global i8* null, align 8
@caca_dither = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"caca\00", align 1
@caca_display = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_5__*)* @caca_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caca_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_5__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %17, align 8
  store i64 0, i64* %18, align 8
  store i8* null, i8** %19, align 8
  %24 = load i8*, i8** %11, align 8
  store i8* %24, i8** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i8*, i8** %16, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %8
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %33, %8
  store i32 1, i32* %9, align 4
  br label %142

40:                                               ; preds = %36
  %41 = load i32, i32* @caca_video_width, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @caca_video_height, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @caca_video_pitch, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48, %44, %40
  %53 = load i32, i32* %12, align 4
  %54 = icmp ugt i32 %53, 4
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = icmp ugt i32 %56, 4
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* @caca_video_width, align 4
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* @caca_video_height, align 4
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* @caca_video_pitch, align 4
  %62 = call i32 @caca_gfx_free(i32* null)
  %63 = call i32 (...) @caca_gfx_create()
  br label %64

64:                                               ; preds = %58, %55, %52
  br label %65

65:                                               ; preds = %64, %48
  %66 = load i32, i32* @caca_cv, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 1, i32* %9, align 4
  br label %142

69:                                               ; preds = %65
  %70 = load i8*, i8** @caca_menu_frame, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i8*, i8** @caca_menu_frame, align 8
  store i8* %78, i8** %20, align 8
  br label %79

79:                                               ; preds = %77, %72, %69
  %80 = load i32, i32* @caca_cv, align 4
  %81 = call i32 @caca_get_canvas_width(i32 %80)
  store i32 %81, i32* %21, align 4
  %82 = load i32, i32* @caca_cv, align 4
  %83 = call i32 @caca_get_canvas_height(i32 %82)
  store i32 %83, i32* %22, align 4
  %84 = load i8*, i8** %20, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %79
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %21, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %22, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 0, i32* %23, align 4
  br label %102

102:                                              ; preds = %101, %97, %93, %90, %87, %79
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* %23, align 4
  br label %108

108:                                              ; preds = %107, %102
  %109 = load i32, i32* @caca_cv, align 4
  %110 = call i32 @caca_clear_canvas(i32 %109)
  %111 = load i8*, i8** %16, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %115 = load i8*, i8** %16, align 8
  %116 = call i32 @font_driver_render_msg(%struct.TYPE_5__* %114, i32* null, i8* %115, i32* null)
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i32, i32* %23, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %117
  %121 = load i32, i32* @caca_cv, align 4
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* @caca_dither, align 4
  %125 = load i8*, i8** %20, align 8
  %126 = call i32 @caca_dither_bitmap(i32 %121, i32 0, i32 0, i32 %122, i32 %123, i32 %124, i8* %125)
  %127 = load i32, i32* @caca_cv, align 4
  %128 = call i8* @caca_export_canvas_to_memory(i32 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %18)
  store i8* %128, i8** %19, align 8
  %129 = load i8*, i8** %19, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %120
  %132 = load i64, i64* %18, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* @caca_display, align 4
  %136 = call i32 @caca_refresh_display(i32 %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i8*, i8** %19, align 8
  %139 = call i32 @free(i8* %138)
  br label %140

140:                                              ; preds = %137, %120
  br label %141

141:                                              ; preds = %140, %117
  store i32 1, i32* %9, align 4
  br label %142

142:                                              ; preds = %141, %68, %39
  %143 = load i32, i32* %9, align 4
  ret i32 %143
}

declare dso_local i32 @caca_gfx_free(i32*) #1

declare dso_local i32 @caca_gfx_create(...) #1

declare dso_local i32 @caca_get_canvas_width(i32) #1

declare dso_local i32 @caca_get_canvas_height(i32) #1

declare dso_local i32 @caca_clear_canvas(i32) #1

declare dso_local i32 @font_driver_render_msg(%struct.TYPE_5__*, i32*, i8*, i32*) #1

declare dso_local i32 @caca_dither_bitmap(i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i8* @caca_export_canvas_to_memory(i32, i8*, i64*) #1

declare dso_local i32 @caca_refresh_display(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
