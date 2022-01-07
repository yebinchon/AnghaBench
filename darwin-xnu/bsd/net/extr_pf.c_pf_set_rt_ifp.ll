; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_set_rt_ifp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_set_rt_ifp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { i32*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.pf_rule* }
%struct.pf_rule = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.pf_addr = type { i32 }

@PF_FASTROUTE = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_state*, %struct.pf_addr*, i64)* @pf_set_rt_ifp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_set_rt_ifp(%struct.pf_state* %0, %struct.pf_addr* %1, i64 %2) #0 {
  %4 = alloca %struct.pf_state*, align 8
  %5 = alloca %struct.pf_addr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pf_rule*, align 8
  store %struct.pf_state* %0, %struct.pf_state** %4, align 8
  store %struct.pf_addr* %1, %struct.pf_addr** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %9 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.pf_rule*, %struct.pf_rule** %10, align 8
  store %struct.pf_rule* %11, %struct.pf_rule** %7, align 8
  %12 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %13 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %15 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %20 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PF_FASTROUTE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %3
  br label %51

25:                                               ; preds = %18
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @AF_INET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @AF_INET6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29, %25
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %36 = load %struct.pf_addr*, %struct.pf_addr** %5, align 8
  %37 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %38 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %37, i32 0, i32 2
  %39 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %40 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %39, i32 0, i32 1
  %41 = call i32 @pf_map_addr(i64 %34, %struct.pf_rule* %35, %struct.pf_addr* %36, i32* %38, i32* null, i32* %40)
  %42 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %43 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %49 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  br label %50

50:                                               ; preds = %33, %29
  br label %51

51:                                               ; preds = %50, %24
  ret void
}

declare dso_local i32 @pf_map_addr(i64, %struct.pf_rule*, %struct.pf_addr*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
