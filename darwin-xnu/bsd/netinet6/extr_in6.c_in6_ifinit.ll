; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_ifinit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_ifinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_ifaddr = type { i32, i32, %struct.TYPE_2__, %struct.ifaddr }
%struct.TYPE_2__ = type { i64 }
%struct.ifaddr = type { i32 }

@IN6_IFAUPDATE_1STADDR = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@SIOCSIFADDR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFA_ROUTE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@RTM_ADD = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@RTF_CLONING = common dso_local global i32 0, align 4
@IN6_IFAUPDATE_NEWADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.in6_ifaddr*, i32)* @in6_ifinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_ifinit(%struct.ifnet* %0, %struct.in6_ifaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.in6_ifaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifaddr*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.in6_ifaddr* %1, %struct.in6_ifaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %6, align 8
  %11 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %10, i32 0, i32 3
  store %struct.ifaddr* %11, %struct.ifaddr** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @IN6_IFAUPDATE_1STADDR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %18 = load i32, i32* @PF_INET6, align 4
  %19 = load i32, i32* @SIOCSIFADDR, align 4
  %20 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %6, align 8
  %21 = call i32 @ifnet_ioctl(%struct.ifnet* %17, i32 %18, i32 %19, %struct.in6_ifaddr* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %103

30:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %16
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %34 = call i32 @IFA_LOCK(%struct.ifaddr* %33)
  %35 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %6, align 8
  %36 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IFA_ROUTE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %74, label %41

41:                                               ; preds = %32
  %42 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %6, align 8
  %43 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %46, label %74

46:                                               ; preds = %41
  %47 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %6, align 8
  %48 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AF_INET6, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %46
  %54 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %55 = call i32 @IFA_UNLOCK(%struct.ifaddr* %54)
  %56 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %57 = load i32, i32* @RTM_ADD, align 4
  %58 = load i32, i32* @RTF_UP, align 4
  %59 = load i32, i32* @RTF_HOST, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @rtinit(%struct.ifaddr* %56, i32 %57, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %103

66:                                               ; preds = %53
  %67 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %68 = call i32 @IFA_LOCK(%struct.ifaddr* %67)
  %69 = load i32, i32* @IFA_ROUTE, align 4
  %70 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %6, align 8
  %71 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %66, %46, %41, %32
  %75 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %76 = call i32 @IFA_LOCK_ASSERT_HELD(%struct.ifaddr* %75)
  %77 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %6, align 8
  %78 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 128
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* @RTF_CLONING, align 4
  %83 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %6, align 8
  %84 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %74
  %88 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %89 = call i32 @IFA_UNLOCK(%struct.ifaddr* %88)
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @IN6_IFAUPDATE_NEWADDR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %96 = call i32 @in6_ifaddloop(%struct.ifaddr* %95)
  br label %97

97:                                               ; preds = %94, %87
  %98 = call i32 (...) @routegenid_inet6_update()
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @VERIFY(i32 %101)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %97, %64, %28
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @ifnet_ioctl(%struct.ifnet*, i32, i32, %struct.in6_ifaddr*) #1

declare dso_local i32 @IFA_LOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @rtinit(%struct.ifaddr*, i32, i32) #1

declare dso_local i32 @IFA_LOCK_ASSERT_HELD(%struct.ifaddr*) #1

declare dso_local i32 @in6_ifaddloop(%struct.ifaddr*) #1

declare dso_local i32 @routegenid_inet6_update(...) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
