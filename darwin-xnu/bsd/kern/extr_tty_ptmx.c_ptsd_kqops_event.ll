; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptsd_kqops_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptsd_kqops_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, %struct.tty* }
%struct.tty = type { i32 }

@NOTE_REVOKE = common dso_local global i64 0, align 8
@EV_EOF = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @ptsd_kqops_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptsd_kqops_event(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.knote*, %struct.knote** %3, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 1
  %10 = load %struct.tty*, %struct.tty** %9, align 8
  store %struct.tty* %10, %struct.tty** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @NOTE_REVOKE, align 8
  %13 = and i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* @NOTE_REVOKE, align 8
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.tty*, %struct.tty** %5, align 8
  %23 = call i32 @tty_lock(%struct.tty* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* @EV_EOF, align 4
  %29 = load i32, i32* @EV_ONESHOT, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.knote*, %struct.knote** %3, align 8
  %32 = getelementptr inbounds %struct.knote, %struct.knote* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  store i32 1, i32* %6, align 4
  br label %39

35:                                               ; preds = %24
  %36 = load %struct.knote*, %struct.knote** %3, align 8
  %37 = load %struct.tty*, %struct.tty** %5, align 8
  %38 = call i32 @ptsd_kqops_common(%struct.knote* %36, %struct.tty* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %27
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load %struct.tty*, %struct.tty** %5, align 8
  %44 = call i32 @tty_unlock(%struct.tty* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @ptsd_kqops_common(%struct.knote*, %struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
