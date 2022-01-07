; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmCPU.c_pmKextRegister.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmCPU.c_pmKextRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 (...)* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PM_DISPATCH_VERSION = common dso_local global i64 0, align 8
@setPop = common dso_local global i32 0, align 4
@pmReSyncDeadlines = common dso_local global i32 0, align 4
@pmInitComplete = common dso_local global i32 0, align 4
@pmGetLogicalCPU = common dso_local global i32 0, align 4
@pmGetCore = common dso_local global i32 0, align 4
@pmGetDie = common dso_local global i32 0, align 4
@pmGetPackage = common dso_local global i32 0, align 4
@pmGetMyLogicalCPU = common dso_local global i32 0, align 4
@pmGetMyCore = common dso_local global i32 0, align 4
@pmGetMyDie = common dso_local global i32 0, align 4
@pmGetMyPackage = common dso_local global i32 0, align 4
@pmGetPkgRoot = common dso_local global i32 0, align 4
@pmLockCPUTopology = common dso_local global i32 0, align 4
@pmCPUGetHibernate = common dso_local global i32 0, align 4
@pmLCPUtoProcessor = common dso_local global i32 0, align 4
@thread_bind = common dso_local global i32 0, align 4
@pmGetSavedRunCount = common dso_local global i32 0, align 4
@pmGetNanotimeInfo = common dso_local global i32 0, align 4
@pmThreadGetUrgency = common dso_local global i32 0, align 4
@rtc_clock_adjust = common dso_local global i32 0, align 4
@pmTimerQueueMigrate = common dso_local global i32 0, align 4
@topoParms = common dso_local global i32 0, align 4
@pmSendIPI = common dso_local global i32 0, align 4
@lapic_is_interrupt_pending = common dso_local global i32 0, align 4
@lapic_is_interrupting = common dso_local global i32 0, align 4
@lapic_interrupt_counts = common dso_local global i32 0, align 4
@lapic_disable_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Version mis-match between Kernel and CPU PM\00", align 1
@pmDispatch = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [86 x i8] c"Attempt to re-register power management interface--AICPM present in xcpm mode? %p->%p\00", align 1
@earlyTopology = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmKextRegister(i64 %0, %struct.TYPE_6__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %94

9:                                                ; preds = %3
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @PM_DISPATCH_VERSION, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %94

13:                                               ; preds = %9
  %14 = load i32, i32* @setPop, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 26
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @pmReSyncDeadlines, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 25
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @pmInitComplete, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 24
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @pmGetLogicalCPU, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 23
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @pmGetCore, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 22
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @pmGetDie, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 21
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @pmGetPackage, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 20
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @pmGetMyLogicalCPU, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 19
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @pmGetMyCore, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 18
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @pmGetMyDie, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 17
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @pmGetMyPackage, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 16
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @pmGetPkgRoot, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 15
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @pmLockCPUTopology, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 14
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @pmCPUGetHibernate, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 13
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @pmLCPUtoProcessor, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 12
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @thread_bind, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 11
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @pmGetSavedRunCount, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @pmGetNanotimeInfo, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @pmThreadGetUrgency, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @rtc_clock_adjust, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @pmTimerQueueMigrate, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 5
  store i32* @topoParms, i32** %78, align 8
  %79 = load i32, i32* @pmSendIPI, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @lapic_is_interrupt_pending, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @lapic_is_interrupting, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @lapic_interrupt_counts, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @lapic_disable_timer, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %96

94:                                               ; preds = %9, %3
  %95 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %13
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = icmp ne %struct.TYPE_6__* %97, null
  br i1 %98, label %99, label %133

99:                                               ; preds = %96
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmDispatch, align 8
  %101 = icmp ne %struct.TYPE_6__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmDispatch, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %103, %struct.TYPE_6__* %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %107, %struct.TYPE_6__** @pmDispatch, align 8
  %108 = load i64, i64* @earlyTopology, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmDispatch, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32 (...)*, i32 (...)** %112, align 8
  %114 = icmp ne i32 (...)* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmDispatch, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32 (...)*, i32 (...)** %117, align 8
  %119 = call i32 (...) %118()
  %120 = load i64, i64* @FALSE, align 8
  store i64 %120, i64* @earlyTopology, align 8
  br label %121

121:                                              ; preds = %115, %110, %106
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmDispatch, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmDispatch, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = ptrtoint i32* %129 to i32
  %131 = call i32 @lapic_set_pm_func(i32 %130)
  br label %132

132:                                              ; preds = %126, %121
  br label %133

133:                                              ; preds = %132, %96
  ret void
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @lapic_set_pm_func(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
