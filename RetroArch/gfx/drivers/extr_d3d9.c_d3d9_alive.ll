; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_alive.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @d3d9_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d9_alive(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = call i32 @video_driver_get_size(i32* %3, i32* %4)
  %12 = call i32 @win32_check_window(i32* %6, i32* %7, i32* %3, i32* %4)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @d3d9_set_resize(%struct.TYPE_4__* %25, i32 %26, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = call i32 @d3d9_restore(%struct.TYPE_4__* %29)
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @video_driver_set_size(i32* %3, i32* %4)
  br label %43

43:                                               ; preds = %41, %38, %31
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @win32_check_window(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @d3d9_set_resize(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @d3d9_restore(%struct.TYPE_4__*) #1

declare dso_local i32 @video_driver_set_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
