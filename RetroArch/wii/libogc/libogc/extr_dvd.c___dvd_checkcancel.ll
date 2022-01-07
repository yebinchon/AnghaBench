; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_checkcancel.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_checkcancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 (i32, %struct.TYPE_6__*)* }

@__dvd_canceling = common dso_local global i64 0, align 8
@__dvd_resumefromhere = common dso_local global i32 0, align 4
@__dvd_executing = common dso_local global %struct.TYPE_6__* null, align 8
@__dvd_dummycmdblk = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__dvd_checkcancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dvd_checkcancel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @__dvd_canceling, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* @__dvd_resumefromhere, align 4
  store i64 0, i64* @__dvd_canceling, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @__dvd_executing, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* @__dvd_dummycmdblk, %struct.TYPE_6__** @__dvd_executing, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 10, i32* %11, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %13, align 8
  %15 = icmp ne i32 (i32, %struct.TYPE_6__*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = call i32 %19(i32 -3, %struct.TYPE_6__* %20)
  br label %22

22:                                               ; preds = %16, %7
  br i1 true, label %23, label %26

23:                                               ; preds = %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = call i32 @__dvd_cancelcallback(i32 0, %struct.TYPE_6__* %24)
  br label %26

26:                                               ; preds = %23, %22
  %27 = call i32 (...) @__dvd_stateready()
  store i32 1, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @__dvd_cancelcallback(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @__dvd_stateready(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
