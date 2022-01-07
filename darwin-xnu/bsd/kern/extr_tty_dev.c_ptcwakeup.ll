; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_dev.c_ptcwakeup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_dev.c_ptcwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.ptmx_ioctl = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, i32)* @ptcwakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptcwakeup(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ptmx_ioctl*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tty*, %struct.tty** %3, align 8
  %7 = getelementptr inbounds %struct.tty, %struct.tty* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ptmx_ioctl* @pty_get_ioctl(i32 %8, i32 0, i32* null)
  store %struct.ptmx_ioctl* %9, %struct.ptmx_ioctl** %5, align 8
  %10 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %5, align 8
  %11 = icmp eq %struct.ptmx_ioctl* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %45

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @FREAD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %5, align 8
  %20 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %19, i32 0, i32 1
  %21 = call i32 @selwakeup(%struct.TYPE_2__* %20)
  %22 = load %struct.tty*, %struct.tty** %3, align 8
  %23 = call i32 @TSA_PTC_READ(%struct.tty* %22)
  %24 = call i32 @wakeup(i32 %23)
  %25 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %5, align 8
  %26 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @KNOTE(i32* %27, i32 1)
  br label %29

29:                                               ; preds = %18, %13
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @FWRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %5, align 8
  %36 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %35, i32 0, i32 0
  %37 = call i32 @selwakeup(%struct.TYPE_2__* %36)
  %38 = load %struct.tty*, %struct.tty** %3, align 8
  %39 = call i32 @TSA_PTC_WRITE(%struct.tty* %38)
  %40 = call i32 @wakeup(i32 %39)
  %41 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %5, align 8
  %42 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @KNOTE(i32* %43, i32 1)
  br label %45

45:                                               ; preds = %12, %34, %29
  ret void
}

declare dso_local %struct.ptmx_ioctl* @pty_get_ioctl(i32, i32, i32*) #1

declare dso_local i32 @selwakeup(%struct.TYPE_2__*) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @TSA_PTC_READ(%struct.tty*) #1

declare dso_local i32 @KNOTE(i32*, i32) #1

declare dso_local i32 @TSA_PTC_WRITE(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
