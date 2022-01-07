; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_net.c_mac_bpfdesc_label_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_net.c_mac_bpfdesc_label_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i32 }
%struct.label = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_bpfdesc_label_init(%struct.bpf_d* %0) #0 {
  %2 = alloca %struct.bpf_d*, align 8
  %3 = alloca %struct.label*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %2, align 8
  %4 = call %struct.label* (...) @mac_bpfdesc_label_alloc()
  store %struct.label* %4, %struct.label** %3, align 8
  %5 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %6 = load %struct.label*, %struct.label** %3, align 8
  %7 = call i32 @mac_bpfdesc_label_set(%struct.bpf_d* %5, %struct.label* %6)
  ret void
}

declare dso_local %struct.label* @mac_bpfdesc_label_alloc(...) #1

declare dso_local i32 @mac_bpfdesc_label_set(%struct.bpf_d*, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
