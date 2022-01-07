; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_gif.c_gif_validate6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_gif.c_gif_validate6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_hdr = type { i32, i32 }
%struct.gif_softc = type { i32, i64, i64 }
%struct.ifnet = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.rtentry = type { %struct.ifnet* }
%struct.sockaddr = type { i32 }

@IFF_LINK2 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_hdr*, %struct.gif_softc*, %struct.ifnet*)* @gif_validate6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_validate6(%struct.ip6_hdr* %0, %struct.gif_softc* %1, %struct.ifnet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip6_hdr*, align 8
  %6 = alloca %struct.gif_softc*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.sockaddr_in6, align 4
  %11 = alloca %struct.rtentry*, align 8
  store %struct.ip6_hdr* %0, %struct.ip6_hdr** %5, align 8
  store %struct.gif_softc* %1, %struct.gif_softc** %6, align 8
  store %struct.ifnet* %2, %struct.ifnet** %7, align 8
  %12 = load %struct.gif_softc*, %struct.gif_softc** %6, align 8
  %13 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %16, %struct.sockaddr_in6** %8, align 8
  %17 = load %struct.gif_softc*, %struct.gif_softc** %6, align 8
  %18 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %21, %struct.sockaddr_in6** %9, align 8
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 1
  %24 = load %struct.ip6_hdr*, %struct.ip6_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %24, i32 0, i32 1
  %26 = call i32 @IN6_ARE_ADDR_EQUAL(i32* %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 1
  %31 = load %struct.ip6_hdr*, %struct.ip6_hdr** %5, align 8
  %32 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %31, i32 0, i32 0
  %33 = call i32 @IN6_ARE_ADDR_EQUAL(i32* %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28, %3
  store i32 0, i32* %4, align 4
  br label %87

36:                                               ; preds = %28
  %37 = load %struct.gif_softc*, %struct.gif_softc** %6, align 8
  %38 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ifnet_flags(i32 %39)
  %41 = load i32, i32* @IFF_LINK2, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %86

44:                                               ; preds = %36
  %45 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %46 = icmp ne %struct.ifnet* %45, null
  br i1 %46, label %47, label %86

47:                                               ; preds = %44
  %48 = call i32 @bzero(%struct.sockaddr_in6* %10, i32 12)
  %49 = load i32, i32* @AF_INET6, align 4
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 0
  store i32 12, i32* %51, align 4
  %52 = load %struct.ip6_hdr*, %struct.ip6_hdr** %5, align 8
  %53 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = bitcast %struct.sockaddr_in6* %10 to %struct.sockaddr*
  %57 = call %struct.rtentry* @rtalloc1(%struct.sockaddr* %56, i32 0, i32 0)
  store %struct.rtentry* %57, %struct.rtentry** %11, align 8
  %58 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %59 = icmp ne %struct.rtentry* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %62 = call i32 @RT_LOCK(%struct.rtentry* %61)
  br label %63

63:                                               ; preds = %60, %47
  %64 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %65 = icmp ne %struct.rtentry* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %68 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %67, i32 0, i32 0
  %69 = load %struct.ifnet*, %struct.ifnet** %68, align 8
  %70 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %71 = icmp ne %struct.ifnet* %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66, %63
  %73 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %74 = icmp ne %struct.rtentry* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %77 = call i32 @RT_UNLOCK(%struct.rtentry* %76)
  %78 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %79 = call i32 @rtfree(%struct.rtentry* %78)
  br label %80

80:                                               ; preds = %75, %72
  store i32 0, i32* %4, align 4
  br label %87

81:                                               ; preds = %66
  %82 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %83 = call i32 @RT_UNLOCK(%struct.rtentry* %82)
  %84 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %85 = call i32 @rtfree(%struct.rtentry* %84)
  br label %86

86:                                               ; preds = %81, %44, %36
  store i32 256, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %80, %35
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

declare dso_local i32 @ifnet_flags(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local %struct.rtentry* @rtalloc1(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
