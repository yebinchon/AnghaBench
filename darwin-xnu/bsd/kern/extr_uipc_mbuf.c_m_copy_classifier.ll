; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_copy_classifier.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_copy_classifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@M_PKTHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_copy_classifier(%struct.mbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %6 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @M_PKTHDR, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @M_PKTHDR, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @VERIFY(i32 %15)
  %17 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  store i32 %20, i32* %23, align 4
  %24 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @m_set_service_class(%struct.mbuf* %45, i32 %49)
  %51 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @m_set_service_class(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
