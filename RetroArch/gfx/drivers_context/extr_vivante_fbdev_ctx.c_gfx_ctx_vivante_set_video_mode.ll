; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_vivante_fbdev_ctx.c_gfx_ctx_vivante_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_vivante_fbdev_ctx.c_gfx_ctx_vivante_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"[Vivante fbdev]: EGL error: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32, i32)* @gfx_ctx_vivante_set_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_vivante_set_video_mode(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %12, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %5
  store i32 1280, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %21
  store i32 1024, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = call i32 @fbGetDisplayByIndex(i32 0)
  %36 = call i32 @fbCreateWindow(i32 %35, i32 0, i32 0, i32 0, i32 0)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  store i32 1, i32* %6, align 4
  br label %44

39:                                               ; No predecessors!
  %40 = call i32 (...) @eglGetError()
  %41 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @gfx_ctx_vivante_destroy(i8* %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %28
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @fbCreateWindow(i32, i32, i32, i32, i32) #1

declare dso_local i32 @fbGetDisplayByIndex(i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @eglGetError(...) #1

declare dso_local i32 @gfx_ctx_vivante_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
