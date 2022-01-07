; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_gfx_ctx_wl_get_flags.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_gfx_ctx_wl_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@GFX_CTX_FLAGS_GL_CORE_CONTEXT = common dso_local global i32 0, align 4
@wl_api = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"glcore\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"gl\00", align 1
@GFX_CTX_FLAGS_SHADERS_GLSL = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_SLANG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_ctx_wl_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_wl_get_flags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @GFX_CTX_FLAGS_GL_CORE_CONTEXT, align 4
  %14 = call i32 @BIT32_SET(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @wl_api, align 4
  switch i32 %16, label %31 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %29
    i32 131, label %30
  ]

17:                                               ; preds = %15, %15
  %18 = call i32 (...) @video_driver_get_ident()
  %19 = call i32 @string_is_equal(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %28

22:                                               ; preds = %17
  %23 = call i32 (...) @video_driver_get_ident()
  %24 = call i32 @string_is_equal(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %21
  br label %32

29:                                               ; preds = %15
  br label %32

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %15, %30
  br label %32

32:                                               ; preds = %31, %29, %28
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @BIT32_SET(i32, i32) #1

declare dso_local i32 @string_is_equal(i32, i8*) #1

declare dso_local i32 @video_driver_get_ident(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
