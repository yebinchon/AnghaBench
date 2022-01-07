; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_evpipefree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_evpipefree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.eventqelt* }
%struct.eventqelt = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.eventqelt* }

@ee_slist = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evpipefree(%struct.pipe* %0) #0 {
  %2 = alloca %struct.pipe*, align 8
  %3 = alloca %struct.eventqelt*, align 8
  %4 = alloca %struct.eventqelt*, align 8
  %5 = alloca i32, align 4
  store %struct.pipe* %0, %struct.pipe** %2, align 8
  %6 = load %struct.pipe*, %struct.pipe** %2, align 8
  %7 = getelementptr inbounds %struct.pipe, %struct.pipe* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.eventqelt*, %struct.eventqelt** %8, align 8
  store %struct.eventqelt* %9, %struct.eventqelt** %3, align 8
  br label %10

10:                                               ; preds = %32, %1
  %11 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %12 = icmp ne %struct.eventqelt* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %15 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.eventqelt*, %struct.eventqelt** %16, align 8
  store %struct.eventqelt* %17, %struct.eventqelt** %4, align 8
  %18 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %19 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %23 = call i32 @EVPROCDEQUE(i32 %21, %struct.eventqelt* %22)
  %24 = load %struct.pipe*, %struct.pipe** %2, align 8
  %25 = getelementptr inbounds %struct.pipe, %struct.pipe* %24, i32 0, i32 0
  %26 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %27 = load i32, i32* @ee_slist, align 4
  %28 = call i32 @TAILQ_REMOVE(%struct.TYPE_4__* %25, %struct.eventqelt* %26, i32 %27)
  %29 = load %struct.eventqelt*, %struct.eventqelt** %3, align 8
  %30 = load i32, i32* @M_TEMP, align 4
  %31 = call i32 @FREE(%struct.eventqelt* %29, i32 %30)
  br label %32

32:                                               ; preds = %13
  %33 = load %struct.eventqelt*, %struct.eventqelt** %4, align 8
  store %struct.eventqelt* %33, %struct.eventqelt** %3, align 8
  br label %10

34:                                               ; preds = %10
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
