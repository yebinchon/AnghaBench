; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_getpeername.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_getpeername.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_4__*, %struct.flow_divert_pcb* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.flow_divert_pcb = type { i32 }
%struct.sockaddr = type { i32 }

@SOF_FLOW_DIVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr**)* @flow_divert_getpeername to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_getpeername(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockaddr**, align 8
  %5 = alloca %struct.flow_divert_pcb*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %4, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 2
  %8 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  store %struct.flow_divert_pcb* %8, %struct.flow_divert_pcb** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SOF_FLOW_DIVERT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 2
  %18 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %17, align 8
  %19 = icmp ne %struct.flow_divert_pcb* %18, null
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i1 [ false, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @VERIFY(i32 %22)
  %24 = load %struct.socket*, %struct.socket** %3, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %32 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  %35 = call i32 @flow_divert_dup_addr(i32 %30, i32 %33, %struct.sockaddr** %34)
  ret i32 %35
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @flow_divert_dup_addr(i32, i32, %struct.sockaddr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
