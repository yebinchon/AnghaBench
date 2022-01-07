; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_chr_is_empty.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_chr_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer_svc = type { i32 }
%struct.peer_chr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chr_is_empty(%struct.peer_svc* %0, %struct.peer_chr* %1) #0 {
  %3 = alloca %struct.peer_svc*, align 8
  %4 = alloca %struct.peer_chr*, align 8
  store %struct.peer_svc* %0, %struct.peer_svc** %3, align 8
  store %struct.peer_chr* %1, %struct.peer_chr** %4, align 8
  %5 = load %struct.peer_svc*, %struct.peer_svc** %3, align 8
  %6 = load %struct.peer_chr*, %struct.peer_chr** %4, align 8
  %7 = call i64 @chr_end_handle(%struct.peer_svc* %5, %struct.peer_chr* %6)
  %8 = load %struct.peer_chr*, %struct.peer_chr** %4, align 8
  %9 = getelementptr inbounds %struct.peer_chr, %struct.peer_chr* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %7, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i64 @chr_end_handle(%struct.peer_svc*, %struct.peer_chr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
