; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_filt_tty_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_filt_tty_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32 }
%struct.tty = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TS_ZOMBIE = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@TS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.tty*)* @filt_tty_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_tty_common(%struct.knote* %0, %struct.tty* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.tty* %1, %struct.tty** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.tty*, %struct.tty** %5, align 8
  %8 = call i32 @TTY_LOCK_OWNED(%struct.tty* %7)
  %9 = load %struct.tty*, %struct.tty** %5, align 8
  %10 = getelementptr inbounds %struct.tty, %struct.tty* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TS_ZOMBIE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @EV_EOF, align 4
  %17 = load %struct.knote*, %struct.knote** %4, align 8
  %18 = getelementptr inbounds %struct.knote, %struct.knote* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  store i32 1, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.knote*, %struct.knote** %4, align 8
  %23 = call i32 @knote_get_seltype(%struct.knote* %22)
  switch i32 %23, label %53 [
    i32 129, label %24
    i32 128, label %27
  ]

24:                                               ; preds = %21
  %25 = load %struct.tty*, %struct.tty** %5, align 8
  %26 = call i32 @ttnread(%struct.tty* %25)
  store i32 %26, i32* %6, align 4
  br label %53

27:                                               ; preds = %21
  %28 = load %struct.tty*, %struct.tty** %5, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tty*, %struct.tty** %5, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %31, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %27
  %37 = load %struct.tty*, %struct.tty** %5, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TS_CONNECTED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.tty*, %struct.tty** %5, align 8
  %45 = getelementptr inbounds %struct.tty, %struct.tty* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tty*, %struct.tty** %5, align 8
  %48 = getelementptr inbounds %struct.tty, %struct.tty* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %46, %50
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %43, %36, %27
  br label %53

53:                                               ; preds = %21, %52, %24
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.knote*, %struct.knote** %4, align 8
  %56 = getelementptr inbounds %struct.knote, %struct.knote* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i32 @knote_get_seltype(%struct.knote*) #1

declare dso_local i32 @ttnread(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
