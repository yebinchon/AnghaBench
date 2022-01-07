; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_set_ip6oa_for_interface.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_set_ip6oa_for_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_out_args = type { i32, i32 }
%struct.ipsec_pcb = type { i64 }

@net_qos_policy_restricted = common dso_local global i64 0, align 8
@IPOAF_QOSMARKING_ALLOWED = common dso_local global i32 0, align 4
@MBUF_SC_VO = common dso_local global i64 0, align 8
@net_qos_policy_restrict_avapps = common dso_local global i64 0, align 8
@IP6OAF_QOSMARKING_ALLOWED = common dso_local global i32 0, align 4
@SO_TC_VO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipsec_set_ip6oa_for_interface(i32* %0, %struct.ip6_out_args* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ip6_out_args*, align 8
  %5 = alloca %struct.ipsec_pcb*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ip6_out_args* %1, %struct.ip6_out_args** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.ip6_out_args*, %struct.ip6_out_args** %4, align 8
  %10 = icmp eq %struct.ip6_out_args* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %55

12:                                               ; preds = %8
  %13 = load i32*, i32** %3, align 8
  %14 = call %struct.ipsec_pcb* @ifnet_softc(i32* %13)
  store %struct.ipsec_pcb* %14, %struct.ipsec_pcb** %5, align 8
  %15 = load i64, i64* @net_qos_policy_restricted, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i32, i32* @IPOAF_QOSMARKING_ALLOWED, align 4
  %19 = load %struct.ip6_out_args*, %struct.ip6_out_args** %4, align 8
  %20 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ipsec_pcb*, %struct.ipsec_pcb** %5, align 8
  %24 = getelementptr inbounds %struct.ipsec_pcb, %struct.ipsec_pcb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @so_svc2tc(i64 %25)
  %27 = load %struct.ip6_out_args*, %struct.ip6_out_args** %4, align 8
  %28 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %55

29:                                               ; preds = %12
  %30 = load %struct.ipsec_pcb*, %struct.ipsec_pcb** %5, align 8
  %31 = getelementptr inbounds %struct.ipsec_pcb, %struct.ipsec_pcb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MBUF_SC_VO, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* @net_qos_policy_restrict_avapps, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35, %29
  %39 = load i32, i32* @IPOAF_QOSMARKING_ALLOWED, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ip6_out_args*, %struct.ip6_out_args** %4, align 8
  %42 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %54

45:                                               ; preds = %35
  %46 = load i32, i32* @IP6OAF_QOSMARKING_ALLOWED, align 4
  %47 = load %struct.ip6_out_args*, %struct.ip6_out_args** %4, align 8
  %48 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @SO_TC_VO, align 4
  %52 = load %struct.ip6_out_args*, %struct.ip6_out_args** %4, align 8
  %53 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %38
  br label %55

55:                                               ; preds = %11, %54, %17
  ret void
}

declare dso_local %struct.ipsec_pcb* @ifnet_softc(i32*) #1

declare dso_local i32 @so_svc2tc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
