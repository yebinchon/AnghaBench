; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl1.c_gl1_gfx_viewport_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl1.c_gl1_gfx_viewport_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_viewport = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.video_viewport }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.video_viewport*)* @gl1_gfx_viewport_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl1_gfx_viewport_info(i8* %0, %struct.video_viewport* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.video_viewport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.video_viewport* %1, %struct.video_viewport** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %9, align 8
  %12 = call i32 @video_driver_get_size(i32* %5, i32* %6)
  %13 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast %struct.video_viewport* %13 to i8*
  %17 = bitcast %struct.video_viewport* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 16, i1 false)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %20 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %23 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %25 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %28 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %26, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %36 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
