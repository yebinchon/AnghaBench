; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttwakeup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TS_ASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttwakeup(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load %struct.tty*, %struct.tty** %2, align 8
  %4 = call i32 @TTY_LOCK_OWNED(%struct.tty* %3)
  %5 = load %struct.tty*, %struct.tty** %2, align 8
  %6 = getelementptr inbounds %struct.tty, %struct.tty* %5, i32 0, i32 1
  %7 = call i32 @selwakeup(%struct.TYPE_2__* %6)
  %8 = load %struct.tty*, %struct.tty** %2, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @KNOTE(i32* %10, i32 1)
  %12 = load %struct.tty*, %struct.tty** %2, align 8
  %13 = getelementptr inbounds %struct.tty, %struct.tty* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TS_ASYNC, align 4
  %16 = call i64 @ISSET(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.tty*, %struct.tty** %2, align 8
  %20 = call i32 @tty_unlock(%struct.tty* %19)
  %21 = load %struct.tty*, %struct.tty** %2, align 8
  %22 = load i32, i32* @SIGIO, align 4
  %23 = call i32 @tty_pgsignal(%struct.tty* %21, i32 %22, i32 1)
  %24 = load %struct.tty*, %struct.tty** %2, align 8
  %25 = call i32 @tty_lock(%struct.tty* %24)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.tty*, %struct.tty** %2, align 8
  %28 = call i32 @TSA_HUP_OR_INPUT(%struct.tty* %27)
  %29 = call i32 @wakeup(i32 %28)
  ret void
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i32 @selwakeup(%struct.TYPE_2__*) #1

declare dso_local i32 @KNOTE(i32*, i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @tty_pgsignal(%struct.tty*, i32, i32) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @TSA_HUP_OR_INPUT(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
