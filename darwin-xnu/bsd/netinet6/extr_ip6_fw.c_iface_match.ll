; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_iface_match.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_iface_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.ifaddr* }
%struct.ifaddr = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.ifaddr* }
%union.ip6_fw_if = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sockaddr_in6 = type { i32 }

@IP6FW_IFNLEN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %union.ip6_fw_if*, i32)* @iface_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iface_match(%struct.ifnet* %0, %union.ip6_fw_if* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %union.ip6_fw_if*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifaddr*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %union.ip6_fw_if* %1, %union.ip6_fw_if** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %3
  %12 = load %union.ip6_fw_if*, %union.ip6_fw_if** %6, align 8
  %13 = bitcast %union.ip6_fw_if* %12 to %struct.TYPE_5__*
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %union.ip6_fw_if*, %union.ip6_fw_if** %6, align 8
  %22 = bitcast %union.ip6_fw_if* %21 to %struct.TYPE_5__*
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %96

27:                                               ; preds = %17, %11
  %28 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %union.ip6_fw_if*, %union.ip6_fw_if** %6, align 8
  %32 = bitcast %union.ip6_fw_if* %31 to %struct.TYPE_5__*
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IP6FW_IFNLEN, align 4
  %36 = call i64 @strncmp(i32 %30, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %96

39:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %96

40:                                               ; preds = %3
  %41 = load %union.ip6_fw_if*, %union.ip6_fw_if** %6, align 8
  %42 = bitcast %union.ip6_fw_if* %41 to i32*
  %43 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %94, label %45

45:                                               ; preds = %40
  %46 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %47 = call i32 @ifnet_lock_shared(%struct.ifnet* %46)
  %48 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.ifaddr*, %struct.ifaddr** %50, align 8
  store %struct.ifaddr* %51, %struct.ifaddr** %8, align 8
  br label %52

52:                                               ; preds = %86, %45
  %53 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %54 = icmp ne %struct.ifaddr* %53, null
  br i1 %54, label %55, label %91

55:                                               ; preds = %52
  %56 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %57 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %56)
  %58 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %59 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AF_INET6, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %67 = call i32 @IFA_UNLOCK(%struct.ifaddr* %66)
  br label %86

68:                                               ; preds = %55
  %69 = load %union.ip6_fw_if*, %union.ip6_fw_if** %6, align 8
  %70 = bitcast %union.ip6_fw_if* %69 to i32*
  %71 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %72 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = bitcast %struct.TYPE_8__* %73 to %struct.sockaddr_in6*
  %75 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %74, i32 0, i32 0
  %76 = call i32 @IN6_ARE_ADDR_EQUAL(i32* %70, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %68
  %79 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %80 = call i32 @IFA_UNLOCK(%struct.ifaddr* %79)
  br label %86

81:                                               ; preds = %68
  %82 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %83 = call i32 @IFA_UNLOCK(%struct.ifaddr* %82)
  %84 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %85 = call i32 @ifnet_lock_done(%struct.ifnet* %84)
  store i32 1, i32* %4, align 4
  br label %96

86:                                               ; preds = %78, %65
  %87 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %88 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.ifaddr*, %struct.ifaddr** %89, align 8
  store %struct.ifaddr* %90, %struct.ifaddr** %8, align 8
  br label %52

91:                                               ; preds = %52
  %92 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %93 = call i32 @ifnet_lock_done(%struct.ifnet* %92)
  store i32 0, i32* %4, align 4
  br label %96

94:                                               ; preds = %40
  br label %95

95:                                               ; preds = %94
  store i32 1, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %91, %81, %39, %38, %26
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @IFA_LOCK_SPIN(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
