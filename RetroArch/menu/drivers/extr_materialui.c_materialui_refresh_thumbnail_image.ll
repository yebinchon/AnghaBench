; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_refresh_thumbnail_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_refresh_thumbnail_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { float }

@MUI_LIST_VIEW_DEFAULT = common dso_local global i64 0, align 8
@MUI_LIST_VIEW_PLAYLIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @materialui_refresh_thumbnail_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_refresh_thumbnail_image(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MUI_LIST_VIEW_DEFAULT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MUI_LIST_VIEW_PLAYLIST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14
  br label %67

27:                                               ; preds = %20
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = call i64 @materialui_entry_onscreen(%struct.TYPE_8__* %28, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %27
  %34 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %34, i32** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  %35 = call float (...) @menu_thumbnail_get_stream_delay()
  store float %35, float* %8, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %67

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = call i64 @file_list_get_userdata_at_offset(i32* %40, i64 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %7, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %67

48:                                               ; preds = %39
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = call i32 @menu_thumbnail_reset(%struct.TYPE_9__* %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @menu_thumbnail_reset(%struct.TYPE_9__* %55)
  %57 = load float, float* %8, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store float %57, float* %61, align 4
  %62 = load float, float* %8, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store float %62, float* %66, align 4
  br label %67

67:                                               ; preds = %13, %26, %38, %47, %48, %27
  ret void
}

declare dso_local i64 @materialui_entry_onscreen(%struct.TYPE_8__*, i64) #1

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local float @menu_thumbnail_get_stream_delay(...) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i64) #1

declare dso_local i32 @menu_thumbnail_reset(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
