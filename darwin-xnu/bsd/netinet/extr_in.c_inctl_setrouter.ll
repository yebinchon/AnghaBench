; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_setrouter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_setrouter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.ifreq = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFEF_IPV4_ROUTER = common dso_local global i32 0, align 4
@IFEF_ARPLL = common dso_local global i32 0, align 4
@IFEF_AUTOCONFIGURING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.ifreq*)* @inctl_setrouter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inctl_setrouter(%struct.ifnet* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = icmp ne %struct.ifnet* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @VERIFY(i32 %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_LOOPBACK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %21, i32 0, i32 0
  %23 = call i32 @bcopy(i32* %22, i32* %7, i32 4)
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load i32, i32* @IFEF_IPV4_ROUTER, align 4
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @IFEF_ARPLL, align 4
  %35 = load i32, i32* @IFEF_AUTOCONFIGURING, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %49

42:                                               ; preds = %20
  %43 = load i32, i32* @IFEF_IPV4_ROUTER, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %28
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = call i32 @ifnet_lock_done(%struct.ifnet* %50)
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = call i32 @in_purgeaddrs(%struct.ifnet* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @in_purgeaddrs(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
