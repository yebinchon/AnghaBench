; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspChangeVideoFormat.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspChangeVideoFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@scspsoundlen = common dso_local global i32 0, align 4
@scsplines = common dso_local global i32 0, align 4
@scspsoundbufs = common dso_local global i32 0, align 4
@scspsoundbufsize = common dso_local global i32 0, align 4
@SNDCore = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScspChangeVideoFormat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 50, i32 60
  %8 = sdiv i32 44100, %7
  store i32 %8, i32* @scspsoundlen, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 313, i32 263
  store i32 %12, i32* @scsplines, align 4
  %13 = load i32, i32* @scspsoundlen, align 4
  %14 = load i32, i32* @scspsoundbufs, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* @scspsoundbufsize, align 4
  %16 = call i64 (...) @scsp_alloc_bufs()
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SNDCore, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 50, i32 60
  %27 = call i32 %22(i32 %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %19, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @scsp_alloc_bufs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
