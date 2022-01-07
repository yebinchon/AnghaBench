; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_stateready.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_stateready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 (i32, %struct.TYPE_7__*)* }

@__dvd_executing = common dso_local global %struct.TYPE_7__* null, align 8
@__dvd_fatalerror = common dso_local global i64 0, align 8
@__dvd_dummycmdblk = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@__dvd_currcmd = common dso_local global i32 0, align 4
@__dvd_resumefromhere = common dso_local global i32 0, align 4
@__dvd_cancellasterror = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dvd_stateready() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = call i32 (...) @__dvd_checkwaitingqueue()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @__dvd_executing, align 8
  br label %72

5:                                                ; preds = %0
  %6 = call %struct.TYPE_7__* (...) @__dvd_popwaitingqueue()
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** @__dvd_executing, align 8
  %7 = load i64, i64* @__dvd_fatalerror, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__dvd_executing, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__dvd_executing, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* @__dvd_dummycmdblk, %struct.TYPE_7__** @__dvd_executing, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %14, align 8
  %16 = icmp ne i32 (i32, %struct.TYPE_7__*)* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %22 = call i32 %20(i32 -1, %struct.TYPE_7__* %21)
  br label %23

23:                                               ; preds = %17, %9
  call void @__dvd_stateready()
  br label %72

24:                                               ; preds = %5
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__dvd_executing, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @__dvd_currcmd, align 4
  %28 = load i32, i32* @__dvd_resumefromhere, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %24
  %31 = load i32, i32* @__dvd_resumefromhere, align 4
  %32 = icmp sle i32 %31, 7
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  %34 = load i32, i32* @__dvd_resumefromhere, align 4
  switch i32 %34, label %64 [
    i32 1, label %35
    i32 2, label %39
    i32 3, label %43
    i32 4, label %47
    i32 5, label %51
    i32 6, label %56
    i32 7, label %60
  ]

35:                                               ; preds = %33
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__dvd_executing, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 6, i32* %37, align 8
  %38 = call i32 (...) @__dvd_statemotorstopped()
  br label %65

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__dvd_executing, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 11, i32* %41, align 8
  %42 = call i32 (...) @__dvd_statemotorstopped()
  br label %65

43:                                               ; preds = %33
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__dvd_executing, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 4, i32* %45, align 8
  %46 = call i32 (...) @__dvd_statemotorstopped()
  br label %65

47:                                               ; preds = %33
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__dvd_executing, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 5, i32* %49, align 8
  %50 = call i32 (...) @__dvd_statemotorstopped()
  br label %65

51:                                               ; preds = %33
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__dvd_executing, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  %54 = load i32, i32* @__dvd_cancellasterror, align 4
  %55 = call i32 @__dvd_stateerror(i32 %54)
  br label %65

56:                                               ; preds = %33
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__dvd_executing, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 3, i32* %58, align 8
  %59 = call i32 (...) @__dvd_statecoverclosed()
  br label %65

60:                                               ; preds = %33
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__dvd_executing, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 7, i32* %62, align 8
  %63 = call i32 (...) @__dvd_statemotorstopped()
  br label %65

64:                                               ; preds = %33
  br label %65

65:                                               ; preds = %64, %60, %56, %51, %47, %43, %39, %35
  br label %66

66:                                               ; preds = %65, %30
  store i32 0, i32* @__dvd_resumefromhere, align 4
  br label %72

67:                                               ; preds = %24
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__dvd_executing, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__dvd_executing, align 8
  %71 = call i32 @__dvd_statebusy(%struct.TYPE_7__* %70)
  br label %72

72:                                               ; preds = %67, %66, %23, %4
  ret void
}

declare dso_local i32 @__dvd_checkwaitingqueue(...) #1

declare dso_local %struct.TYPE_7__* @__dvd_popwaitingqueue(...) #1

declare dso_local i32 @__dvd_statemotorstopped(...) #1

declare dso_local i32 @__dvd_stateerror(i32) #1

declare dso_local i32 @__dvd_statecoverclosed(...) #1

declare dso_local i32 @__dvd_statebusy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
