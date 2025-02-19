; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyopen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i32 }

@TS_ISOPEN = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TS_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttyopen(i32 %0, %struct.tty* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.tty* %1, %struct.tty** %4, align 8
  %5 = load %struct.tty*, %struct.tty** %4, align 8
  %6 = call i32 @TTY_LOCK_OWNED(%struct.tty* %5)
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.tty*, %struct.tty** %4, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load %struct.tty*, %struct.tty** %4, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TS_ISOPEN, align 4
  %14 = call i64 @ISSET(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %2
  %17 = load %struct.tty*, %struct.tty** %4, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TS_ISOPEN, align 4
  %21 = call i32 @SET(i32 %19, i32 %20)
  %22 = load %struct.tty*, %struct.tty** %4, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CLOCAL, align 4
  %26 = call i64 @ISSET(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load %struct.tty*, %struct.tty** %4, align 8
  %30 = getelementptr inbounds %struct.tty, %struct.tty* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TS_CONNECTED, align 4
  %33 = call i32 @SET(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %16
  %35 = load %struct.tty*, %struct.tty** %4, align 8
  %36 = getelementptr inbounds %struct.tty, %struct.tty* %35, i32 0, i32 0
  %37 = call i32 @bzero(i32* %36, i32 4)
  br label %38

38:                                               ; preds = %34, %2
  ret i32 0
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
