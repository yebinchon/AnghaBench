; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/display_servers/extr_dispserv_win32.c_win32_display_server_destroy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/display_servers/extr_dispserv_win32.c_win32_display_server_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@win32_orig_width = common dso_local global i64 0, align 8
@win32_orig_height = common dso_local global i64 0, align 8
@win32_orig_refresh = common dso_local global i64 0, align 8
@crt_center = common dso_local global i32 0, align 4
@g_taskbarList = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @win32_display_server_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @win32_display_server_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %3, align 8
  %6 = load i64, i64* @win32_orig_width, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load i64, i64* @win32_orig_height, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load i64, i64* @win32_orig_width, align 8
  %13 = load i64, i64* @win32_orig_height, align 8
  %14 = load i64, i64* @win32_orig_refresh, align 8
  %15 = load i64, i64* @win32_orig_refresh, align 8
  %16 = sitofp i64 %15 to float
  %17 = load i32, i32* @crt_center, align 4
  %18 = call i32 @video_display_server_set_resolution(i64 %12, i64 %13, i64 %14, float %16, i32 %17, i32 0, i32 0)
  br label %19

19:                                               ; preds = %11, %8, %1
  %20 = load i32*, i32** %3, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @free(i32* %23)
  br label %25

25:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @video_display_server_set_resolution(i64, i64, i64, float, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
