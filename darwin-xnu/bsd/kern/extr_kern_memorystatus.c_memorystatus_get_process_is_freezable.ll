; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_get_process_is_freezable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_get_process_is_freezable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@PROC_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@P_MEMSTAT_FREEZE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*)* @memorystatus_get_process_is_freezable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_get_process_is_freezable(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PROC_NULL, align 8
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %41

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call %struct.TYPE_7__* @proc_find(i64 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ESRCH, align 4
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %12
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = call %struct.TYPE_7__* (...) @current_proc()
  %22 = icmp ne %struct.TYPE_7__* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = call i32 @proc_rele(%struct.TYPE_7__* %24)
  %26 = load i32, i32* @EPERM, align 4
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %19
  %28 = call i32 (...) @proc_list_lock()
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @P_MEMSTAT_FREEZE_DISABLED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = call i32 @proc_rele_locked(%struct.TYPE_7__* %38)
  %40 = call i32 (...) @proc_list_unlock()
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %27, %23, %17, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.TYPE_7__* @proc_find(i64) #1

declare dso_local %struct.TYPE_7__* @current_proc(...) #1

declare dso_local i32 @proc_rele(%struct.TYPE_7__*) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @proc_rele_locked(%struct.TYPE_7__*) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
