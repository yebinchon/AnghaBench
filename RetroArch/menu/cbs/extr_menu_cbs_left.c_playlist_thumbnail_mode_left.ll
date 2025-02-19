; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_playlist_thumbnail_mode_left.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_playlist_thumbnail_mode_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLAYLIST_THUMBNAIL_MODE_DEFAULT = common dso_local global i32 0, align 4
@PLAYLIST_THUMBNAIL_MODE_BOXARTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @playlist_thumbnail_mode_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @playlist_thumbnail_mode_left(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @playlist_get_thumbnail_mode(i32* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PLAYLIST_THUMBNAIL_MODE_DEFAULT, align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = sub i32 %15, 1
  store i32 %16, i32* %7, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @PLAYLIST_THUMBNAIL_MODE_BOXARTS, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %20, %17
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @playlist_set_thumbnail_mode(i32* %24, i32 %25, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @playlist_write_file(i32* %28)
  ret void
}

declare dso_local i32 @playlist_get_thumbnail_mode(i32*, i32) #1

declare dso_local i32 @playlist_set_thumbnail_mode(i32*, i32, i32) #1

declare dso_local i32 @playlist_write_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
