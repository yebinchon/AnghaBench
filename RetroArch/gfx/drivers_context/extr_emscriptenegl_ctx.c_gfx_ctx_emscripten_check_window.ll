; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_emscriptenegl_ctx.c_gfx_ctx_emscripten_check_window.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_emscriptenegl_ctx.c_gfx_ctx_emscripten_check_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@emscripten_initial_width = common dso_local global i32 0, align 4
@emscripten_initial_height = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"#canvas\00", align 1
@EMSCRIPTEN_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"[EMSCRIPTEN/EGL]: error resizing canvas: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"[EMSCRIPTEN/EGL]: error resizing canvas css: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32*, i32*, i32)* @gfx_ctx_emscripten_check_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_ctx_emscripten_check_window(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %16, align 8
  %19 = call i32 @gfx_ctx_emscripten_get_canvas_size(i32* %14, i32* %15)
  %20 = load i32, i32* %14, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %15, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22, %6
  %26 = load i32, i32* @emscripten_initial_width, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* @emscripten_initial_height, align 4
  store i32 %27, i32* %15, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* %14, align 4
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43, %32
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i64 @emscripten_set_canvas_element_size(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @EMSCRIPTEN_RESULT_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i32, i32* %14, align 4
  %61 = sitofp i32 %60 to double
  %62 = load i32, i32* %15, align 4
  %63 = sitofp i32 %62 to double
  %64 = call i64 @emscripten_set_element_css_size(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %61, double %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @EMSCRIPTEN_RESULT_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i64, i64* %13, align 8
  %70 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %68, %59
  %72 = load i32*, i32** %9, align 8
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %43
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %8, align 8
  store i32 0, i32* %80, align 4
  ret void
}

declare dso_local i32 @gfx_ctx_emscripten_get_canvas_size(i32*, i32*) #1

declare dso_local i64 @emscripten_set_canvas_element_size(i8*, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i64) #1

declare dso_local i64 @emscripten_set_element_css_size(i8*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
