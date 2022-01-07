; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_setpidex.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_setpidex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.proc = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@KDBG_PIDEXCLUDE = common dso_local global i32 0, align 4
@kd_ctrl_page = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@KDBG_PIDCHECK = common dso_local global i32 0, align 4
@SLOW_CHECKS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdbg_setpidex(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* %3, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = call %struct.proc* @proc_find(i64 %17)
  store %struct.proc* %18, %struct.proc** %6, align 8
  %19 = icmp eq %struct.proc* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @ESRCH, align 4
  store i32 %21, i32* %5, align 4
  br label %44

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i32, i32* @KDBG_PIDEXCLUDE, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %29 = load i32, i32* @KDBG_PIDCHECK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %33 = load i32, i32* @SLOW_CHECKS, align 4
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32 @kdbg_set_flags(i32 %33, i32 0, i32 %34)
  %36 = load %struct.proc*, %struct.proc** %6, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %41

38:                                               ; preds = %22
  %39 = load %struct.proc*, %struct.proc** %6, align 8
  %40 = getelementptr inbounds %struct.proc, %struct.proc* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %25
  %42 = load %struct.proc*, %struct.proc** %6, align 8
  %43 = call i32 @proc_rele(%struct.proc* %42)
  br label %44

44:                                               ; preds = %41, %20
  br label %47

45:                                               ; preds = %1
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.proc* @proc_find(i64) #1

declare dso_local i32 @kdbg_set_flags(i32, i32, i32) #1

declare dso_local i32 @proc_rele(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
