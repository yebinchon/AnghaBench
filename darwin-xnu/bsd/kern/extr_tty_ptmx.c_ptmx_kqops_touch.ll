; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptmx_kqops_touch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptmx_kqops_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32 }
%struct.kevent_internal_s = type { i32, i32 }
%struct.ptmx_ioctl = type { i32 }
%struct.tty = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kevent_internal_s*)* @ptmx_kqops_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptmx_kqops_touch(%struct.knote* %0, %struct.kevent_internal_s* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.kevent_internal_s*, align 8
  %5 = alloca %struct.ptmx_ioctl*, align 8
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %4, align 8
  %8 = load %struct.knote*, %struct.knote** %3, align 8
  %9 = call %struct.ptmx_ioctl* @ptmx_knote_ioctl(%struct.knote* %8)
  store %struct.ptmx_ioctl* %9, %struct.ptmx_ioctl** %5, align 8
  %10 = load %struct.knote*, %struct.knote** %3, align 8
  %11 = call %struct.tty* @ptmx_knote_tty(%struct.knote* %10)
  store %struct.tty* %11, %struct.tty** %6, align 8
  %12 = load %struct.tty*, %struct.tty** %6, align 8
  %13 = call i32 @tty_lock(%struct.tty* %12)
  %14 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %15 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.knote*, %struct.knote** %3, align 8
  %18 = getelementptr inbounds %struct.knote, %struct.knote* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %20 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.knote*, %struct.knote** %3, align 8
  %23 = getelementptr inbounds %struct.knote, %struct.knote* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.knote*, %struct.knote** %3, align 8
  %25 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %5, align 8
  %26 = load %struct.tty*, %struct.tty** %6, align 8
  %27 = call i32 @ptmx_kqops_common(%struct.knote* %24, %struct.ptmx_ioctl* %25, %struct.tty* %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.tty*, %struct.tty** %6, align 8
  %29 = call i32 @tty_unlock(%struct.tty* %28)
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local %struct.ptmx_ioctl* @ptmx_knote_ioctl(%struct.knote*) #1

declare dso_local %struct.tty* @ptmx_knote_tty(%struct.knote*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @ptmx_kqops_common(%struct.knote*, %struct.ptmx_ioctl*, %struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
