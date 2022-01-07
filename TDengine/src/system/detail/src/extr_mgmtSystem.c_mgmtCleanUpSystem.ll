; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSystem.c_mgmtCleanUpSystem.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSystem.c_mgmtCleanUpSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tsModuleStatus = common dso_local global i32 0, align 4
@TSDB_MOD_MGMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mgmt is running, clean it up\00", align 1
@mgmtStatisticTimer = common dso_local global i32 0, align 4
@mgmtTmr = common dso_local global i32* null, align 8
@mgmtQhandle = common dso_local global i32* null, align 8
@mgmtTranQhandle = common dso_local global i32* null, align 8
@mgmtShellConns = common dso_local global i64 0, align 8
@mgmtDnodeConns = common dso_local global i64 0, align 8
@pShellConn = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"mgmt is cleaned up\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmtCleanUpSystem() #0 {
  %1 = load i32, i32* @tsModuleStatus, align 4
  %2 = load i32, i32* @TSDB_MOD_MGMT, align 4
  %3 = shl i32 1, %2
  %4 = and i32 %1, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %0
  %7 = call i32 @mTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @taosTmrStopA(i32* @mgmtStatisticTimer)
  %9 = call i32 (...) @sdbCleanUpPeers()
  %10 = call i32 (...) @mgmtCleanupBalance()
  %11 = call i32 (...) @mgmtCleanUpDnodeInt()
  %12 = call i32 (...) @mgmtCleanUpShell()
  %13 = call i32 (...) @mgmtCleanUpMeters()
  %14 = call i32 (...) @mgmtCleanUpVgroups()
  %15 = call i32 (...) @mgmtCleanUpDbs()
  %16 = call i32 (...) @mgmtCleanUpDnodes()
  %17 = call i32 (...) @mgmtCleanUpUsers()
  %18 = call i32 (...) @mgmtCleanUpAccts()
  %19 = load i32*, i32** @mgmtTmr, align 8
  %20 = call i32 @taosTmrCleanUp(i32* %19)
  %21 = load i32*, i32** @mgmtQhandle, align 8
  %22 = call i32 @taosCleanUpScheduler(i32* %21)
  %23 = load i32*, i32** @mgmtTranQhandle, align 8
  %24 = call i32 @taosCleanUpScheduler(i32* %23)
  br label %27

25:                                               ; preds = %0
  %26 = call i32 (...) @mgmtCleanUpRedirect()
  br label %27

27:                                               ; preds = %25, %6
  store i32* null, i32** @mgmtTmr, align 8
  store i32* null, i32** @mgmtQhandle, align 8
  store i64 0, i64* @mgmtShellConns, align 8
  store i64 0, i64* @mgmtDnodeConns, align 8
  %28 = load i32, i32* @TSDB_MOD_MGMT, align 4
  %29 = call i32 @tclearModuleStatus(i32 %28)
  store i32* null, i32** @pShellConn, align 8
  %30 = call i32 @mTrace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mTrace(i8*) #1

declare dso_local i32 @taosTmrStopA(i32*) #1

declare dso_local i32 @sdbCleanUpPeers(...) #1

declare dso_local i32 @mgmtCleanupBalance(...) #1

declare dso_local i32 @mgmtCleanUpDnodeInt(...) #1

declare dso_local i32 @mgmtCleanUpShell(...) #1

declare dso_local i32 @mgmtCleanUpMeters(...) #1

declare dso_local i32 @mgmtCleanUpVgroups(...) #1

declare dso_local i32 @mgmtCleanUpDbs(...) #1

declare dso_local i32 @mgmtCleanUpDnodes(...) #1

declare dso_local i32 @mgmtCleanUpUsers(...) #1

declare dso_local i32 @mgmtCleanUpAccts(...) #1

declare dso_local i32 @taosTmrCleanUp(i32*) #1

declare dso_local i32 @taosCleanUpScheduler(i32*) #1

declare dso_local i32 @mgmtCleanUpRedirect(...) #1

declare dso_local i32 @tclearModuleStatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
