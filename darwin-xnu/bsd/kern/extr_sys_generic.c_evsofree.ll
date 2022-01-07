; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_evsofree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_evsofree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.eventqelt* }
%struct.eventqelt = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.eventqelt* }

@EV_QUEUED = common dso_local global i32 0, align 4
@ee_slist = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evsofree(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.eventqelt*, align 8
  %4 = alloca %struct.eventqelt*, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = icmp eq %struct.socket* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %46

9:                                                ; preds = %1
  %10 = load %struct.socket*, %struct.socket** %2, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.eventqelt*, %struct.eventqelt** %12, align 8
  store %struct.eventqelt* %13, %struct.eventqelt** %3, align 8
  br label %14

14:                                               ; preds = %44, %9
  %15 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %16 = icmp ne %struct.eventqelt* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %19 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.eventqelt*, %struct.eventqelt** %20, align 8
  store %struct.eventqelt* %21, %struct.eventqelt** %4, align 8
  %22 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %23 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %26 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EV_QUEUED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %34 = call i32 @EVPROCDEQUE(i32 %32, %struct.eventqelt* %33)
  br label %35

35:                                               ; preds = %31, %17
  %36 = load %struct.socket*, %struct.socket** %2, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 0
  %38 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %39 = load i32, i32* @ee_slist, align 4
  %40 = call i32 @TAILQ_REMOVE(%struct.TYPE_4__* %37, %struct.eventqelt* %38, i32 %39)
  %41 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %42 = load i32, i32* @M_TEMP, align 4
  %43 = call i32 @FREE(%struct.eventqelt* %41, i32 %42)
  br label %44

44:                                               ; preds = %35
  %45 = load %struct.eventqelt*, %struct.eventqelt** %4, align 8
  store %struct.eventqelt* %45, %struct.eventqelt** %3, align 8
  br label %14

46:                                               ; preds = %8, %14
  ret void
}

declare dso_local i32 @EVPROCDEQUE(i32, %struct.eventqelt*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.TYPE_4__*, %struct.eventqelt*, i32) #1

declare dso_local i32 @FREE(%struct.eventqelt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
