; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_recording_deinit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_recording_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32*)* }

@recording_data = common dso_local global i32* null, align 8
@recording_driver = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @recording_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recording_deinit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @recording_data, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recording_driver, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %0
  store i32 0, i32* %1, align 4
  br label %32

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recording_driver, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (i32*)*, i32 (i32*)** %10, align 8
  %12 = icmp ne i32 (i32*)* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recording_driver, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (i32*)*, i32 (i32*)** %15, align 8
  %17 = load i32*, i32** @recording_data, align 8
  %18 = call i32 %16(i32* %17)
  br label %19

19:                                               ; preds = %13, %8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recording_driver, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32*)*, i32 (i32*)** %21, align 8
  %23 = icmp ne i32 (i32*)* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recording_driver, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32*)*, i32 (i32*)** %26, align 8
  %28 = load i32*, i32** @recording_data, align 8
  %29 = call i32 %27(i32* %28)
  br label %30

30:                                               ; preds = %24, %19
  store i32* null, i32** @recording_data, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** @recording_driver, align 8
  %31 = call i32 (...) @video_driver_gpu_record_deinit()
  store i32 1, i32* %1, align 4
  br label %32

32:                                               ; preds = %30, %7
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @video_driver_gpu_record_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
