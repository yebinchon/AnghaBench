; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_gettaocache.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_gettaocache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmxp_tao = type { i32 }
%struct.inpcb = type { i32 }
%struct.rtentry = type { i32, i32 }

@IFSCOPE_NONE = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rmxp_tao* @tcp_gettaocache(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.rmxp_tao*, align 8
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca %struct.rmxp_tao*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  %6 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %7 = load i32, i32* @IFSCOPE_NONE, align 4
  %8 = call %struct.rtentry* @tcp_rtlookup(%struct.inpcb* %6, i32 %7)
  store %struct.rtentry* %8, %struct.rtentry** %4, align 8
  %9 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %10 = icmp eq %struct.rtentry* %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %13 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RTF_UP, align 4
  %16 = load i32, i32* @RTF_HOST, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load i32, i32* @RTF_UP, align 4
  %20 = load i32, i32* @RTF_HOST, align 4
  %21 = or i32 %19, %20
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %11, %1
  %24 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %25 = icmp ne %struct.rtentry* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %28 = call i32 @RT_UNLOCK(%struct.rtentry* %27)
  br label %29

29:                                               ; preds = %26, %23
  store %struct.rmxp_tao* null, %struct.rmxp_tao** %2, align 8
  br label %38

30:                                               ; preds = %11
  %31 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %32 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.rmxp_tao* @rmx_taop(i32 %33)
  store %struct.rmxp_tao* %34, %struct.rmxp_tao** %5, align 8
  %35 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %36 = call i32 @RT_UNLOCK(%struct.rtentry* %35)
  %37 = load %struct.rmxp_tao*, %struct.rmxp_tao** %5, align 8
  store %struct.rmxp_tao* %37, %struct.rmxp_tao** %2, align 8
  br label %38

38:                                               ; preds = %30, %29
  %39 = load %struct.rmxp_tao*, %struct.rmxp_tao** %2, align 8
  ret %struct.rmxp_tao* %39
}

declare dso_local %struct.rtentry* @tcp_rtlookup(%struct.inpcb*, i32) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local %struct.rmxp_tao* @rmx_taop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
