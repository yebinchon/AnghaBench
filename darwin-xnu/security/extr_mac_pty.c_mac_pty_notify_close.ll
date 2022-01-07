; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_pty.c_mac_pty_notify_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_pty.c_mac_pty_notify_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.label = type { i32 }

@pty_notify_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_pty_notify_close(i32 %0, %struct.tty* %1, i32 %2, %struct.label* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.label*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.tty* %1, %struct.tty** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.label* %3, %struct.label** %8, align 8
  %9 = load i32, i32* @pty_notify_close, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.tty*, %struct.tty** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.label*, %struct.label** %8, align 8
  %14 = call i32 @MAC_PERFORM(i32 %9, i32 %10, %struct.tty* %11, i32 %12, %struct.label* %13)
  ret void
}

declare dso_local i32 @MAC_PERFORM(i32, i32, %struct.tty*, i32, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
