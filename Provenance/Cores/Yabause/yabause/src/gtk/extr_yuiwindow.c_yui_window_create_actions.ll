; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiwindow.c_yui_window_create_actions.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiwindow.c_yui_window_create_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Run\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"start emulation\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gtk-media-play\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"<Ctrl>r\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@yui_window_run = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Pause\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"pause emulation\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"gtk-media-pause\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"<Ctrl>p\00", align 1
@yui_window_pause = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"reset emulation\00", align 1
@yui_window_reset = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Fullscreen\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"gtk-fullscreen\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"<Ctrl>f\00", align 1
@yui_window_toggle_fullscreen = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"frameskip\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Frame Skip/Limiter\00", align 1
@yui_window_toggle_frameskip = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Quit\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"gtk-quit\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"<Ctrl>q\00", align 1
@gtk_main_quit = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"toggle_vdp1\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"VDP1\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ToggleVDP1 = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"toggle_nbg0\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"NBG0\00", align 1
@ToggleNBG0 = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"toggle_nbg1\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"NBG1\00", align 1
@ToggleNBG1 = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"toggle_nbg2\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"NBG2\00", align 1
@ToggleNBG2 = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [12 x i8] c"toggle_nbg3\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"NBG3\00", align 1
@ToggleNBG3 = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [12 x i8] c"toggle_rbg0\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"RBG0\00", align 1
@ToggleRBG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @yui_window_create_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_window_create_actions(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = call i32* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32* @gtk_action_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @gtk_action_group_add_action_with_accel(i32 %10, i32* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @yui_window_run, align 4
  %15 = call i32 @G_CALLBACK(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = call i32 @g_signal_connect_swapped(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %15, %struct.TYPE_5__* %16)
  %18 = call i32* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %19 = call i32* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %20 = call i32* @gtk_action_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %18, i32* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i32* %20, i32** %3, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @gtk_action_group_add_action_with_accel(i32 %23, i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @yui_window_pause, align 4
  %28 = call i32 @G_CALLBACK(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = call i32 @g_signal_connect_swapped(i32* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %28, %struct.TYPE_5__* %29)
  %31 = call i32* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %32 = call i32* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %33 = call i32* @gtk_action_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32* %31, i32* %32, i8* null)
  store i32* %33, i32** %3, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @gtk_action_group_add_action_with_accel(i32 %36, i32* %37, i8* null)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @yui_window_reset, align 4
  %41 = call i32 @G_CALLBACK(i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = call i32 @g_signal_connect_swapped(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %41, %struct.TYPE_5__* %42)
  %44 = call i32* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %45 = call i32* @gtk_toggle_action_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32* %44, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i32* %45, i32** %4, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @GTK_ACTION(i32* %49)
  %51 = call i32 @gtk_action_group_add_action_with_accel(i32 %48, i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @yui_window_toggle_fullscreen, align 4
  %54 = call i32 @G_CALLBACK(i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = call i32 @g_signal_connect(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %54, %struct.TYPE_5__* %55)
  %57 = call i32* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  %58 = call i32* @gtk_toggle_action_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32* %57, i32* null, i8* null)
  store i32* %58, i32** %4, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = call i32* @GTK_ACTION(i32* %62)
  %64 = call i32 @gtk_action_group_add_action_with_accel(i32 %61, i32* %63, i8* null)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @yui_window_toggle_frameskip, align 4
  %67 = call i32 @G_CALLBACK(i32 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = call i32 @g_signal_connect(i32* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %67, %struct.TYPE_5__* %68)
  %70 = call i32* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %71 = call i32* @gtk_action_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32* %70, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  store i32* %71, i32** %3, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @gtk_action_group_add_action_with_accel(i32 %74, i32* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* @gtk_main_quit, align 4
  %79 = call i32 @G_CALLBACK(i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = call i32 @g_signal_connect(i32* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %79, %struct.TYPE_5__* %80)
  %82 = call i32* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %83 = call i32* @gtk_toggle_action_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32* %82, i32* null, i8* null)
  store i32* %83, i32** %4, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i32 @gtk_toggle_action_set_active(i32* %84, i32 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = call i32* @GTK_ACTION(i32* %90)
  %92 = call i32 @gtk_action_group_add_action_with_accel(i32 %89, i32* %91, i8* null)
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* @ToggleVDP1, align 4
  %95 = call i32 @G_CALLBACK(i32 %94)
  %96 = call i32 @g_signal_connect(i32* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %95, %struct.TYPE_5__* null)
  %97 = call i32* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %98 = call i32* @gtk_toggle_action_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32* %97, i32* null, i8* null)
  store i32* %98, i32** %4, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* @TRUE, align 4
  %101 = call i32 @gtk_toggle_action_set_active(i32* %99, i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = call i32* @GTK_ACTION(i32* %105)
  %107 = call i32 @gtk_action_group_add_action_with_accel(i32 %104, i32* %106, i8* null)
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* @ToggleNBG0, align 4
  %110 = call i32 @G_CALLBACK(i32 %109)
  %111 = call i32 @g_signal_connect(i32* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %110, %struct.TYPE_5__* null)
  %112 = call i32* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %113 = call i32* @gtk_toggle_action_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32* %112, i32* null, i8* null)
  store i32* %113, i32** %4, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* @TRUE, align 4
  %116 = call i32 @gtk_toggle_action_set_active(i32* %114, i32 %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = call i32* @GTK_ACTION(i32* %120)
  %122 = call i32 @gtk_action_group_add_action_with_accel(i32 %119, i32* %121, i8* null)
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* @ToggleNBG1, align 4
  %125 = call i32 @G_CALLBACK(i32 %124)
  %126 = call i32 @g_signal_connect(i32* %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %125, %struct.TYPE_5__* null)
  %127 = call i32* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %128 = call i32* @gtk_toggle_action_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32* %127, i32* null, i8* null)
  store i32* %128, i32** %4, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* @TRUE, align 4
  %131 = call i32 @gtk_toggle_action_set_active(i32* %129, i32 %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %4, align 8
  %136 = call i32* @GTK_ACTION(i32* %135)
  %137 = call i32 @gtk_action_group_add_action_with_accel(i32 %134, i32* %136, i8* null)
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* @ToggleNBG2, align 4
  %140 = call i32 @G_CALLBACK(i32 %139)
  %141 = call i32 @g_signal_connect(i32* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %140, %struct.TYPE_5__* null)
  %142 = call i32* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %143 = call i32* @gtk_toggle_action_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32* %142, i32* null, i8* null)
  store i32* %143, i32** %4, align 8
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* @TRUE, align 4
  %146 = call i32 @gtk_toggle_action_set_active(i32* %144, i32 %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %4, align 8
  %151 = call i32* @GTK_ACTION(i32* %150)
  %152 = call i32 @gtk_action_group_add_action_with_accel(i32 %149, i32* %151, i8* null)
  %153 = load i32*, i32** %4, align 8
  %154 = load i32, i32* @ToggleNBG3, align 4
  %155 = call i32 @G_CALLBACK(i32 %154)
  %156 = call i32 @g_signal_connect(i32* %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %155, %struct.TYPE_5__* null)
  %157 = call i32* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  %158 = call i32* @gtk_toggle_action_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32* %157, i32* null, i8* null)
  store i32* %158, i32** %4, align 8
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* @TRUE, align 4
  %161 = call i32 @gtk_toggle_action_set_active(i32* %159, i32 %160)
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %4, align 8
  %166 = call i32* @GTK_ACTION(i32* %165)
  %167 = call i32 @gtk_action_group_add_action_with_accel(i32 %164, i32* %166, i8* null)
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* @ToggleRBG0, align 4
  %170 = call i32 @G_CALLBACK(i32 %169)
  %171 = call i32 @g_signal_connect(i32* %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %170, %struct.TYPE_5__* null)
  ret void
}

declare dso_local i32* @gtk_action_new(i8*, i32*, i32*, i8*) #1

declare dso_local i32* @_(i8*) #1

declare dso_local i32 @gtk_action_group_add_action_with_accel(i32, i32*, i8*) #1

declare dso_local i32 @g_signal_connect_swapped(i32*, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32* @gtk_toggle_action_new(i8*, i32*, i32*, i8*) #1

declare dso_local i32* @GTK_ACTION(i32*) #1

declare dso_local i32 @g_signal_connect(i32*, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gtk_toggle_action_set_active(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
