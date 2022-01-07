; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_statecoverclosed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_statecoverclosed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, %struct.TYPE_5__*)* }

@__dvd_currcmd = common dso_local global i32 0, align 4
@__dvd_executing = common dso_local global %struct.TYPE_5__* null, align 8
@__dvd_dummycmdblk = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@__dvd_extensionsenabled = common dso_local global i32 0, align 4
@__dvd_statecoverclosed_spinupcb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dvd_statecoverclosed() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load i32, i32* @__dvd_currcmd, align 4
  %3 = icmp eq i32 %2, 4
  br i1 %3, label %16, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @__dvd_currcmd, align 4
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @__dvd_currcmd, align 4
  %9 = icmp eq i32 %8, 13
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @__dvd_currcmd, align 4
  %12 = icmp eq i32 %11, 15
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @__dvd_currcmd, align 4
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %16, label %31

16:                                               ; preds = %13, %10, %7, %4, %0
  %17 = call i32 (...) @__dvd_clearwaitingqueue()
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__dvd_executing, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* @__dvd_dummycmdblk, %struct.TYPE_5__** @__dvd_executing, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.TYPE_5__*)** %20, align 8
  %22 = icmp ne i32 (i32, %struct.TYPE_5__*)* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.TYPE_5__*)** %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %28 = call i32 %26(i32 -4, %struct.TYPE_5__* %27)
  br label %29

29:                                               ; preds = %23, %16
  %30 = call i32 (...) @__dvd_stateready()
  br label %35

31:                                               ; preds = %13
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* @__dvd_extensionsenabled, align 4
  %33 = load i32, i32* @__dvd_statecoverclosed_spinupcb, align 4
  %34 = call i32 @DVD_LowSpinUpDrive(i32 %33)
  br label %35

35:                                               ; preds = %31, %29
  ret void
}

declare dso_local i32 @__dvd_clearwaitingqueue(...) #1

declare dso_local i32 @__dvd_stateready(...) #1

declare dso_local i32 @DVD_LowSpinUpDrive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
