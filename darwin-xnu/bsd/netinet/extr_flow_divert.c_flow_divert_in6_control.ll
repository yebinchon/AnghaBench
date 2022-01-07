; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_in6_control.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_in6_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.ifnet = type { i32 }
%struct.proc = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, i32, %struct.ifnet*, %struct.proc*)* @flow_divert_in6_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_in6_control(%struct.socket* %0, i32 %1, i32 %2, %struct.ifnet* %3, %struct.proc* %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.proc*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ifnet* %3, %struct.ifnet** %9, align 8
  store %struct.proc* %4, %struct.proc** %10, align 8
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %16 = load %struct.proc*, %struct.proc** %10, align 8
  %17 = call i32 @flow_divert_control(%struct.socket* %12, i32 %13, i32 %14, %struct.ifnet* %15, %struct.proc* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load %struct.socket*, %struct.socket** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %26 = load %struct.proc*, %struct.proc** %10, align 8
  %27 = call i32 @in6_control(%struct.socket* %22, i32 %23, i32 %24, %struct.ifnet* %25, %struct.proc* %26)
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %21, %5
  %29 = load i32, i32* %11, align 4
  ret i32 %29
}

declare dso_local i32 @flow_divert_control(%struct.socket*, i32, i32, %struct.ifnet*, %struct.proc*) #1

declare dso_local i32 @in6_control(%struct.socket*, i32, i32, %struct.ifnet*, %struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
