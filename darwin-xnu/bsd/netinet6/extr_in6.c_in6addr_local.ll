; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6addr_local.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6addr_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.rtentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6addr_local(%struct.in6_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca %struct.sockaddr_in6, align 4
  %6 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %8 = call i64 @IN6_IS_ADDR_LOOPBACK(%struct.in6_addr* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %12 = call i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %1
  store i32 1, i32* %2, align 4
  br label %47

15:                                               ; preds = %10
  %16 = load i32, i32* @AF_INET6, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  store i32 12, i32* %18, align 4
  %19 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  %21 = call i32 @bcopy(%struct.in6_addr* %19, i32* %20, i32 4)
  %22 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  %23 = call %struct.rtentry* @rtalloc1(%struct.sockaddr* %22, i32 0, i32 0)
  store %struct.rtentry* %23, %struct.rtentry** %4, align 8
  %24 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %25 = icmp ne %struct.rtentry* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %15
  %27 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %28 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %27)
  %29 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %30 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_LINK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %26
  %38 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %39 = call i32 @RT_UNLOCK(%struct.rtentry* %38)
  %40 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %41 = call i32 @rtfree(%struct.rtentry* %40)
  br label %45

42:                                               ; preds = %15
  %43 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %44 = call i32 @in6_localaddr(%struct.in6_addr* %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @IN6_IS_ADDR_LOOPBACK(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local i32 @bcopy(%struct.in6_addr*, i32*, i32) #1

declare dso_local %struct.rtentry* @rtalloc1(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @RT_LOCK_SPIN(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

declare dso_local i32 @in6_localaddr(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
