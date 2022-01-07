; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_ifupdstatus.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_ifupdstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i32 }
%struct.bstp_port = type { i32, i32, i64, i64, i32, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 (%struct.ifnet*, i32, i32)*, i32 }
%struct.ifmediareq = type { i32, i32 }

@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@BSTP_PORT_AUTOPTP = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@BSTP_PORT_PNDCOST = common dso_local global i32 0, align 4
@BSTP_ROLE_DISABLED = common dso_local global i64 0, align 8
@BSTP_PORT_ADMEDGE = common dso_local global i32 0, align 4
@BSTP_PROTO_RSTP = common dso_local global i64 0, align 8
@BSTP_INFO_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_state*, %struct.bstp_port*)* @bstp_ifupdstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_ifupdstatus(%struct.bstp_state* %0, %struct.bstp_port* %1) #0 {
  %3 = alloca %struct.bstp_state*, align 8
  %4 = alloca %struct.bstp_port*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.ifmediareq, align 4
  %7 = alloca i32, align 4
  store %struct.bstp_state* %0, %struct.bstp_state** %3, align 8
  store %struct.bstp_port* %1, %struct.bstp_port** %4, align 8
  %8 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %9 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %8, i32 0, i32 7
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %12 = call i32 @BSTP_LOCK_ASSERT(%struct.bstp_state* %11)
  %13 = bitcast %struct.ifmediareq* %6 to i8*
  %14 = call i32 @bzero(i8* %13, i32 8)
  %15 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32 (%struct.ifnet*, i32, i32)*, i32 (%struct.ifnet*, i32, i32)** %16, align 8
  %18 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %19 = load i32, i32* @SIOCGIFMEDIA, align 4
  %20 = ptrtoint %struct.ifmediareq* %6 to i32
  %21 = call i32 %17(%struct.ifnet* %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %111

24:                                               ; preds = %2
  %25 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IFF_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %111

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFM_ACTIVE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %83

37:                                               ; preds = %31
  %38 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %39 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BSTP_PORT_AUTOPTP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFM_FDX, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %53 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %44, %37
  %55 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %56 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BSTP_PORT_PNDCOST, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %63 = call i32 @bstp_calc_path_cost(%struct.bstp_port* %62)
  %64 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %65 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @BSTP_PORT_PNDCOST, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %69 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %61, %54
  %73 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %74 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BSTP_ROLE_DISABLED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %80 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %81 = call i32 @bstp_enable_port(%struct.bstp_state* %79, %struct.bstp_port* %80)
  br label %82

82:                                               ; preds = %78, %72
  br label %110

83:                                               ; preds = %31
  %84 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %85 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @BSTP_ROLE_DISABLED, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %83
  %90 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %91 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %92 = call i32 @bstp_disable_port(%struct.bstp_state* %90, %struct.bstp_port* %91)
  %93 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %94 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BSTP_PORT_ADMEDGE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %89
  %100 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %101 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @BSTP_PROTO_RSTP, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %107 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %106, i32 0, i32 4
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %99, %89
  br label %109

109:                                              ; preds = %108, %83
  br label %110

110:                                              ; preds = %109, %82
  br label %121

111:                                              ; preds = %24, %2
  %112 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %113 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @BSTP_INFO_DISABLED, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %119 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %120 = call i32 @bstp_disable_port(%struct.bstp_state* %118, %struct.bstp_port* %119)
  br label %121

121:                                              ; preds = %110, %117, %111
  ret void
}

declare dso_local i32 @BSTP_LOCK_ASSERT(%struct.bstp_state*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @bstp_calc_path_cost(%struct.bstp_port*) #1

declare dso_local i32 @bstp_enable_port(%struct.bstp_state*, %struct.bstp_port*) #1

declare dso_local i32 @bstp_disable_port(%struct.bstp_state*, %struct.bstp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
