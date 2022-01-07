; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_km.c_kmread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_km.c_kmread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64 }
%struct.TYPE_2__ = type { i32 (%struct.tty*, %struct.uio*, i32)* }
%struct.uio = type { i32 }

@km_tty = common dso_local global %struct.tty** null, align 8
@linesw = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kmread(i32 %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tty**, %struct.tty*** @km_tty, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @minor(i32 %10)
  %12 = getelementptr inbounds %struct.tty*, %struct.tty** %9, i64 %11
  %13 = load %struct.tty*, %struct.tty** %12, align 8
  store %struct.tty* %13, %struct.tty** %8, align 8
  %14 = load %struct.tty*, %struct.tty** %8, align 8
  %15 = call i32 @tty_lock(%struct.tty* %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @linesw, align 8
  %17 = load %struct.tty*, %struct.tty** %8, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.tty*, %struct.uio*, i32)*, i32 (%struct.tty*, %struct.uio*, i32)** %21, align 8
  %23 = load %struct.tty*, %struct.tty** %8, align 8
  %24 = load %struct.uio*, %struct.uio** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 %22(%struct.tty* %23, %struct.uio* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.tty*, %struct.tty** %8, align 8
  %28 = call i32 @tty_unlock(%struct.tty* %27)
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i64 @minor(i32) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
