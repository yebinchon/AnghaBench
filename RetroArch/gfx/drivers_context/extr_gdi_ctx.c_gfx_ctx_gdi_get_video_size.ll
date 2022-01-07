; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_gdi_ctx.c_gfx_ctx_gdi_get_video_size.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_gdi_ctx.c_gfx_ctx_gdi_get_video_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }

@g_win32_resize_width = common dso_local global i32 0, align 4
@g_win32_resize_height = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @gfx_ctx_gdi_get_video_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_ctx_gdi_get_video_size(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = call i32 (...) @win32_get_window()
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %17 = call i32 @win32_monitor_info(%struct.TYPE_5__* %9, i32** %11, i32* %10)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %19 = bitcast %struct.TYPE_4__* %8 to i8*
  %20 = bitcast %struct.TYPE_4__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %22, %24
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %28, %30
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %38

33:                                               ; preds = %3
  %34 = load i32, i32* @g_win32_resize_width, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @g_win32_resize_height, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %16
  ret void
}

declare dso_local i32 @win32_get_window(...) #1

declare dso_local i32 @win32_monitor_info(%struct.TYPE_5__*, i32**, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
