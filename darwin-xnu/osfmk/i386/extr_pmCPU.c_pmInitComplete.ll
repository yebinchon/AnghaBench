; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmCPU.c_pmInitComplete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmCPU.c_pmInitComplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@earlyTopology = common dso_local global i64 0, align 8
@pmDispatch = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@pmInitDone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmInitComplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmInitComplete() #0 {
  %1 = load i64, i64* @earlyTopology, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmDispatch, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmDispatch, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (...)*, i32 (...)** %8, align 8
  %10 = icmp ne i32 (...)* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmDispatch, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (...)*, i32 (...)** %13, align 8
  %15 = call i32 (...) %14()
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* @earlyTopology, align 8
  br label %17

17:                                               ; preds = %11, %6, %3, %0
  store i32 1, i32* @pmInitDone, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
