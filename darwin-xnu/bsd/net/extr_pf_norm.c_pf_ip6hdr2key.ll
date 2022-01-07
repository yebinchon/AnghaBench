; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_ip6hdr2key.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_ip6hdr2key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ip6_hdr = type { i32, i32 }
%struct.ip6_frag = type { i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_fragment*, %struct.ip6_hdr*, %struct.ip6_frag*)* @pf_ip6hdr2key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_ip6hdr2key(%struct.pf_fragment* %0, %struct.ip6_hdr* %1, %struct.ip6_frag* %2) #0 {
  %4 = alloca %struct.pf_fragment*, align 8
  %5 = alloca %struct.ip6_hdr*, align 8
  %6 = alloca %struct.ip6_frag*, align 8
  store %struct.pf_fragment* %0, %struct.pf_fragment** %4, align 8
  store %struct.ip6_hdr* %1, %struct.ip6_hdr** %5, align 8
  store %struct.ip6_frag* %2, %struct.ip6_frag** %6, align 8
  %7 = load %struct.ip6_frag*, %struct.ip6_frag** %6, align 8
  %8 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %11 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ip6_frag*, %struct.ip6_frag** %6, align 8
  %13 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %16 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @AF_INET6, align 4
  %18 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %19 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ip6_hdr*, %struct.ip6_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %24 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.ip6_hdr*, %struct.ip6_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %30 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
