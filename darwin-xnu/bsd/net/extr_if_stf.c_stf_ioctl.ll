; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_stf.c_stf_ioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_stf.c_stf_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ifreq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@stf_rtrequest = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @stf_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stf_ioctl(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ifaddr*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %86 [
    i32 128, label %12
    i32 130, label %70
    i32 129, label %70
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.ifaddr*
  store %struct.ifaddr* %14, %struct.ifaddr** %7, align 8
  %15 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %16 = icmp eq %struct.ifaddr* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %18, i32* %10, align 4
  br label %88

19:                                               ; preds = %12
  %20 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %21 = call i32 @IFA_LOCK(%struct.ifaddr* %20)
  %22 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %23 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AF_INET6, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %31 = call i32 @IFA_UNLOCK(%struct.ifaddr* %30)
  %32 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %32, i32* %10, align 4
  br label %88

33:                                               ; preds = %19
  %34 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %35 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = bitcast %struct.TYPE_3__* %36 to i8*
  %38 = bitcast i8* %37 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %38, %struct.sockaddr_in6** %9, align 8
  %39 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %39, i32 0, i32 0
  %41 = call i32 @IN6_IS_ADDR_6TO4(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %33
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ifnet_flags(i32 %44)
  %46 = load i32, i32* @IFF_UP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @stf_rtrequest, align 4
  %51 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %52 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %54 = call i32 @IFA_UNLOCK(%struct.ifaddr* %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IFF_UP, align 4
  %57 = load i32, i32* @IFF_UP, align 4
  %58 = call i32 @ifnet_set_flags(i32 %55, i32 %56, i32 %57)
  br label %62

59:                                               ; preds = %43
  %60 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %61 = call i32 @IFA_UNLOCK(%struct.ifaddr* %60)
  br label %62

62:                                               ; preds = %59, %49
  br label %67

63:                                               ; preds = %33
  %64 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %65 = call i32 @IFA_UNLOCK(%struct.ifaddr* %64)
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %62
  %68 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %69 = call i32 @IFA_LOCK_ASSERT_NOTHELD(%struct.ifaddr* %68)
  br label %88

70:                                               ; preds = %3, %3
  %71 = load i8*, i8** %6, align 8
  %72 = bitcast i8* %71 to %struct.ifreq*
  store %struct.ifreq* %72, %struct.ifreq** %8, align 8
  %73 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %74 = icmp ne %struct.ifreq* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %77 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AF_INET6, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %85

83:                                               ; preds = %75, %70
  %84 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %83, %82
  br label %88

86:                                               ; preds = %3
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %86, %85, %67, %29, %17
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local i32 @IFA_LOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @IN6_IS_ADDR_6TO4(i32*) #1

declare dso_local i32 @ifnet_flags(i32) #1

declare dso_local i32 @ifnet_set_flags(i32, i32, i32) #1

declare dso_local i32 @IFA_LOCK_ASSERT_NOTHELD(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
