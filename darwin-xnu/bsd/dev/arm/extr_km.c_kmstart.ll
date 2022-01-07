; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_km.c_kmstart.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_km.c_kmstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.tty*)* }
%struct.tty = type { i32, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@TS_TIMEOUT = common dso_local global i32 0, align 4
@TS_BUSY = common dso_local global i32 0, align 4
@TS_TTSTOP = common dso_local global i32 0, align 4
@linesw = common dso_local global %struct.TYPE_4__* null, align 8
@hz = common dso_local global i32 0, align 4
@kmtimeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @kmstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmstart(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load %struct.tty*, %struct.tty** %2, align 8
  %4 = getelementptr inbounds %struct.tty, %struct.tty* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @TS_TIMEOUT, align 4
  %7 = load i32, i32* @TS_BUSY, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @TS_TTSTOP, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %5, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.tty*, %struct.tty** %2, align 8
  %16 = getelementptr inbounds %struct.tty, %struct.tty* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %42

21:                                               ; preds = %14
  %22 = load i32, i32* @TS_BUSY, align 4
  %23 = load %struct.tty*, %struct.tty** %2, align 8
  %24 = getelementptr inbounds %struct.tty, %struct.tty* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.tty*, %struct.tty** %2, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tty*, %struct.tty** %2, align 8
  %32 = getelementptr inbounds %struct.tty, %struct.tty* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load %struct.tty*, %struct.tty** %2, align 8
  %37 = call i32 @kmoutput(%struct.tty* %36)
  br label %41

38:                                               ; preds = %21
  %39 = load %struct.tty*, %struct.tty** %2, align 8
  %40 = call i32 @kmoutput(%struct.tty* %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %52

42:                                               ; preds = %20, %13
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @linesw, align 8
  %44 = load %struct.tty*, %struct.tty** %2, align 8
  %45 = getelementptr inbounds %struct.tty, %struct.tty* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.tty*)*, i32 (%struct.tty*)** %48, align 8
  %50 = load %struct.tty*, %struct.tty** %2, align 8
  %51 = call i32 %49(%struct.tty* %50)
  br label %52

52:                                               ; preds = %42, %41
  ret void
}

declare dso_local i32 @kmoutput(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
