; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_net.c_mac_bpfdesc_label_associate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_net.c_mac_bpfdesc_label_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.bpf_d = type { i32 }
%struct.label = type { i32 }

@bpfdesc_label_associate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_bpfdesc_label_associate(%struct.ucred* %0, %struct.bpf_d* %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.bpf_d*, align 8
  %5 = alloca %struct.label*, align 8
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store %struct.bpf_d* %1, %struct.bpf_d** %4, align 8
  %6 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %7 = call %struct.label* @mac_bpfdesc_label_get(%struct.bpf_d* %6)
  store %struct.label* %7, %struct.label** %5, align 8
  %8 = load i32, i32* @bpfdesc_label_associate, align 4
  %9 = load %struct.ucred*, %struct.ucred** %3, align 8
  %10 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %11 = load %struct.label*, %struct.label** %5, align 8
  %12 = call i32 @MAC_PERFORM(i32 %8, %struct.ucred* %9, %struct.bpf_d* %10, %struct.label* %11)
  ret void
}

declare dso_local %struct.label* @mac_bpfdesc_label_get(%struct.bpf_d*) #1

declare dso_local i32 @MAC_PERFORM(i32, %struct.ucred*, %struct.bpf_d*, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
