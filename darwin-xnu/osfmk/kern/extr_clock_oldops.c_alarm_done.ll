; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_alarm_done.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_alarm_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_4__* }

@alrmdone = common dso_local global %struct.TYPE_4__* null, align 8
@ALARM_DONE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_ABORTED = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@ALARM_FREE = common dso_local global i64 0, align 8
@alrmfree = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"clock_alarm_deliver\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @alarm_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alarm_done() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @LOCK_ALARM(i32 %4)
  br label %6

6:                                                ; preds = %69, %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @alrmdone, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %1, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %70

9:                                                ; preds = %6
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** @alrmdone, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @alrmdone, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  store %struct.TYPE_4__* bitcast (%struct.TYPE_4__** @alrmdone to %struct.TYPE_4__*), %struct.TYPE_4__** %16, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @UNLOCK_ALARM(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ALARM_DONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @KERN_SUCCESS, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @KERN_ABORTED, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %2, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IP_NULL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %29
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @IP_VALID(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @clock_alarm_reply(i64 %45, i32 %48, i32 %49, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %42, %36
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @LOCK_ALARM(i32 %58)
  %60 = load i64, i64* @ALARM_FREE, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @alrmfree, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** @alrmfree, align 8
  br label %69

67:                                               ; preds = %29
  %68 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %57
  br label %6

70:                                               ; preds = %6
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @UNLOCK_ALARM(i32 %71)
  ret void
}

declare dso_local i32 @LOCK_ALARM(i32) #1

declare dso_local i32 @UNLOCK_ALARM(i32) #1

declare dso_local i64 @IP_VALID(i64) #1

declare dso_local i32 @clock_alarm_reply(i64, i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
