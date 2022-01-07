; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail_path.c_menu_thumbnail_is_enabled.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail_path.c_menu_thumbnail_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@PLAYLIST_THUMBNAIL_MODE_DEFAULT = common dso_local global i32 0, align 4
@PLAYLIST_THUMBNAIL_MODE_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_thumbnail_is_enabled(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %6, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %58

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %56 [
    i32 128, label %16
    i32 129, label %36
  ]

16:                                               ; preds = %14
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PLAYLIST_THUMBNAIL_MODE_DEFAULT, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PLAYLIST_THUMBNAIL_MODE_OFF, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %16
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %58

36:                                               ; preds = %14
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PLAYLIST_THUMBNAIL_MODE_DEFAULT, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PLAYLIST_THUMBNAIL_MODE_OFF, align 4
  %47 = icmp ne i32 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %58

49:                                               ; preds = %36
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %14
  br label %57

57:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %49, %42, %29, %22, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
