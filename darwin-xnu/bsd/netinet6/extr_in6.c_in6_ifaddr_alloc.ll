; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_ifaddr_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_ifaddr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.in6_ifaddr_dbg = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@in6ifa_zone = common dso_local global i32 0, align 4
@in6ifa_size = common dso_local global i32 0, align 4
@in6_ifaddr_free = common dso_local global i32 0, align 4
@IFD_ALLOC = common dso_local global i32 0, align 4
@in6ifa_debug = common dso_local global i64 0, align 8
@IFD_DEBUG = common dso_local global i32 0, align 4
@in6_ifaddr_trace = common dso_local global i32 0, align 4
@in6_ifaddr_attached = common dso_local global i32 0, align 4
@in6_ifaddr_detached = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in6_ifaddr* (i32)* @in6_ifaddr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in6_ifaddr* @in6_ifaddr_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in6_ifaddr*, align 8
  %4 = alloca %struct.in6_ifaddr_dbg*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @in6ifa_zone, align 4
  %10 = call %struct.in6_ifaddr* @zalloc(i32 %9)
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @in6ifa_zone, align 4
  %13 = call %struct.in6_ifaddr* @zalloc_noblock(i32 %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi %struct.in6_ifaddr* [ %10, %8 ], [ %13, %11 ]
  store %struct.in6_ifaddr* %15, %struct.in6_ifaddr** %3, align 8
  %16 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %17 = icmp ne %struct.in6_ifaddr* %16, null
  br i1 %17, label %18, label %62

18:                                               ; preds = %14
  %19 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %20 = load i32, i32* @in6ifa_size, align 4
  %21 = call i32 @bzero(%struct.in6_ifaddr* %19, i32 %20)
  %22 = load i32, i32* @in6_ifaddr_free, align 4
  %23 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %24 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @IFD_ALLOC, align 4
  %27 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %28 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %33 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %32, i32 0, i32 0
  %34 = call i32 @ifa_lock_init(%struct.TYPE_2__* %33)
  %35 = load i64, i64* @in6ifa_debug, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %18
  %38 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %39 = bitcast %struct.in6_ifaddr* %38 to %struct.in6_ifaddr_dbg*
  store %struct.in6_ifaddr_dbg* %39, %struct.in6_ifaddr_dbg** %4, align 8
  %40 = load i32, i32* @IFD_DEBUG, align 4
  %41 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %42 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @in6_ifaddr_trace, align 4
  %47 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %48 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @in6_ifaddr_attached, align 4
  %51 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %52 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @in6_ifaddr_detached, align 4
  %55 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %56 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.in6_ifaddr_dbg*, %struct.in6_ifaddr_dbg** %4, align 8
  %59 = getelementptr inbounds %struct.in6_ifaddr_dbg, %struct.in6_ifaddr_dbg* %58, i32 0, i32 0
  %60 = call i32 @ctrace_record(i32* %59)
  br label %61

61:                                               ; preds = %37, %18
  br label %62

62:                                               ; preds = %61, %14
  %63 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  ret %struct.in6_ifaddr* %63
}

declare dso_local %struct.in6_ifaddr* @zalloc(i32) #1

declare dso_local %struct.in6_ifaddr* @zalloc_noblock(i32) #1

declare dso_local i32 @bzero(%struct.in6_ifaddr*, i32) #1

declare dso_local i32 @ifa_lock_init(%struct.TYPE_2__*) #1

declare dso_local i32 @ctrace_record(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
