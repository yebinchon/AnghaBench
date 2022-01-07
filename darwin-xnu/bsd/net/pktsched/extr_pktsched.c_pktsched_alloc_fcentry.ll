; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched.c_pktsched_alloc_fcentry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched.c_pktsched_alloc_fcentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flowadv_fcentry = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.ifnet = type { i32 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.flowadv_fcentry* @pktsched_alloc_fcentry(%struct.TYPE_5__* %0, %struct.ifnet* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flowadv_fcentry*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.flowadv_fcentry* null, %struct.flowadv_fcentry** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %36 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.mbuf*
  store %struct.mbuf* %16, %struct.mbuf** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.flowadv_fcentry* @flowadv_alloc_entry(i32 %17)
  store %struct.flowadv_fcentry* %18, %struct.flowadv_fcentry** %7, align 8
  %19 = load %struct.flowadv_fcentry*, %struct.flowadv_fcentry** %7, align 8
  %20 = icmp eq %struct.flowadv_fcentry* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %38

22:                                               ; preds = %12
  %23 = call i32 @_CASSERT(i32 1)
  %24 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.flowadv_fcentry*, %struct.flowadv_fcentry** %7, align 8
  %29 = getelementptr inbounds %struct.flowadv_fcentry, %struct.flowadv_fcentry* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.flowadv_fcentry*, %struct.flowadv_fcentry** %7, align 8
  %35 = getelementptr inbounds %struct.flowadv_fcentry, %struct.flowadv_fcentry* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %38

36:                                               ; preds = %3
  %37 = call i32 @VERIFY(i32 0)
  br label %38

38:                                               ; preds = %36, %22, %21
  %39 = load %struct.flowadv_fcentry*, %struct.flowadv_fcentry** %7, align 8
  ret %struct.flowadv_fcentry* %39
}

declare dso_local %struct.flowadv_fcentry* @flowadv_alloc_entry(i32) #1

declare dso_local i32 @_CASSERT(i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
