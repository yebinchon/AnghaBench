; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsSetAllDebugFlag.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsSetAllDebugFlag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mdebugFlag = common dso_local global i64 0, align 8
@debugFlag = common dso_local global i64 0, align 8
@ddebugFlag = common dso_local global i64 0, align 8
@sdbDebugFlag = common dso_local global i64 0, align 8
@rpcDebugFlag = common dso_local global i64 0, align 8
@cdebugFlag = common dso_local global i64 0, align 8
@jnidebugFlag = common dso_local global i64 0, align 8
@uDebugFlag = common dso_local global i64 0, align 8
@httpDebugFlag = common dso_local global i64 0, align 8
@monitorDebugFlag = common dso_local global i64 0, align 8
@odbcdebugFlag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"all debug flag are set to %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsSetAllDebugFlag() #0 {
  %1 = load i64, i64* @mdebugFlag, align 8
  %2 = load i64, i64* @debugFlag, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i64, i64* @debugFlag, align 8
  store i64 %5, i64* @mdebugFlag, align 8
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i64, i64* @ddebugFlag, align 8
  %8 = load i64, i64* @debugFlag, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i64, i64* @debugFlag, align 8
  store i64 %11, i64* @ddebugFlag, align 8
  br label %12

12:                                               ; preds = %10, %6
  %13 = load i64, i64* @sdbDebugFlag, align 8
  %14 = load i64, i64* @debugFlag, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* @debugFlag, align 8
  store i64 %17, i64* @sdbDebugFlag, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i64, i64* @rpcDebugFlag, align 8
  %20 = load i64, i64* @debugFlag, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @debugFlag, align 8
  store i64 %23, i64* @rpcDebugFlag, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i64, i64* @cdebugFlag, align 8
  %26 = load i64, i64* @debugFlag, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @debugFlag, align 8
  store i64 %29, i64* @cdebugFlag, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i64, i64* @jnidebugFlag, align 8
  %32 = load i64, i64* @debugFlag, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @debugFlag, align 8
  store i64 %35, i64* @jnidebugFlag, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i64, i64* @uDebugFlag, align 8
  %38 = load i64, i64* @debugFlag, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @debugFlag, align 8
  store i64 %41, i64* @uDebugFlag, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i64, i64* @httpDebugFlag, align 8
  %44 = load i64, i64* @debugFlag, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @debugFlag, align 8
  store i64 %47, i64* @httpDebugFlag, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i64, i64* @monitorDebugFlag, align 8
  %50 = load i64, i64* @debugFlag, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* @debugFlag, align 8
  store i64 %53, i64* @monitorDebugFlag, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i64, i64* @odbcdebugFlag, align 8
  %56 = load i64, i64* @debugFlag, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* @debugFlag, align 8
  store i64 %59, i64* @odbcdebugFlag, align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i64, i64* @debugFlag, align 8
  %62 = call i32 @pPrint(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %61)
  ret void
}

declare dso_local i32 @pPrint(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
