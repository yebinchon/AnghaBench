; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptsd_kqops_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptsd_kqops_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i64 }
%struct.tty = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@TS_CONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"ptsd kevent: unexpected filter: %d, kn = %p, tty = %p\00", align 1
@TS_ZOMBIE = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.tty*)* @ptsd_kqops_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptsd_kqops_common(%struct.knote* %0, %struct.tty* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.tty* %1, %struct.tty** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.tty*, %struct.tty** %4, align 8
  %7 = call i32 @TTY_LOCK_OWNED(%struct.tty* %6)
  %8 = load %struct.knote*, %struct.knote** %3, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %51 [
    i32 129, label %11
    i32 128, label %22
  ]

11:                                               ; preds = %2
  %12 = load %struct.tty*, %struct.tty** %4, align 8
  %13 = call i64 @ttnread(%struct.tty* %12)
  %14 = load %struct.knote*, %struct.knote** %3, align 8
  %15 = getelementptr inbounds %struct.knote, %struct.knote* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load %struct.knote*, %struct.knote** %3, align 8
  %17 = getelementptr inbounds %struct.knote, %struct.knote* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %11
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.tty*, %struct.tty** %4, align 8
  %24 = getelementptr inbounds %struct.tty, %struct.tty* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.tty*, %struct.tty** %4, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %22
  %32 = load %struct.tty*, %struct.tty** %4, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TS_CONNECTED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load %struct.tty*, %struct.tty** %4, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tty*, %struct.tty** %4, align 8
  %44 = getelementptr inbounds %struct.tty, %struct.tty* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %42, %46
  %48 = load %struct.knote*, %struct.knote** %3, align 8
  %49 = getelementptr inbounds %struct.knote, %struct.knote* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %38, %31, %22
  br label %58

51:                                               ; preds = %2
  %52 = load %struct.knote*, %struct.knote** %3, align 8
  %53 = getelementptr inbounds %struct.knote, %struct.knote* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.knote*, %struct.knote** %3, align 8
  %56 = load %struct.tty*, %struct.tty** %4, align 8
  %57 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %54, %struct.knote* %55, %struct.tty* %56)
  br label %58

58:                                               ; preds = %51, %50, %21
  %59 = load %struct.tty*, %struct.tty** %4, align 8
  %60 = getelementptr inbounds %struct.tty, %struct.tty* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TS_ZOMBIE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @EV_EOF, align 4
  %67 = load %struct.knote*, %struct.knote** %3, align 8
  %68 = getelementptr inbounds %struct.knote, %struct.knote* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  store i32 1, i32* %5, align 4
  br label %71

71:                                               ; preds = %65, %58
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i64 @ttnread(%struct.tty*) #1

declare dso_local i32 @panic(i8*, i32, %struct.knote*, %struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
