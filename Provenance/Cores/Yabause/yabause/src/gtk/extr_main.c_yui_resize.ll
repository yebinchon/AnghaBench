; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_main.c_yui_resize.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_main.c_yui_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float, float }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@keyfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"General\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"KeepRatio\00", align 1
@yui = common dso_local global i32 0, align 4
@GDK_HINT_ASPECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_resize(float %0, float %1, i32 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load float, float* %4, align 4
  %9 = fcmp ole float %8, 0.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store float 3.200000e+02, float* %4, align 4
  br label %11

11:                                               ; preds = %10, %3
  %12 = load float, float* %5, align 4
  %13 = fcmp ole float %12, 0.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store float 2.240000e+02, float* %5, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32, i32* @keyfile, align 4
  %17 = call i64 @g_key_file_get_integer(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load float, float* %4, align 4
  %21 = load float, float* %5, align 4
  %22 = fdiv float %20, %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store float %22, float* %23, align 4
  %24 = load float, float* %4, align 4
  %25 = load float, float* %5, align 4
  %26 = fdiv float %24, %25
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store float %26, float* %27, align 4
  %28 = load i32, i32* @yui, align 4
  %29 = call i32 @GTK_WINDOW(i32 %28)
  %30 = load i32, i32* @yui, align 4
  %31 = call %struct.TYPE_10__* @YUI_WINDOW(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GDK_HINT_ASPECT, align 4
  %35 = call i32 @gtk_window_set_geometry_hints(i32 %29, i32 %33, %struct.TYPE_9__* %7, i32 %34)
  br label %44

36:                                               ; preds = %15
  %37 = load i32, i32* @yui, align 4
  %38 = call i32 @GTK_WINDOW(i32 %37)
  %39 = load i32, i32* @yui, align 4
  %40 = call %struct.TYPE_10__* @YUI_WINDOW(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @gtk_window_set_geometry_hints(i32 %38, i32 %42, %struct.TYPE_9__* null, i32 0)
  br label %44

44:                                               ; preds = %36, %19
  %45 = load i32, i32* @yui, align 4
  %46 = call i32 @GTK_WINDOW(i32 %45)
  %47 = load float, float* %4, align 4
  %48 = load float, float* %5, align 4
  %49 = load i32, i32* @yui, align 4
  %50 = call %struct.TYPE_10__* @YUI_WINDOW(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sitofp i64 %55 to float
  %57 = fadd float %48, %56
  %58 = fptosi float %57 to i64
  %59 = call i32 @gtk_window_resize(i32 %46, float %47, i64 %58)
  %60 = load i32, i32* @yui, align 4
  %61 = call %struct.TYPE_10__* @YUI_WINDOW(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @yui_window_set_fullscreen(%struct.TYPE_10__* %61, i32 %62)
  ret void
}

declare dso_local i64 @g_key_file_get_integer(i32, i8*, i8*, i32) #1

declare dso_local i32 @gtk_window_set_geometry_hints(i32, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @GTK_WINDOW(i32) #1

declare dso_local %struct.TYPE_10__* @YUI_WINDOW(i32) #1

declare dso_local i32 @gtk_window_resize(i32, float, i64) #1

declare dso_local i32 @yui_window_set_fullscreen(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
