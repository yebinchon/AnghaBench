; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_gtkglwidget.c_gonna_hide.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_gtkglwidget.c_gonna_hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@beforehiding = common dso_local global i64 0, align 8
@gonna_hide.source_data = internal global [1 x i8] zeroinitializer, align 1
@gonna_hide.mask_data = internal global [1 x i8] zeroinitializer, align 1
@__const.gonna_hide.fg = private unnamed_addr constant %struct.TYPE_5__ { i32 0, i32 65535, i32 65535, i32 65535 }, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gonna_hide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gonna_hide(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i64, i64* @beforehiding, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* @beforehiding, align 8
  %11 = load i64, i64* @beforehiding, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_5__* @__const.gonna_hide.fg to i8*), i64 16, i1 false)
  %15 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 16, i1 false)
  %16 = call i32* @gdk_bitmap_create_from_data(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gonna_hide.source_data, i64 0, i64 0), i32 1, i32 1)
  store i32* %16, i32** %5, align 8
  %17 = call i32* @gdk_bitmap_create_from_data(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gonna_hide.mask_data, i64 0, i64 0), i32 1, i32 1)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @gdk_cursor_new_from_pixmap(i32* %18, i32* %19, %struct.TYPE_5__* %7, %struct.TYPE_5__* %8, i32 1, i32 1)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @gdk_pixmap_unref(i32* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @gdk_pixmap_unref(i32* %23)
  %25 = load i32, i32* %3, align 4
  %26 = call %struct.TYPE_6__* @GTK_WIDGET(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @gdk_window_set_cursor(i32 %28, i32* %29)
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @gdk_bitmap_create_from_data(i32*, i8*, i32, i32) #2

declare dso_local i32* @gdk_cursor_new_from_pixmap(i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @gdk_pixmap_unref(i32*) #2

declare dso_local i32 @gdk_window_set_cursor(i32, i32*) #2

declare dso_local %struct.TYPE_6__* @GTK_WIDGET(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
