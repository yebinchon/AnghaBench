; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_stf.c_stf_checkaddr4.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_stf.c_stf_checkaddr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stf_softc = type { i32 }
%struct.in_addr = type { i64 }
%struct.ifnet = type { i32 }
%struct.in_ifaddr = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.sockaddr_in = type { i32, %struct.in_addr, i32 }
%struct.rtentry = type { %struct.ifnet* }
%struct.sockaddr = type { i32 }

@in_ifaddr_rwlock = common dso_local global i32 0, align 4
@in_ifaddrhead = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@ia_link = common dso_local global i32 0, align 4
@IFF_LINK2 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: packet from 0x%x dropped due to ingress filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stf_softc*, %struct.in_addr*, %struct.ifnet*)* @stf_checkaddr4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stf_checkaddr4(%struct.stf_softc* %0, %struct.in_addr* %1, %struct.ifnet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stf_softc*, align 8
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.in_ifaddr*, align 8
  %9 = alloca %struct.sockaddr_in, align 8
  %10 = alloca %struct.rtentry*, align 8
  store %struct.stf_softc* %0, %struct.stf_softc** %5, align 8
  store %struct.in_addr* %1, %struct.in_addr** %6, align 8
  store %struct.ifnet* %2, %struct.ifnet** %7, align 8
  %11 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %12 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @ntohl(i64 %13)
  %15 = call i64 @IN_MULTICAST(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %140

18:                                               ; preds = %3
  %19 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ntohl(i64 %21)
  %23 = and i32 %22, -16777216
  %24 = lshr i32 %23, 24
  switch i32 %24, label %26 [
    i32 0, label %25
    i32 127, label %25
    i32 255, label %25
  ]

25:                                               ; preds = %18, %18, %18
  store i32 -1, i32* %4, align 4
  br label %140

26:                                               ; preds = %18
  %27 = load i32, i32* @in_ifaddr_rwlock, align 4
  %28 = call i32 @lck_rw_lock_shared(i32 %27)
  %29 = call %struct.in_ifaddr* @TAILQ_FIRST(i32* @in_ifaddrhead)
  store %struct.in_ifaddr* %29, %struct.in_ifaddr** %8, align 8
  br label %30

30:                                               ; preds = %70, %26
  %31 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %32 = icmp ne %struct.in_ifaddr* %31, null
  br i1 %32, label %33, label %74

33:                                               ; preds = %30
  %34 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %35 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %34, i32 0, i32 0
  %36 = call i32 @IFA_LOCK(%struct.TYPE_9__* %35)
  %37 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %38 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_BROADCAST, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %48 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %47, i32 0, i32 0
  %49 = call i32 @IFA_UNLOCK(%struct.TYPE_9__* %48)
  br label %70

50:                                               ; preds = %33
  %51 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %52 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %55 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %53, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %62 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %61, i32 0, i32 0
  %63 = call i32 @IFA_UNLOCK(%struct.TYPE_9__* %62)
  %64 = load i32, i32* @in_ifaddr_rwlock, align 4
  %65 = call i32 @lck_rw_done(i32 %64)
  store i32 -1, i32* %4, align 4
  br label %140

66:                                               ; preds = %50
  %67 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %68 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %67, i32 0, i32 0
  %69 = call i32 @IFA_UNLOCK(%struct.TYPE_9__* %68)
  br label %70

70:                                               ; preds = %66, %46
  %71 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %72 = load i32, i32* @ia_link, align 4
  %73 = call %struct.in_ifaddr* @TAILQ_NEXT(%struct.in_ifaddr* %71, i32 %72)
  store %struct.in_ifaddr* %73, %struct.in_ifaddr** %8, align 8
  br label %30

74:                                               ; preds = %30
  %75 = load i32, i32* @in_ifaddr_rwlock, align 4
  %76 = call i32 @lck_rw_done(i32 %75)
  %77 = load %struct.stf_softc*, %struct.stf_softc** %5, align 8
  %78 = icmp ne %struct.stf_softc* %77, null
  br i1 %78, label %79, label %139

79:                                               ; preds = %74
  %80 = load %struct.stf_softc*, %struct.stf_softc** %5, align 8
  %81 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ifnet_flags(i32 %82)
  %84 = load i32, i32* @IFF_LINK2, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %139

87:                                               ; preds = %79
  %88 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %89 = icmp ne %struct.ifnet* %88, null
  br i1 %89, label %90, label %139

90:                                               ; preds = %87
  %91 = call i32 @bzero(%struct.sockaddr_in* %9, i32 24)
  %92 = load i32, i32* @AF_INET, align 4
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i32 24, i32* %94, align 8
  %95 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %96 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %97 = bitcast %struct.in_addr* %95 to i8*
  %98 = bitcast %struct.in_addr* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 8, i1 false)
  %99 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %100 = call %struct.rtentry* @rtalloc1(%struct.sockaddr* %99, i32 0, i32 0)
  store %struct.rtentry* %100, %struct.rtentry** %10, align 8
  %101 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %102 = icmp ne %struct.rtentry* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %90
  %104 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %105 = call i32 @RT_LOCK(%struct.rtentry* %104)
  br label %106

106:                                              ; preds = %103, %90
  %107 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %108 = icmp eq %struct.rtentry* %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %111 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %110, i32 0, i32 0
  %112 = load %struct.ifnet*, %struct.ifnet** %111, align 8
  %113 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %114 = icmp ne %struct.ifnet* %112, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %109, %106
  %116 = load i32, i32* @LOG_WARNING, align 4
  %117 = load %struct.stf_softc*, %struct.stf_softc** %5, align 8
  %118 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @if_name(i32 %119)
  %121 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %122 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @ntohl(i64 %123)
  %125 = call i32 @log(i32 %116, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %124)
  %126 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %127 = icmp ne %struct.rtentry* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %115
  %129 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %130 = call i32 @RT_UNLOCK(%struct.rtentry* %129)
  %131 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %132 = call i32 @rtfree(%struct.rtentry* %131)
  br label %133

133:                                              ; preds = %128, %115
  store i32 -1, i32* %4, align 4
  br label %140

134:                                              ; preds = %109
  %135 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %136 = call i32 @RT_UNLOCK(%struct.rtentry* %135)
  %137 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %138 = call i32 @rtfree(%struct.rtentry* %137)
  br label %139

139:                                              ; preds = %134, %87, %79, %74
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %139, %133, %60, %25, %17
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i64 @IN_MULTICAST(i32) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @lck_rw_lock_shared(i32) #1

declare dso_local %struct.in_ifaddr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @IFA_LOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local %struct.in_ifaddr* @TAILQ_NEXT(%struct.in_ifaddr*, i32) #1

declare dso_local i32 @ifnet_flags(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.rtentry* @rtalloc1(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @if_name(i32) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
