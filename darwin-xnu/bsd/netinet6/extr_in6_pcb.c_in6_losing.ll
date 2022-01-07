; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_losing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_losing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtentry* }
%struct.rtentry = type { i32, i32 }

@RTF_DYNAMIC = common dso_local global i32 0, align 4
@RTF_CONDEMNED = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_losing(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.rtentry*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %4 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %5 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  store %struct.rtentry* %7, %struct.rtentry** %3, align 8
  %8 = icmp ne %struct.rtentry* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %11 = call i32 @RT_LOCK(%struct.rtentry* %10)
  %12 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %13 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RTF_DYNAMIC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %9
  %19 = load i32, i32* @RTF_CONDEMNED, align 4
  %20 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %21 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %25 = call i32 @RT_UNLOCK(%struct.rtentry* %24)
  %26 = load i32, i32* @RTM_DELETE, align 4
  %27 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %28 = call i32 @rt_key(%struct.rtentry* %27)
  %29 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %30 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %33 = call i32 @rt_mask(%struct.rtentry* %32)
  %34 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %35 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rtrequest(i32 %26, i32 %28, i32 %31, i32 %33, i32 %36, i32* null)
  br label %41

38:                                               ; preds = %9
  %39 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %40 = call i32 @RT_UNLOCK(%struct.rtentry* %39)
  br label %41

41:                                               ; preds = %38, %18
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %44 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %43, i32 0, i32 0
  %45 = call i32 @ROUTE_RELEASE(%struct.TYPE_2__* %44)
  ret void
}

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtrequest(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
