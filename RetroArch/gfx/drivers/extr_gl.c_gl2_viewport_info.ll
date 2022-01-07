; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_viewport_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_viewport_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_viewport = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.video_viewport }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.video_viewport*)* @gl2_viewport_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl2_viewport_info(i8* %0, %struct.video_viewport* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.video_viewport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.video_viewport* %1, %struct.video_viewport** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %7, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = bitcast %struct.video_viewport* %18 to i8*
  %22 = bitcast %struct.video_viewport* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 16, i1 false)
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %25 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %28 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %30 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %33 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %31, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %41 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
