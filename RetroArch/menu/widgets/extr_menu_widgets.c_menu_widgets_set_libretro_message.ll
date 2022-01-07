; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_set_libretro_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_set_libretro_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@libretro_message_timer = common dso_local global i32 0, align 4
@libretro_message = common dso_local global i32 0, align 4
@LIBRETRO_MESSAGE_SIZE = common dso_local global i32 0, align 4
@DEFAULT_BACKDROP = common dso_local global i32 0, align 4
@libretro_message_alpha = common dso_local global i32 0, align 4
@menu_widgets_libretro_message_fadeout = common dso_local global i32 0, align 4
@font_regular = common dso_local global i32 0, align 4
@simple_widget_padding = common dso_local global i32 0, align 4
@libretro_message_width = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_widgets_set_libretro_message(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 ptrtoint (i32* @libretro_message_timer to i64), i64* %5, align 8
  %7 = load i32, i32* @libretro_message, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @LIBRETRO_MESSAGE_SIZE, align 4
  %10 = call i32 @strlcpy(i32 %7, i8* %8, i32 %9)
  %11 = load i32, i32* @DEFAULT_BACKDROP, align 4
  store i32 %11, i32* @libretro_message_alpha, align 4
  %12 = call i32 @menu_timer_kill(i32* @libretro_message_timer)
  %13 = call i32 @menu_animation_kill_by_tag(i64* %5)
  %14 = load i32, i32* @menu_widgets_libretro_message_fadeout, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = call i32 @menu_timer_start(i32* @libretro_message_timer, %struct.TYPE_3__* %6)
  %20 = load i32, i32* @font_regular, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = trunc i64 %23 to i32
  %25 = call i64 @font_driver_get_message_width(i32 %20, i8* %21, i32 %24, i32 1)
  %26 = load i32, i32* @simple_widget_padding, align 4
  %27 = mul nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  store i64 %29, i64* @libretro_message_width, align 8
  ret void
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @menu_timer_kill(i32*) #1

declare dso_local i32 @menu_animation_kill_by_tag(i64*) #1

declare dso_local i32 @menu_timer_start(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @font_driver_get_message_width(i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
