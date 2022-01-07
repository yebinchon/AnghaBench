; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_pcb_conflict_post_msg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_pcb_conflict_post_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kev_msg = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.kev_msg* }
%struct.kev_in_portinuse = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }

@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_INET_SUBCLASS = common dso_local global i32 0, align 4
@KEV_INET_PORTINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @in_pcb_conflict_post_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_pcb_conflict_post_msg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kev_msg, align 8
  %4 = alloca %struct.kev_in_portinuse, align 8
  store i32 %0, i32* %2, align 4
  %5 = bitcast %struct.kev_in_portinuse* %4 to %struct.kev_msg*
  %6 = call i32 @bzero(%struct.kev_msg* %5, i32 32)
  %7 = call i32 @bzero(%struct.kev_msg* %3, i32 32)
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @ntohs(i32 %8)
  %10 = getelementptr inbounds %struct.kev_in_portinuse, %struct.kev_in_portinuse* %4, i32 0, i32 6
  store i32 %9, i32* %10, align 4
  %11 = call i32 (...) @proc_selfpid()
  %12 = getelementptr inbounds %struct.kev_in_portinuse, %struct.kev_in_portinuse* %4, i32 0, i32 5
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %14 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %3, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %16 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %3, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @KEV_INET_SUBCLASS, align 4
  %18 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %3, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @KEV_INET_PORTINUSE, align 4
  %20 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %3, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = bitcast %struct.kev_in_portinuse* %4 to %struct.kev_msg*
  %22 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %3, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store %struct.kev_msg* %21, %struct.kev_msg** %25, align 8
  %26 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %3, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 32, i32* %29, align 8
  %30 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %3, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = call i32 @dlil_post_complete_msg(i32* null, %struct.kev_msg* %3)
  ret void
}

declare dso_local i32 @bzero(%struct.kev_msg*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @proc_selfpid(...) #1

declare dso_local i32 @dlil_post_complete_msg(i32*, %struct.kev_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
