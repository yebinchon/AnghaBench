; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_stategotoretrycb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_stategotoretrycb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@__dvd_executing = common dso_local global %struct.TYPE_2__* null, align 8
@__dvd_internalretries = common dso_local global i64 0, align 8
@__dvd_currcmd = common dso_local global i32 0, align 4
@__dvd_resetrequired = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__dvd_stategotoretrycb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dvd_stategotoretrycb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__dvd_executing, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 -1, i32* %7, align 4
  %8 = call i32 (...) @__dvd_statetimeout()
  br label %41

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__dvd_executing, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  %16 = call i32 @__dvd_stateerror(i32 19088743)
  br label %41

17:                                               ; preds = %9
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  store i64 0, i64* @__dvd_internalretries, align 8
  %21 = load i32, i32* @__dvd_currcmd, align 4
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @__dvd_currcmd, align 4
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @__dvd_currcmd, align 4
  %28 = icmp eq i32 %27, 13
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @__dvd_currcmd, align 4
  %31 = icmp eq i32 %30, 15
  br i1 %31, label %32, label %40

32:                                               ; preds = %29, %26, %23, %20
  store i32 1, i32* @__dvd_resetrequired, align 4
  %33 = call i64 @__dvd_checkcancel(i32 2)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %41

36:                                               ; preds = %32
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__dvd_executing, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 11, i32* %38, align 4
  %39 = call i32 (...) @__dvd_statemotorstopped()
  br label %40

40:                                               ; preds = %36, %29
  br label %41

41:                                               ; preds = %5, %13, %35, %40, %17
  ret void
}

declare dso_local i32 @__dvd_statetimeout(...) #1

declare dso_local i32 @__dvd_stateerror(i32) #1

declare dso_local i64 @__dvd_checkcancel(i32) #1

declare dso_local i32 @__dvd_statemotorstopped(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
