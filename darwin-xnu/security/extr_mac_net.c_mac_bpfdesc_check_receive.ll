; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_net.c_mac_bpfdesc_check_receive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_net.c_mac_bpfdesc_check_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i32 }
%struct.ifnet = type { i32 }
%struct.label = type { i32 }

@bpfdesc_check_receive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_bpfdesc_check_receive(%struct.bpf_d* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.bpf_d*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.label*, align 8
  %6 = alloca i32, align 4
  store %struct.bpf_d* %0, %struct.bpf_d** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %7 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %8 = call %struct.label* @mac_bpfdesc_label_get(%struct.bpf_d* %7)
  store %struct.label* %8, %struct.label** %5, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = call i32 @ifnet_lock_shared(%struct.ifnet* %9)
  %11 = load i32, i32* @bpfdesc_check_receive, align 4
  %12 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %13 = load %struct.label*, %struct.label** %5, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MAC_CHECK(i32 %11, %struct.bpf_d* %12, %struct.label* %13, %struct.ifnet* %14, i32 %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = call i32 @ifnet_lock_done(%struct.ifnet* %19)
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local %struct.label* @mac_bpfdesc_label_get(%struct.bpf_d*) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @MAC_CHECK(i32, %struct.bpf_d*, %struct.label*, %struct.ifnet*, i32) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
