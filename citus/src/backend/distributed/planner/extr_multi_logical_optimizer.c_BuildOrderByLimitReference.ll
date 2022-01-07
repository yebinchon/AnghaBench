; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_BuildOrderByLimitReference.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_BuildOrderByLimitReference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32*, i32*, i32*)* @BuildOrderByLimitReference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BuildOrderByLimitReference(%struct.TYPE_3__* noalias sret %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* %5, i32** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** @NIL, align 8
  %18 = icmp eq i32* %16, %17
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** @NIL, align 8
  %23 = icmp eq i32* %21, %22
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @CanPushDownLimitApproximate(i32* %26, i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @HasOrderByAggregate(i32* %30, i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %32, i32* %33, align 4
  ret void
}

declare dso_local i32 @CanPushDownLimitApproximate(i32*, i32*) #1

declare dso_local i32 @HasOrderByAggregate(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
