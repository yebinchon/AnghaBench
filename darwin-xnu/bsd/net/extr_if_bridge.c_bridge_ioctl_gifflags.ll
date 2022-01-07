; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_gifflags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_gifflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32 }
%struct.ifbreq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bridge_iflist = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.bstp_port }
%struct.TYPE_2__ = type { i32 }
%struct.bstp_port = type { i32, i64, i64, i32, i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@IFBIF_BSTP_EDGE = common dso_local global i32 0, align 4
@BSTP_PORT_AUTOEDGE = common dso_local global i32 0, align 4
@IFBIF_BSTP_AUTOEDGE = common dso_local global i32 0, align 4
@IFBIF_BSTP_PTP = common dso_local global i32 0, align 4
@BSTP_PORT_AUTOPTP = common dso_local global i32 0, align 4
@IFBIF_BSTP_AUTOPTP = common dso_local global i32 0, align 4
@BSTP_PORT_ADMEDGE = common dso_local global i32 0, align 4
@IFBIF_BSTP_ADMEDGE = common dso_local global i32 0, align 4
@BSTP_PORT_ADMCOST = common dso_local global i32 0, align 4
@IFBIF_BSTP_ADMCOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, i8*)* @bridge_ioctl_gifflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_ioctl_gifflags(%struct.bridge_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifbreq*, align 8
  %7 = alloca %struct.bridge_iflist*, align 8
  %8 = alloca %struct.bstp_port*, align 8
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ifbreq*
  store %struct.ifbreq* %10, %struct.ifbreq** %6, align 8
  %11 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %12 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %13 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc* %11, i32 %14)
  store %struct.bridge_iflist* %15, %struct.bridge_iflist** %7, align 8
  %16 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %17 = icmp eq %struct.bridge_iflist* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %3, align 4
  br label %160

20:                                               ; preds = %2
  %21 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %22 = call i64 @bridge_in_bsd_mode(%struct.bridge_softc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %131

24:                                               ; preds = %20
  %25 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %26 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %25, i32 0, i32 5
  store %struct.bstp_port* %26, %struct.bstp_port** %8, align 8
  %27 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %28 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %31 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %33 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %36 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %38 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %41 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %43 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %46 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %48 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %51 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %53 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %56 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %58 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %24
  %62 = load i32, i32* @IFBIF_BSTP_EDGE, align 4
  %63 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %64 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %24
  %68 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %69 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BSTP_PORT_AUTOEDGE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @IFBIF_BSTP_AUTOEDGE, align 4
  %76 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %77 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %82 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* @IFBIF_BSTP_PTP, align 4
  %87 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %88 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %80
  %92 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %93 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BSTP_PORT_AUTOPTP, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* @IFBIF_BSTP_AUTOPTP, align 4
  %100 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %101 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %91
  %105 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %106 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @BSTP_PORT_ADMEDGE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32, i32* @IFBIF_BSTP_ADMEDGE, align 4
  %113 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %114 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %104
  %118 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %119 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @BSTP_PORT_ADMCOST, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load i32, i32* @IFBIF_BSTP_ADMCOST, align 4
  %126 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %127 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %117
  br label %131

131:                                              ; preds = %130, %20
  %132 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %133 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %136 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  %137 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %138 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %137, i32 0, i32 3
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 4095
  %143 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %144 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %146 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %149 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  %150 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %151 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %154 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %156 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %159 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %131, %18
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc*, i32) #1

declare dso_local i64 @bridge_in_bsd_mode(%struct.bridge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
