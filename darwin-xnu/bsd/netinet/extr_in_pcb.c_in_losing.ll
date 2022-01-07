; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_losing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_losing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.rtentry* }
%struct.rtentry = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.in_ifaddr = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@RTF_DYNAMIC = common dso_local global i32 0, align 4
@RTF_CONDEMNED = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_losing(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca %struct.in_ifaddr*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %6 = load i64, i64* @FALSE, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %8 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  store %struct.rtentry* %10, %struct.rtentry** %4, align 8
  %11 = icmp ne %struct.rtentry* %10, null
  br i1 %11, label %12, label %68

12:                                               ; preds = %1
  store %struct.in_ifaddr* null, %struct.in_ifaddr** %5, align 8
  %13 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %14 = call i32 @RT_LOCK(%struct.rtentry* %13)
  %15 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %16 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RTF_DYNAMIC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %12
  %22 = load i32, i32* @RTF_CONDEMNED, align 4
  %23 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %24 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %28 = call i32 @RT_UNLOCK(%struct.rtentry* %27)
  %29 = load i32, i32* @RTM_DELETE, align 4
  %30 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %31 = call i32 @rt_key(%struct.rtentry* %30)
  %32 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %33 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %36 = call i32 @rt_mask(%struct.rtentry* %35)
  %37 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %38 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rtrequest(i32 %29, i32 %31, i32 %34, i32 %36, i32 %39, i32* null)
  br label %44

41:                                               ; preds = %12
  %42 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %43 = call i32 @RT_UNLOCK(%struct.rtentry* %42)
  br label %44

44:                                               ; preds = %41, %21
  %45 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @INADDR_ANY, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %53 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.in_ifaddr* @ifa_foraddr(i64 %55)
  store %struct.in_ifaddr* %56, %struct.in_ifaddr** %5, align 8
  %57 = icmp ne %struct.in_ifaddr* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i64, i64* @TRUE, align 8
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %58, %51, %44
  %61 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %62 = icmp ne %struct.in_ifaddr* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %65 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %64, i32 0, i32 0
  %66 = call i32 @IFA_REMREF(i32* %65)
  br label %67

67:                                               ; preds = %63, %60
  br label %68

68:                                               ; preds = %67, %1
  %69 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %70 = icmp eq %struct.rtentry* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %3, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71, %68
  %75 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %76 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %75, i32 0, i32 0
  %77 = call i32 @ROUTE_RELEASE(%struct.TYPE_4__* %76)
  br label %78

78:                                               ; preds = %74, %71
  ret void
}

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtrequest(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

declare dso_local %struct.in_ifaddr* @ifa_foraddr(i64) #1

declare dso_local i32 @IFA_REMREF(i32*) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
