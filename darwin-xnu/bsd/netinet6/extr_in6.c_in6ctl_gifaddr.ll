; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ctl_gifaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ctl_gifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_ifaddr = type { i32, %struct.sockaddr_in6, %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i32 }
%struct.in6_ifreq = type { %struct.sockaddr_in6, %struct.sockaddr_in6 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.in6_ifaddr*, i32, %struct.in6_ifreq*)* @in6ctl_gifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6ctl_gifaddr(%struct.ifnet* %0, %struct.in6_ifaddr* %1, i32 %2, %struct.in6_ifreq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.in6_ifaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_ifreq*, align 8
  %10 = alloca %struct.sockaddr_in6, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.in6_ifaddr* %1, %struct.in6_ifaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.in6_ifreq* %3, %struct.in6_ifreq** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %13 = icmp ne %struct.ifnet* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @VERIFY(i32 %14)
  %16 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %17 = icmp eq %struct.in6_ifaddr* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %19, i32* %5, align 4
  br label %71

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %67 [
    i32 129, label %22
    i32 128, label %40
  ]

22:                                               ; preds = %20
  %23 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %24 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %23, i32 0, i32 0
  %25 = call i32 @IFA_LOCK(i32* %24)
  %26 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %27 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %26, i32 0, i32 2
  %28 = call i32 @bcopy(%struct.sockaddr_in6* %27, %struct.sockaddr_in6* %10, i32 4)
  %29 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %30 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %29, i32 0, i32 0
  %31 = call i32 @IFA_UNLOCK(i32* %30)
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @sa6_recoverscope(%struct.sockaddr_in6* %10, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %69

36:                                               ; preds = %22
  %37 = load %struct.in6_ifreq*, %struct.in6_ifreq** %9, align 8
  %38 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %37, i32 0, i32 1
  %39 = call i32 @bcopy(%struct.sockaddr_in6* %10, %struct.sockaddr_in6* %38, i32 4)
  br label %69

40:                                               ; preds = %20
  %41 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFF_POINTOPOINT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %11, align 4
  br label %69

49:                                               ; preds = %40
  %50 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %51 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %50, i32 0, i32 0
  %52 = call i32 @IFA_LOCK(i32* %51)
  %53 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %54 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %53, i32 0, i32 1
  %55 = call i32 @bcopy(%struct.sockaddr_in6* %54, %struct.sockaddr_in6* %10, i32 4)
  %56 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %57 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %56, i32 0, i32 0
  %58 = call i32 @IFA_UNLOCK(i32* %57)
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i32 @sa6_recoverscope(%struct.sockaddr_in6* %10, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %69

63:                                               ; preds = %49
  %64 = load %struct.in6_ifreq*, %struct.in6_ifreq** %9, align 8
  %65 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %64, i32 0, i32 0
  %66 = call i32 @bcopy(%struct.sockaddr_in6* %10, %struct.sockaddr_in6* %65, i32 4)
  br label %69

67:                                               ; preds = %20
  %68 = call i32 @VERIFY(i32 0)
  br label %69

69:                                               ; preds = %67, %63, %62, %47, %36, %35
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %18
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IFA_LOCK(i32*) #1

declare dso_local i32 @bcopy(%struct.sockaddr_in6*, %struct.sockaddr_in6*, i32) #1

declare dso_local i32 @IFA_UNLOCK(i32*) #1

declare dso_local i32 @sa6_recoverscope(%struct.sockaddr_in6*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
