; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_priv_proc_control.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_priv_proc_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@P_LNOATTACH = common dso_local global i32 0, align 4
@DTRACE_CRA_PROC_CONTROL = common dso_local global i32 0, align 4
@CPU_DTRACE_UPRIV = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_13__* null, align 8
@CPU = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @dtrace_priv_proc_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_priv_proc_control(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %4 = call %struct.TYPE_12__* (...) @current_proc()
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @P_LNOATTACH, align 4
  %8 = call i64 @ISSET(i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %41

11:                                               ; preds = %1
  %12 = call i64 (...) @dtrace_is_restricted()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = call %struct.TYPE_12__* (...) @current_proc()
  %16 = call i32 @dtrace_can_attach_to_proc(%struct.TYPE_12__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %41

19:                                               ; preds = %14, %11
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DTRACE_CRA_PROC_CONTROL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %51

28:                                               ; preds = %19
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = call i64 @dtrace_priv_proc_common_zone(%struct.TYPE_11__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = call i64 @dtrace_priv_proc_common_user(%struct.TYPE_11__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = call i64 (...) @dtrace_priv_proc_common_nocd()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %51

40:                                               ; preds = %36, %32, %28
  br label %41

41:                                               ; preds = %40, %18, %10
  %42 = load i32, i32* @CPU_DTRACE_UPRIV, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cpu_core, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** @CPU, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %42
  store i32 %50, i32* %48, align 4
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %41, %39, %27
  %52 = load i32, i32* %2, align 4
  ret i32 %52
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
