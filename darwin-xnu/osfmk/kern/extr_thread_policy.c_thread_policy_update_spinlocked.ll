; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_policy_update_spinlocked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_policy_update_spinlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@IMP_UPDATE = common dso_local global i32 0, align 4
@TASK_POLICY_THREAD = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @thread_policy_update_spinlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_policy_update_spinlocked(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @KDEBUG_TRACE, align 4
  %8 = load i32, i32* @IMP_UPDATE, align 4
  %9 = load i32, i32* @TASK_POLICY_THREAD, align 4
  %10 = call i32 @IMPORTANCE_CODE(i32 %8, i32 %9)
  %11 = load i32, i32* @DBG_FUNC_START, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = call i32 @thread_tid(%struct.TYPE_7__* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = call i32 @theffective_0(%struct.TYPE_7__* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i32 @theffective_1(%struct.TYPE_7__* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %7, i32 %12, i32 %14, i32 %16, i32 %18, i32 %21, i32 0)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @thread_policy_update_internal_spinlocked(%struct.TYPE_7__* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @KDEBUG_TRACE, align 4
  %28 = load i32, i32* @IMP_UPDATE, align 4
  %29 = load i32, i32* @TASK_POLICY_THREAD, align 4
  %30 = call i32 @IMPORTANCE_CODE(i32 %28, i32 %29)
  %31 = load i32, i32* @DBG_FUNC_END, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = call i32 @thread_tid(%struct.TYPE_7__* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call i32 @theffective_0(%struct.TYPE_7__* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = call i32 @theffective_1(%struct.TYPE_7__* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %27, i32 %32, i32 %34, i32 %36, i32 %38, i32 %41, i32 0)
  ret void
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IMPORTANCE_CODE(i32, i32) #1

declare dso_local i32 @thread_tid(%struct.TYPE_7__*) #1

declare dso_local i32 @theffective_0(%struct.TYPE_7__*) #1

declare dso_local i32 @theffective_1(%struct.TYPE_7__*) #1

declare dso_local i32 @thread_policy_update_internal_spinlocked(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
