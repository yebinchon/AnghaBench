; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_priv_proc_destructive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_priv_proc_destructive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@P_LNOATTACH = common dso_local global i32 0, align 4
@DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE = common dso_local global i32 0, align 4
@DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER = common dso_local global i32 0, align 4
@DTRACE_CRA_PROC_DESTRUCTIVE_CREDCHG = common dso_local global i32 0, align 4
@CPU_DTRACE_UPRIV = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_13__* null, align 8
@CPU = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @dtrace_priv_proc_destructive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_priv_proc_destructive(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = call %struct.TYPE_12__* (...) @current_proc()
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @P_LNOATTACH, align 4
  %13 = call i64 @ISSET(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %54

16:                                               ; preds = %1
  %17 = call i64 (...) @dtrace_is_restricted()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = call %struct.TYPE_12__* (...) @current_proc()
  %21 = call i32 @dtrace_can_attach_to_proc(%struct.TYPE_12__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %54

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = call i64 @dtrace_priv_proc_common_zone(%struct.TYPE_11__* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %54

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = call i64 @dtrace_priv_proc_common_user(%struct.TYPE_11__* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %54

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_CREDCHG, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = call i64 (...) @dtrace_priv_proc_common_nocd()
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %54

53:                                               ; preds = %49, %44
  store i32 1, i32* %2, align 4
  br label %64

54:                                               ; preds = %52, %43, %33, %23, %15
  %55 = load i32, i32* @CPU_DTRACE_UPRIV, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cpu_core, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** @CPU, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %55
  store i32 %63, i32* %61, align 4
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %54, %53
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local %struct.TYPE_12__* @current_proc(...) #1

declare dso_local i64 @dtrace_is_restricted(...) #1

declare dso_local i32 @dtrace_can_attach_to_proc(%struct.TYPE_12__*) #1

declare dso_local i64 @dtrace_priv_proc_common_zone(%struct.TYPE_11__*) #1

declare dso_local i64 @dtrace_priv_proc_common_user(%struct.TYPE_11__*) #1

declare dso_local i64 @dtrace_priv_proc_common_nocd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
