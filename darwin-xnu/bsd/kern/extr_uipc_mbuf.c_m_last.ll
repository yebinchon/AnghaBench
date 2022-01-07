; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_last.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_last(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %5 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  %6 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %7 = icmp ne %struct.mbuf* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 0
  %11 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %11, %struct.mbuf** %2, align 8
  br label %3

12:                                               ; preds = %3
  %13 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
