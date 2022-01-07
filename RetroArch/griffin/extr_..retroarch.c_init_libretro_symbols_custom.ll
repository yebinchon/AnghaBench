; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_init_libretro_symbols_custom.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_init_libretro_symbols_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_core_t = type { i32 }

@SYMBOL = common dso_local global i32 0, align 4
@SYMBOL_DUMMY = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MSG_FAILED_TO_OPEN_LIBRETRO_CORE = common dso_local global i32 0, align 4
@RARCH_PATH_CORE = common dso_local global i32 0, align 4
@SYMBOL_FFMPEG = common dso_local global i32 0, align 4
@SYMBOL_GONG = common dso_local global i32 0, align 4
@SYMBOL_IMAGEVIEWER = common dso_local global i32 0, align 4
@SYMBOL_MPV = common dso_local global i32 0, align 4
@SYMBOL_NETRETROPAD = common dso_local global i32 0, align 4
@SYMBOL_VIDEOPROCESSOR = common dso_local global i32 0, align 4
@lib_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.retro_core_t*, i8*, i8*)* @init_libretro_symbols_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_libretro_symbols_custom(i32 %0, %struct.retro_core_t* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.retro_core_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.retro_core_t* %1, %struct.retro_core_t** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %22 [
    i32 129, label %10
    i32 135, label %13
    i32 134, label %16
    i32 131, label %17
    i32 132, label %18
    i32 130, label %19
    i32 128, label %20
    i32 133, label %21
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* @SYMBOL, align 4
  %12 = call i32 @CORE_SYMBOLS(i32 %11)
  br label %22

13:                                               ; preds = %4
  %14 = load i32, i32* @SYMBOL_DUMMY, align 4
  %15 = call i32 @CORE_SYMBOLS(i32 %14)
  br label %22

16:                                               ; preds = %4
  br label %22

17:                                               ; preds = %4
  br label %22

18:                                               ; preds = %4
  br label %22

19:                                               ; preds = %4
  br label %22

20:                                               ; preds = %4
  br label %22

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %4, %21, %20, %19, %18, %17, %16, %13, %10
  ret i32 1
}

declare dso_local i32 @CORE_SYMBOLS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
