; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_S_mbuf_skip_to_offset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_S_mbuf_skip_to_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mbuf*, i32*)* @S_mbuf_skip_to_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @S_mbuf_skip_to_offset(%struct.mbuf* %0, i32* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %7 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, %15
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 1
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  store %struct.mbuf* %21, %struct.mbuf** %3, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %23 = icmp eq %struct.mbuf* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %29

25:                                               ; preds = %14
  %26 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  br label %9

29:                                               ; preds = %24, %9
  %30 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
