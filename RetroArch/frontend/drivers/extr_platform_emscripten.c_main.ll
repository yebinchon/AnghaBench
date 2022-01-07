; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_emscripten.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_emscripten.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"#canvas\00", align 1
@emscripten_mainloop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"#document\00", align 1
@emscripten_fullscreenchange_cb = common dso_local global i32 0, align 4
@EMSCRIPTEN_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"[EMSCRIPTEN/CTX] failed to create fullscreen callback: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @dummyErrnoCodes()
  %8 = call i32 @emscripten_set_canvas_element_size(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 800, i32 600)
  %9 = call i32 @emscripten_set_element_css_size(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double 8.000000e+02, double 6.000000e+02)
  %10 = load i32, i32* @emscripten_mainloop, align 4
  %11 = call i32 @emscripten_set_main_loop(i32 %10, i32 0, i32 0)
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @rarch_main(i32 %12, i8** %13, i32* null)
  %15 = load i32, i32* @emscripten_fullscreenchange_cb, align 4
  %16 = call i64 @emscripten_set_fullscreenchange_callback(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @EMSCRIPTEN_RESULT_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %20, %2
  ret i32 0
}

declare dso_local i32 @dummyErrnoCodes(...) #1

declare dso_local i32 @emscripten_set_canvas_element_size(i8*, i32, i32) #1

declare dso_local i32 @emscripten_set_element_css_size(i8*, double, double) #1

declare dso_local i32 @emscripten_set_main_loop(i32, i32, i32) #1

declare dso_local i32 @rarch_main(i32, i8**, i32*) #1

declare dso_local i64 @emscripten_set_fullscreenchange_callback(i8*, i32*, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
