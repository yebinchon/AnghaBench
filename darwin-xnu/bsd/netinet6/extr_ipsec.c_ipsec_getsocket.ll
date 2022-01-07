; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ipsec.c_ipsec_getsocket.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ipsec.c_ipsec_getsocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mbuf = type { i32 }
%struct.ipsec_tag = type { %struct.socket* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.socket* @ipsec_getsocket(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ipsec_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %6 = call %struct.ipsec_tag* @ipsec_findaux(%struct.mbuf* %5)
  store %struct.ipsec_tag* %6, %struct.ipsec_tag** %4, align 8
  %7 = load %struct.ipsec_tag*, %struct.ipsec_tag** %4, align 8
  %8 = icmp ne %struct.ipsec_tag* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.ipsec_tag*, %struct.ipsec_tag** %4, align 8
  %11 = getelementptr inbounds %struct.ipsec_tag, %struct.ipsec_tag* %10, i32 0, i32 0
  %12 = load %struct.socket*, %struct.socket** %11, align 8
  store %struct.socket* %12, %struct.socket** %2, align 8
  br label %14

13:                                               ; preds = %1
  store %struct.socket* null, %struct.socket** %2, align 8
  br label %14

14:                                               ; preds = %13, %9
  %15 = load %struct.socket*, %struct.socket** %2, align 8
  ret %struct.socket* %15
}

declare dso_local %struct.ipsec_tag* @ipsec_findaux(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
