; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_check_pktinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_check_pktinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32, i64 }
%struct.in_addr = type { i32 }
%struct.cmsghdr = type { i32, i64, i64 }
%struct.in_pktinfo = type { i32, %struct.in_addr }

@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i64 0, align 8
@IP_PKTINFO = common dso_local global i64 0, align 8
@if_index = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ifindex2ifnet = common dso_local global %struct.ifnet** null, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.ifnet**, %struct.in_addr*)* @udp_check_pktinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_check_pktinfo(%struct.mbuf* %0, %struct.ifnet** %1, %struct.in_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ifnet**, align 8
  %7 = alloca %struct.in_addr*, align 8
  %8 = alloca %struct.cmsghdr*, align 8
  %9 = alloca %struct.in_pktinfo*, align 8
  %10 = alloca %struct.ifnet*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store %struct.ifnet** %1, %struct.ifnet*** %6, align 8
  store %struct.in_addr* %2, %struct.in_addr** %7, align 8
  store %struct.cmsghdr* null, %struct.cmsghdr** %8, align 8
  %11 = load %struct.ifnet**, %struct.ifnet*** %6, align 8
  %12 = icmp ne %struct.ifnet** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.ifnet**, %struct.ifnet*** %6, align 8
  store %struct.ifnet* null, %struct.ifnet** %14, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %130

22:                                               ; preds = %15
  %23 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @CMSG_LEN(i32 0)
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %130

30:                                               ; preds = %22
  %31 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %32 = call %struct.cmsghdr* @M_FIRST_CMSGHDR(%struct.mbuf* %31)
  store %struct.cmsghdr* %32, %struct.cmsghdr** %8, align 8
  br label %33

33:                                               ; preds = %125, %30
  %34 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %35 = icmp ne %struct.cmsghdr* %34, null
  br i1 %35, label %36, label %129

36:                                               ; preds = %33
  %37 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %38 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %40, 24
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %44 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42, %36
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %4, align 4
  br label %130

52:                                               ; preds = %42
  %53 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %54 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IPPROTO_IP, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %60 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IP_PKTINFO, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %52
  br label %125

65:                                               ; preds = %58
  %66 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %67 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @CMSG_LEN(i32 8)
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %4, align 4
  br label %130

73:                                               ; preds = %65
  %74 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %75 = call i64 @CMSG_DATA(%struct.cmsghdr* %74)
  %76 = inttoptr i64 %75 to i8*
  %77 = bitcast i8* %76 to %struct.in_pktinfo*
  store %struct.in_pktinfo* %77, %struct.in_pktinfo** %9, align 8
  %78 = call i32 (...) @ifnet_head_lock_shared()
  %79 = load %struct.in_pktinfo*, %struct.in_pktinfo** %9, align 8
  %80 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @if_index, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = call i32 (...) @ifnet_head_done()
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %4, align 4
  br label %130

87:                                               ; preds = %73
  %88 = load %struct.in_pktinfo*, %struct.in_pktinfo** %9, align 8
  %89 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %118

92:                                               ; preds = %87
  %93 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %94 = load %struct.in_pktinfo*, %struct.in_pktinfo** %9, align 8
  %95 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %93, i64 %97
  %99 = load %struct.ifnet*, %struct.ifnet** %98, align 8
  store %struct.ifnet* %99, %struct.ifnet** %10, align 8
  %100 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %101 = icmp eq %struct.ifnet* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = call i32 (...) @ifnet_head_done()
  %104 = load i32, i32* @ENXIO, align 4
  store i32 %104, i32* %4, align 4
  br label %130

105:                                              ; preds = %92
  %106 = load %struct.ifnet**, %struct.ifnet*** %6, align 8
  %107 = icmp ne %struct.ifnet** %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %110 = call i32 @ifnet_reference(%struct.ifnet* %109)
  %111 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %112 = load %struct.ifnet**, %struct.ifnet*** %6, align 8
  store %struct.ifnet* %111, %struct.ifnet** %112, align 8
  br label %113

113:                                              ; preds = %108, %105
  %114 = call i32 (...) @ifnet_head_done()
  %115 = load i32, i32* @INADDR_ANY, align 4
  %116 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %117 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %129

118:                                              ; preds = %87
  %119 = call i32 (...) @ifnet_head_done()
  %120 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %121 = load %struct.in_pktinfo*, %struct.in_pktinfo** %9, align 8
  %122 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %121, i32 0, i32 1
  %123 = bitcast %struct.in_addr* %120 to i8*
  %124 = bitcast %struct.in_addr* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 4, i1 false)
  br label %129

125:                                              ; preds = %64
  %126 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %127 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %128 = call %struct.cmsghdr* @M_NXT_CMSGHDR(%struct.mbuf* %126, %struct.cmsghdr* %127)
  store %struct.cmsghdr* %128, %struct.cmsghdr** %8, align 8
  br label %33

129:                                              ; preds = %118, %113, %33
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %102, %84, %71, %50, %28, %20
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local %struct.cmsghdr* @M_FIRST_CMSGHDR(%struct.mbuf*) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local i32 @ifnet_reference(%struct.ifnet*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.cmsghdr* @M_NXT_CMSGHDR(%struct.mbuf*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
