; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_input_poll_hotplug_available.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_input_poll_hotplug_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_monitor = type { i32 }
%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udev_monitor*)* @udev_input_poll_hotplug_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udev_input_poll_hotplug_available(%struct.udev_monitor* %0) #0 {
  %2 = alloca %struct.udev_monitor*, align 8
  %3 = alloca %struct.pollfd, align 4
  store %struct.udev_monitor* %0, %struct.udev_monitor** %2, align 8
  %4 = load %struct.udev_monitor*, %struct.udev_monitor** %2, align 8
  %5 = call i32 @udev_monitor_get_fd(%struct.udev_monitor* %4)
  %6 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @POLLIN, align 4
  %8 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = call i32 @poll(%struct.pollfd* %3, i32 1, i32 0)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @POLLIN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ false, %1 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i32 @udev_monitor_get_fd(%struct.udev_monitor*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
