; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_gtkglwidget.c_yui_gl_hide_cursor.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_gtkglwidget.c_yui_gl_hide_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@padbits = common dso_local global i32 0, align 4
@PERMOUSE = common dso_local global i64 0, align 8
@keyfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"General\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"MouseSpeed\00", align 1
@oldx = common dso_local global i32 0, align 4
@oldy = common dso_local global i32 0, align 4
@beforehiding = common dso_local global i32 0, align 4
@gonna_hide = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i32)* @yui_gl_hide_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yui_gl_hide_cursor(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @padbits, align 4
  %11 = call i64 @PerGetId(i32 %10)
  %12 = load i64, i64* @PERMOUSE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @keyfile, align 4
  %22 = call double @g_key_file_get_double(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store double %22, double* %9, align 8
  %23 = load i32, i32* @padbits, align 4
  %24 = load double, double* %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @oldx, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sitofp i32 %27 to double
  %29 = fmul double %24, %28
  %30 = load double, double* %9, align 8
  %31 = fneg double %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @oldy, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sitofp i32 %34 to double
  %36 = fmul double %31, %35
  %37 = call i32 @PerMouseMove(i32 %23, double %29, double %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* @oldx, align 4
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* @oldy, align 4
  br label %40

40:                                               ; preds = %14, %3
  %41 = load i32, i32* @beforehiding, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gdk_window_set_cursor(i32 %46, i32* null)
  %48 = load i32, i32* @gonna_hide, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = call i32 @g_timeout_add(i32 1000, i32 %48, %struct.TYPE_6__* %49)
  br label %51

51:                                               ; preds = %43, %40
  store i32 2, i32* @beforehiding, align 4
  %52 = load i32, i32* @FALSE, align 4
  ret i32 %52
}

declare dso_local i64 @PerGetId(i32) #1

declare dso_local double @g_key_file_get_double(i32, i8*, i8*, i32*) #1

declare dso_local i32 @PerMouseMove(i32, double, double) #1

declare dso_local i32 @gdk_window_set_cursor(i32, i32*) #1

declare dso_local i32 @g_timeout_add(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
