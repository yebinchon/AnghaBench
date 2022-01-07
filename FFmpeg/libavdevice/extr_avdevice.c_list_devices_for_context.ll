; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_avdevice.c_list_devices_for_context.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_avdevice.c_list_devices_for_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**)* @list_devices_for_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_devices_for_context(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @av_dict_copy(i32** %7, i32* %9, i32 0)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %13 = call i32 @av_opt_set_dict2(i32* %11, i32** %7, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %20

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = call i32 @avdevice_list_devices(i32* %17, i32** %18)
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %16, %15
  %21 = call i32 @av_dict_free(i32** %7)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @avformat_free_context(i32* %22)
  %24 = load i32, i32* %8, align 4
  ret i32 %24
}

declare dso_local i32 @av_dict_copy(i32**, i32*, i32) #1

declare dso_local i32 @av_opt_set_dict2(i32*, i32**, i32) #1

declare dso_local i32 @avdevice_list_devices(i32*, i32**) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @avformat_free_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
