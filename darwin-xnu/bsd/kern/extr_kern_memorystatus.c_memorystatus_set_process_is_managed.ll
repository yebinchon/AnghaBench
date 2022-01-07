; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_set_process_is_managed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_set_process_is_managed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@P_MEMSTAT_MANAGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @memorystatus_set_process_is_managed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_set_process_is_managed(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %3, align 4
  br label %40

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call %struct.TYPE_4__* @proc_find(i64 %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @ESRCH, align 4
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %11
  %19 = call i32 (...) @proc_list_lock()
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @TRUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* @P_MEMSTAT_MANAGED, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %36

29:                                               ; preds = %18
  %30 = load i32, i32* @P_MEMSTAT_MANAGED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %29, %23
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = call i32 @proc_rele_locked(%struct.TYPE_4__* %37)
  %39 = call i32 (...) @proc_list_unlock()
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %16, %9
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_4__* @proc_find(i64) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @proc_rele_locked(%struct.TYPE_4__*) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
