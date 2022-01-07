; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_nb_io_unix.c_nb_set_nonblocking_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_nb_io_unix.c_nb_set_nonblocking_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32*, i32 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nb_set_nonblocking_input(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.termios, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @STDIN_FILENO, align 4
  %5 = call i32 @tcgetattr(i32 %4, %struct.termios* %3)
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load i32, i32* @ICANON, align 4
  %10 = xor i32 %9, -1
  %11 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %10
  store i32 %13, i32* %11, align 8
  %14 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @VMIN, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 1, i32* %17, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @ICANON, align 4
  %20 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %18, %8
  %24 = load i32, i32* @STDIN_FILENO, align 4
  %25 = load i32, i32* @TCSANOW, align 4
  %26 = call i32 @tcsetattr(i32 %24, i32 %25, %struct.termios* %3)
  ret void
}

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
