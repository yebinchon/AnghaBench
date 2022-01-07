; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_purge_pipe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_purge_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_pipe = type { i32, i32, i32, %struct.mbuf*, i32 }
%struct.mbuf = type { %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_pipe*)* @purge_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @purge_pipe(%struct.dn_pipe* %0) #0 {
  %2 = alloca %struct.dn_pipe*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.dn_pipe* %0, %struct.dn_pipe** %2, align 8
  %5 = load %struct.dn_pipe*, %struct.dn_pipe** %2, align 8
  %6 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %5, i32 0, i32 4
  %7 = call i32 @purge_flow_set(i32* %6, i32 1)
  %8 = load %struct.dn_pipe*, %struct.dn_pipe** %2, align 8
  %9 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %8, i32 0, i32 3
  %10 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %10, %struct.mbuf** %4, align 8
  br label %11

11:                                               ; preds = %14, %1
  %12 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %12, %struct.mbuf** %3, align 8
  %13 = icmp ne %struct.mbuf* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %17, %struct.mbuf** %4, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %19 = call i32 @DN_FREE_PKT(%struct.mbuf* %18)
  br label %11

20:                                               ; preds = %11
  %21 = load %struct.dn_pipe*, %struct.dn_pipe** %2, align 8
  %22 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %21, i32 0, i32 2
  %23 = call i32 @heap_free(i32* %22)
  %24 = load %struct.dn_pipe*, %struct.dn_pipe** %2, align 8
  %25 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %24, i32 0, i32 1
  %26 = call i32 @heap_free(i32* %25)
  %27 = load %struct.dn_pipe*, %struct.dn_pipe** %2, align 8
  %28 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %27, i32 0, i32 0
  %29 = call i32 @heap_free(i32* %28)
  ret void
}

declare dso_local i32 @purge_flow_set(i32*, i32) #1

declare dso_local i32 @DN_FREE_PKT(%struct.mbuf*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
