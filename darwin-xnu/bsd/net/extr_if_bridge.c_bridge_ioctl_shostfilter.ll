; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_shostfilter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_shostfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bridge_softc = type { i32 }
%struct.ifbrhostfilter = type { i32, i64, i32, i32 }
%struct.bridge_iflist = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@net_api_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@IFBRHF_ENABLED = common dso_local global i32 0, align 4
@BIFF_HOST_FILTER = common dso_local global i32 0, align 4
@IFBRHF_HWSRC = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@ethernulladdr = common dso_local global i32 0, align 4
@BIFF_HF_HWSRC = common dso_local global i32 0, align 4
@IFBRHF_IPSRC = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@BIFF_HF_IPSRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, i8*)* @bridge_ioctl_shostfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_ioctl_shostfilter(%struct.bridge_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifbrhostfilter*, align 8
  %7 = alloca %struct.bridge_iflist*, align 8
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ifbrhostfilter*
  store %struct.ifbrhostfilter* %9, %struct.ifbrhostfilter** %6, align 8
  %10 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %11 = load %struct.ifbrhostfilter*, %struct.ifbrhostfilter** %6, align 8
  %12 = getelementptr inbounds %struct.ifbrhostfilter, %struct.ifbrhostfilter* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc* %10, i32 %13)
  store %struct.bridge_iflist* %14, %struct.bridge_iflist** %7, align 8
  %15 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %16 = icmp eq %struct.bridge_iflist* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  store i32 %18, i32* %3, align 4
  br label %126

19:                                               ; preds = %2
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @net_api_stats, i32 0, i32 0), align 4
  %21 = call i32 @INC_ATOMIC_INT64_LIM(i32 %20)
  %22 = load %struct.ifbrhostfilter*, %struct.ifbrhostfilter** %6, align 8
  %23 = getelementptr inbounds %struct.ifbrhostfilter, %struct.ifbrhostfilter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFBRHF_ENABLED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %105

28:                                               ; preds = %19
  %29 = load i32, i32* @BIFF_HOST_FILTER, align 4
  %30 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %31 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.ifbrhostfilter*, %struct.ifbrhostfilter** %6, align 8
  %35 = getelementptr inbounds %struct.ifbrhostfilter, %struct.ifbrhostfilter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFBRHF_HWSRC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %28
  %41 = load %struct.ifbrhostfilter*, %struct.ifbrhostfilter** %6, align 8
  %42 = getelementptr inbounds %struct.ifbrhostfilter, %struct.ifbrhostfilter* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %45 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %48 = call i32 @bcopy(i32 %43, i32 %46, i32 %47)
  %49 = load %struct.ifbrhostfilter*, %struct.ifbrhostfilter** %6, align 8
  %50 = getelementptr inbounds %struct.ifbrhostfilter, %struct.ifbrhostfilter* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ethernulladdr, align 4
  %53 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %54 = call i64 @bcmp(i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %40
  %57 = load i32, i32* @BIFF_HF_HWSRC, align 4
  %58 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %59 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %69

62:                                               ; preds = %40
  %63 = load i32, i32* @BIFF_HF_HWSRC, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %66 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %62, %56
  br label %70

70:                                               ; preds = %69, %28
  %71 = load %struct.ifbrhostfilter*, %struct.ifbrhostfilter** %6, align 8
  %72 = getelementptr inbounds %struct.ifbrhostfilter, %struct.ifbrhostfilter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IFBRHF_IPSRC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %70
  %78 = load %struct.ifbrhostfilter*, %struct.ifbrhostfilter** %6, align 8
  %79 = getelementptr inbounds %struct.ifbrhostfilter, %struct.ifbrhostfilter* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %82 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %85 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @INADDR_ANY, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %77
  %91 = load i32, i32* @BIFF_HF_IPSRC, align 4
  %92 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %93 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %103

96:                                               ; preds = %77
  %97 = load i32, i32* @BIFF_HF_IPSRC, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %100 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %96, %90
  br label %104

104:                                              ; preds = %103, %70
  br label %125

105:                                              ; preds = %19
  %106 = load i32, i32* @BIFF_HOST_FILTER, align 4
  %107 = load i32, i32* @BIFF_HF_HWSRC, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @BIFF_HF_IPSRC, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %113 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %117 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %120 = call i32 @bzero(i32 %118, i32 %119)
  %121 = load i64, i64* @INADDR_ANY, align 8
  %122 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %123 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  br label %125

125:                                              ; preds = %105, %104
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %17
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc*, i32) #1

declare dso_local i32 @INC_ATOMIC_INT64_LIM(i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i64 @bcmp(i32, i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
