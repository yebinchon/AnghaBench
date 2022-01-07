; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_stf.c_stf_checkaddr6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_stf.c_stf_checkaddr6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stf_softc = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ifnet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stf_softc*, %struct.in6_addr*, %struct.ifnet*)* @stf_checkaddr6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stf_checkaddr6(%struct.stf_softc* %0, %struct.in6_addr* %1, %struct.ifnet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stf_softc*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.ifnet*, align 8
  store %struct.stf_softc* %0, %struct.stf_softc** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.ifnet* %2, %struct.ifnet** %7, align 8
  %8 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %9 = call i64 @IN6_IS_ADDR_6TO4(%struct.in6_addr* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.stf_softc*, %struct.stf_softc** %5, align 8
  %13 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %14 = call i32 @GET_V4(%struct.in6_addr* %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %16 = call i32 @stf_checkaddr4(%struct.stf_softc* %12, i32 %14, %struct.ifnet* %15)
  store i32 %16, i32* %4, align 4
  br label %27

17:                                               ; preds = %3
  %18 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %19 = call i64 @IN6_IS_ADDR_V4COMPAT(%struct.in6_addr* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %23 = call i64 @IN6_IS_ADDR_V4MAPPED(%struct.in6_addr* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  store i32 -1, i32* %4, align 4
  br label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25, %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @IN6_IS_ADDR_6TO4(%struct.in6_addr*) #1

declare dso_local i32 @stf_checkaddr4(%struct.stf_softc*, i32, %struct.ifnet*) #1

declare dso_local i32 @GET_V4(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_V4COMPAT(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_V4MAPPED(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
