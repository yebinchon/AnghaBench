; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptmx_kqops_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptmx_kqops_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }
%struct.ptmx_ioctl = type { i32 }
%struct.tty = type { i32 }

@NOTE_REVOKE = common dso_local global i64 0, align 8
@EV_EOF = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @ptmx_kqops_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptmx_kqops_event(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ptmx_ioctl*, align 8
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.knote*, %struct.knote** %3, align 8
  %10 = call %struct.ptmx_ioctl* @ptmx_knote_ioctl(%struct.knote* %9)
  store %struct.ptmx_ioctl* %10, %struct.ptmx_ioctl** %5, align 8
  %11 = load %struct.knote*, %struct.knote** %3, align 8
  %12 = call %struct.tty* @ptmx_knote_tty(%struct.knote* %11)
  store %struct.tty* %12, %struct.tty** %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @NOTE_REVOKE, align 8
  %15 = and i64 %13, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i64, i64* @NOTE_REVOKE, align 8
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load %struct.tty*, %struct.tty** %6, align 8
  %25 = call i32 @tty_lock(%struct.tty* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* @EV_EOF, align 4
  %31 = load i32, i32* @EV_ONESHOT, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.knote*, %struct.knote** %3, align 8
  %34 = getelementptr inbounds %struct.knote, %struct.knote* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  store i32 1, i32* %7, align 4
  br label %42

37:                                               ; preds = %26
  %38 = load %struct.knote*, %struct.knote** %3, align 8
  %39 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %5, align 8
  %40 = load %struct.tty*, %struct.tty** %6, align 8
  %41 = call i32 @ptmx_kqops_common(%struct.knote* %38, %struct.ptmx_ioctl* %39, %struct.tty* %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %37, %29
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load %struct.tty*, %struct.tty** %6, align 8
  %47 = call i32 @tty_unlock(%struct.tty* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %7, align 4
  ret i32 %49
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
