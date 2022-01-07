; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_received_stp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_received_stp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i32 }
%struct.bstp_port = type { %struct.bstp_config_unit }
%struct.bstp_config_unit = type { i32 }
%struct.mbuf = type { i32 }
%struct.bstp_tbpdu = type { i32 }
%struct.bstp_cbpdu = type { i32 }
%struct.bstp_tcn_unit = type { i32 }

@BSTP_BPDU_STP_LEN = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_state*, %struct.bstp_port*, %struct.mbuf**, %struct.bstp_tbpdu*)* @bstp_received_stp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_received_stp(%struct.bstp_state* %0, %struct.bstp_port* %1, %struct.mbuf** %2, %struct.bstp_tbpdu* %3) #0 {
  %5 = alloca %struct.bstp_state*, align 8
  %6 = alloca %struct.bstp_port*, align 8
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca %struct.bstp_tbpdu*, align 8
  %9 = alloca %struct.bstp_cbpdu, align 4
  %10 = alloca %struct.bstp_config_unit*, align 8
  %11 = alloca %struct.bstp_tcn_unit, align 4
  store %struct.bstp_state* %0, %struct.bstp_state** %5, align 8
  store %struct.bstp_port* %1, %struct.bstp_port** %6, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %7, align 8
  store %struct.bstp_tbpdu* %3, %struct.bstp_tbpdu** %8, align 8
  %12 = load %struct.bstp_port*, %struct.bstp_port** %6, align 8
  %13 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %12, i32 0, i32 0
  store %struct.bstp_config_unit* %13, %struct.bstp_config_unit** %10, align 8
  %14 = load %struct.bstp_tbpdu*, %struct.bstp_tbpdu** %8, align 8
  %15 = getelementptr inbounds %struct.bstp_tbpdu, %struct.bstp_tbpdu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %54 [
    i32 128, label %17
    i32 129, label %25
  ]

17:                                               ; preds = %4
  %18 = load %struct.bstp_tbpdu*, %struct.bstp_tbpdu** %8, align 8
  %19 = getelementptr inbounds %struct.bstp_tbpdu, %struct.bstp_tbpdu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.bstp_tcn_unit, %struct.bstp_tcn_unit* %11, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.bstp_state*, %struct.bstp_state** %5, align 8
  %23 = load %struct.bstp_port*, %struct.bstp_port** %6, align 8
  %24 = call i32 @bstp_received_tcn(%struct.bstp_state* %22, %struct.bstp_port* %23, %struct.bstp_tcn_unit* %11)
  br label %54

25:                                               ; preds = %4
  %26 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BSTP_BPDU_STP_LEN, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %33, align 8
  %35 = load i32, i32* @BSTP_BPDU_STP_LEN, align 4
  %36 = call %struct.mbuf* @m_pullup(%struct.mbuf* %34, i32 %35)
  %37 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %36, %struct.mbuf** %37, align 8
  %38 = icmp eq %struct.mbuf* %36, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %54

40:                                               ; preds = %32, %25
  %41 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %41, align 8
  %43 = load i32, i32* @caddr_t, align 4
  %44 = call i32 @mtod(%struct.mbuf* %42, i32 %43)
  %45 = load i32, i32* @BSTP_BPDU_STP_LEN, align 4
  %46 = call i32 @memcpy(%struct.bstp_cbpdu* %9, i32 %44, i32 %45)
  %47 = load %struct.bstp_port*, %struct.bstp_port** %6, align 8
  %48 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %10, align 8
  %49 = call i32 @bstp_decode_bpdu(%struct.bstp_port* %47, %struct.bstp_cbpdu* %9, %struct.bstp_config_unit* %48)
  %50 = load %struct.bstp_state*, %struct.bstp_state** %5, align 8
  %51 = load %struct.bstp_port*, %struct.bstp_port** %6, align 8
  %52 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %10, align 8
  %53 = call i32 @bstp_received_bpdu(%struct.bstp_state* %50, %struct.bstp_port* %51, %struct.bstp_config_unit* %52)
  br label %54

54:                                               ; preds = %39, %4, %40, %17
  ret void
}

declare dso_local i32 @bstp_received_tcn(%struct.bstp_state*, %struct.bstp_port*, %struct.bstp_tcn_unit*) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i32) #1

declare dso_local i32 @memcpy(%struct.bstp_cbpdu*, i32, i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @bstp_decode_bpdu(%struct.bstp_port*, %struct.bstp_cbpdu*, %struct.bstp_config_unit*) #1

declare dso_local i32 @bstp_received_bpdu(%struct.bstp_state*, %struct.bstp_port*, %struct.bstp_config_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
