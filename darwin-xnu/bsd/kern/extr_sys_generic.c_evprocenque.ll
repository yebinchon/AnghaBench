; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_evprocenque.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_evprocenque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventqelt = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DBG_MISC_ENQUEUE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@EV_QUEUED = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@ee_plist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eventqelt*)* @evprocenque to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evprocenque(%struct.eventqelt* %0) #0 {
  %2 = alloca %struct.eventqelt*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.eventqelt* %0, %struct.eventqelt** %2, align 8
  %4 = load %struct.eventqelt*, %struct.eventqelt** %2, align 8
  %5 = call i32 @assert(%struct.eventqelt* %4)
  %6 = load %struct.eventqelt*, %struct.eventqelt** %2, align 8
  %7 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load i32, i32* @DBG_MISC_ENQUEUE, align 4
  %10 = load i32, i32* @DBG_FUNC_START, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.eventqelt*, %struct.eventqelt** %2, align 8
  %13 = ptrtoint %struct.eventqelt* %12 to i32
  %14 = load %struct.eventqelt*, %struct.eventqelt** %2, align 8
  %15 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.eventqelt*, %struct.eventqelt** %2, align 8
  %18 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @KERNEL_DEBUG(i32 %11, i32 %13, i32 %16, i32 %19, i32 0, i32 0)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = call i32 @proc_lock(%struct.TYPE_4__* %21)
  %23 = load %struct.eventqelt*, %struct.eventqelt** %2, align 8
  %24 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @EV_QUEUED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = call i32 @proc_unlock(%struct.TYPE_4__* %30)
  %32 = load i32, i32* @DBG_MISC_ENQUEUE, align 4
  %33 = load i32, i32* @DBG_FUNC_END, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @KERNEL_DEBUG(i32 %34, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %56

36:                                               ; preds = %1
  %37 = load i32, i32* @EV_QUEUED, align 4
  %38 = load %struct.eventqelt*, %struct.eventqelt** %2, align 8
  %39 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.eventqelt*, %struct.eventqelt** %2, align 8
  %45 = load i32, i32* @ee_plist, align 4
  %46 = call i32 @TAILQ_INSERT_TAIL(i32* %43, %struct.eventqelt* %44, i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = call i32 @proc_unlock(%struct.TYPE_4__* %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @wakeup(i32* %50)
  %52 = load i32, i32* @DBG_MISC_ENQUEUE, align 4
  %53 = load i32, i32* @DBG_FUNC_END, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @KERNEL_DEBUG(i32 %54, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %56

56:                                               ; preds = %36, %29
  ret void
}

declare dso_local i32 @assert(%struct.eventqelt*) #1

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @proc_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.eventqelt*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
