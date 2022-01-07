; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet_pr_module.c_ether_inet_prmod_ioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet_pr_module.c_ether_inet_prmod_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.ifaddr = type { i32 }
%struct.ifreq = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ether_addr = type { i32 }

@IFF_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32, i8*)* @ether_inet_prmod_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether_inet_prmod_ioctl(%struct.TYPE_13__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifaddr*, align 8
  %11 = alloca %struct.ifreq*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %78 [
    i32 128, label %13
    i32 130, label %13
    i32 129, label %68
  ]

13:                                               ; preds = %4, %4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.ifaddr*
  store %struct.ifaddr* %15, %struct.ifaddr** %10, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = call i32 @ifnet_flags(%struct.TYPE_13__* %16)
  %18 = load i32, i32* @IFF_RUNNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %13
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = call i32 @ifnet_set_flags(%struct.TYPE_13__* %22, i32 %23, i32 %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = load i32, i32* @SIOCSIFFLAGS, align 4
  %28 = call i32 @ifnet_ioctl(%struct.TYPE_13__* %26, i32 0, i32 %27, i32* null)
  br label %29

29:                                               ; preds = %21, %13
  %30 = load %struct.ifaddr*, %struct.ifaddr** %10, align 8
  %31 = call i32 @ifaddr_address_family(%struct.ifaddr* %30)
  %32 = load i32, i32* @AF_INET, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %80

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = load %struct.ifaddr*, %struct.ifaddr** %10, align 8
  %38 = call i32 @inet_arp_init_ifaddr(%struct.TYPE_13__* %36, %struct.ifaddr* %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 128
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %80

42:                                               ; preds = %35
  %43 = call i32 (...) @kdp_get_interface()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = call i32 (...) @kdp_get_interface()
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %45, %42
  %52 = call i32 (...) @kdp_get_interface()
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54, %45
  %60 = load %struct.ifaddr*, %struct.ifaddr** %10, align 8
  %61 = call %struct.TYPE_11__* @IA_SIN(%struct.ifaddr* %60)
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = call i64 @IF_LLADDR(%struct.TYPE_13__* %63)
  %65 = inttoptr i64 %64 to %struct.ether_addr*
  %66 = call i32 @kdp_set_ip_and_mac_addresses(i32* %62, %struct.ether_addr* %65)
  br label %67

67:                                               ; preds = %59, %54, %51
  br label %80

68:                                               ; preds = %4
  %69 = load i8*, i8** %8, align 8
  %70 = bitcast i8* %69 to %struct.ifreq*
  store %struct.ifreq* %70, %struct.ifreq** %11, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = load %struct.ifreq*, %struct.ifreq** %11, align 8
  %73 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %77 = call i32 @ifnet_guarded_lladdr_copy_bytes(%struct.TYPE_13__* %71, i32 %75, i32 %76)
  br label %80

78:                                               ; preds = %4
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %68, %67, %41, %34
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @ifnet_flags(%struct.TYPE_13__*) #1

declare dso_local i32 @ifnet_set_flags(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ifnet_ioctl(%struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32 @ifaddr_address_family(%struct.ifaddr*) #1

declare dso_local i32 @inet_arp_init_ifaddr(%struct.TYPE_13__*, %struct.ifaddr*) #1

declare dso_local i32 @kdp_get_interface(...) #1

declare dso_local i32 @kdp_set_ip_and_mac_addresses(i32*, %struct.ether_addr*) #1

declare dso_local %struct.TYPE_11__* @IA_SIN(%struct.ifaddr*) #1

declare dso_local i64 @IF_LLADDR(%struct.TYPE_13__*) #1

declare dso_local i32 @ifnet_guarded_lladdr_copy_bytes(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
