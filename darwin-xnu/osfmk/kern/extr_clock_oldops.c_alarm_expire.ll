; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_alarm_expire.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_alarm_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i8**)* }
%struct.TYPE_8__ = type { i8*, i64, %struct.TYPE_8__*, %struct.TYPE_8__* }

@clock_list = common dso_local global %struct.TYPE_7__* null, align 8
@SYSTEM_CLOCK = common dso_local global i64 0, align 8
@alrmlist = common dso_local global i32 0, align 4
@ALARM_SLEEP = common dso_local global i64 0, align 8
@ALARM_DONE = common dso_local global i8* null, align 8
@ALARM_CLOCK = common dso_local global i64 0, align 8
@alrmdone = common dso_local global %struct.TYPE_8__* null, align 8
@alarm_done_call = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @alarm_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alarm_expire() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_list, align 8
  %8 = load i64, i64* @SYSTEM_CLOCK, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i64 %8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %1, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32 (i8**)*, i32 (i8**)** %13, align 8
  %15 = call i32 %14(i8** %4)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @LOCK_ALARM(i32 %16)
  store %struct.TYPE_8__* bitcast (i32* @alrmlist to %struct.TYPE_8__*), %struct.TYPE_8__** %2, align 8
  br label %18

18:                                               ; preds = %91, %0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %3, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %92

23:                                               ; preds = %18
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i8** %25, i8*** %5, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = call i64 @CMP_MACH_TIMESPEC(i8** %26, i8** %4)
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %92

30:                                               ; preds = %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %35, align 8
  %36 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %42, align 8
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ALARM_SLEEP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %51, align 8
  %52 = load i8*, i8** @ALARM_DONE, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = ptrtoint %struct.TYPE_8__* %59 to i32
  %61 = call i32 @thread_wakeup(i32 %60)
  br label %91

62:                                               ; preds = %43
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ALARM_CLOCK, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @alrmdone, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %72, align 8
  %73 = icmp ne %struct.TYPE_8__* %70, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @alrmdone, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %77, align 8
  br label %80

78:                                               ; preds = %62
  %79 = call i32 @thread_call_enter(i32* @alarm_done_call)
  br label %80

80:                                               ; preds = %78, %74
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store %struct.TYPE_8__* bitcast (%struct.TYPE_8__** @alrmdone to %struct.TYPE_8__*), %struct.TYPE_8__** %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** @alrmdone, align 8
  %84 = load i8*, i8** @ALARM_DONE, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %80, %49
  br label %18

92:                                               ; preds = %29, %18
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8**, i8*** %5, align 8
  %97 = call i32 @set_alarm(i8** %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @UNLOCK_ALARM(i32 %99)
  ret void
}

declare dso_local i32 @LOCK_ALARM(i32) #1

declare dso_local i64 @CMP_MACH_TIMESPEC(i8**, i8**) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_call_enter(i32*) #1

declare dso_local i32 @set_alarm(i8**) #1

declare dso_local i32 @UNLOCK_ALARM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
