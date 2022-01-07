; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifp_if_input_poll.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifp_if_input_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, i64, i64, %struct.mbuf**, %struct.mbuf**, i64*, i64*)* @ifp_if_input_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifp_if_input_poll(%struct.ifnet* %0, i64 %1, i64 %2, %struct.mbuf** %3, %struct.mbuf** %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mbuf**, align 8
  %12 = alloca %struct.mbuf**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.mbuf** %3, %struct.mbuf*** %11, align 8
  store %struct.mbuf** %4, %struct.mbuf*** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %15 = load %struct.mbuf**, %struct.mbuf*** %11, align 8
  %16 = icmp ne %struct.mbuf** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = load %struct.mbuf**, %struct.mbuf*** %11, align 8
  store %struct.mbuf* null, %struct.mbuf** %18, align 8
  br label %19

19:                                               ; preds = %17, %7
  %20 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %21 = icmp ne %struct.mbuf** %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %23, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i64*, i64** %13, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64*, i64** %13, align 8
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i64*, i64** %14, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i64*, i64** %14, align 8
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %32, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
