; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyblock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64*, i32, i32, i32 }

@TS_TBLOCK = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@VSTOP = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttyblock(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load %struct.tty*, %struct.tty** %2, align 8
  %4 = call i32 @TTY_LOCK_OWNED(%struct.tty* %3)
  %5 = load %struct.tty*, %struct.tty** %2, align 8
  %6 = getelementptr inbounds %struct.tty, %struct.tty* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TS_TBLOCK, align 4
  %9 = call i32 @SET(i32 %7, i32 %8)
  %10 = load %struct.tty*, %struct.tty** %2, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IXOFF, align 4
  %14 = call i64 @ISSET(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %1
  %17 = load %struct.tty*, %struct.tty** %2, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @VSTOP, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @_POSIX_VDISABLE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %16
  %26 = load %struct.tty*, %struct.tty** %2, align 8
  %27 = getelementptr inbounds %struct.tty, %struct.tty* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @VSTOP, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tty*, %struct.tty** %2, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 2
  %34 = call i64 @putc(i64 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.tty*, %struct.tty** %2, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TS_TBLOCK, align 4
  %41 = call i32 @CLR(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %25, %16, %1
  %43 = load %struct.tty*, %struct.tty** %2, align 8
  %44 = call i32 @ttstart(%struct.tty* %43)
  ret void
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i64 @putc(i64, i32*) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @ttstart(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
