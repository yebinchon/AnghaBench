; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_dev.c_ptsstart.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_dev.c_ptsstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32 }
%struct.ptmx_ioctl = type { i32, i32 }

@TS_TTSTOP = common dso_local global i32 0, align 4
@PF_STOPPED = common dso_local global i32 0, align 4
@TIOCPKT_START = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @ptsstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptsstart(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.ptmx_ioctl*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = getelementptr inbounds %struct.tty, %struct.tty* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ptmx_ioctl* @pty_get_ioctl(i32 %6, i32 0, i32* null)
  store %struct.ptmx_ioctl* %7, %struct.ptmx_ioctl** %3, align 8
  %8 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %3, align 8
  %9 = icmp eq %struct.ptmx_ioctl* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.tty*, %struct.tty** %2, align 8
  %13 = getelementptr inbounds %struct.tty, %struct.tty* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TS_TTSTOP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %40

19:                                               ; preds = %11
  %20 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %3, align 8
  %21 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PF_STOPPED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load i32, i32* @PF_STOPPED, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %3, align 8
  %30 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @TIOCPKT_START, align 4
  %34 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %3, align 8
  %35 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %26, %19
  %37 = load %struct.tty*, %struct.tty** %2, align 8
  %38 = load i32, i32* @FREAD, align 4
  %39 = call i32 @ptcwakeup(%struct.tty* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %18, %10
  ret void
}

declare dso_local %struct.ptmx_ioctl* @pty_get_ioctl(i32, i32, i32*) #1

declare dso_local i32 @ptcwakeup(%struct.tty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
