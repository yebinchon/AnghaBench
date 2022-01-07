; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_viewport_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_viewport_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_viewport = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.video_viewport*)* @d3d9_viewport_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d9_viewport_info(i8* %0, %struct.video_viewport* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.video_viewport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.video_viewport* %1, %struct.video_viewport** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %7, align 8
  %10 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %11 = icmp ne %struct.video_viewport* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %45

13:                                               ; preds = %2
  %14 = call i32 @video_driver_get_size(i32* %5, i32* %6)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %20 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %26 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %32 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %38 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %41 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %44 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
