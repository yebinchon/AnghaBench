; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_finalize_pktap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_finalize_pktap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_hdr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pktap_header = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pktap_v2_hdr = type { i32 }

@PTH_FLAG_V2_HDR = common dso_local global i32 0, align 4
@PTH_FLAG_DELAY_PKTAP = common dso_local global i32 0, align 4
@PTH_FLAG_TSTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_hdr*, %struct.pktap_header*)* @bpf_finalize_pktap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_finalize_pktap(%struct.bpf_hdr* %0, %struct.pktap_header* %1) #0 {
  %3 = alloca %struct.bpf_hdr*, align 8
  %4 = alloca %struct.pktap_header*, align 8
  %5 = alloca %struct.pktap_v2_hdr*, align 8
  store %struct.bpf_hdr* %0, %struct.bpf_hdr** %3, align 8
  store %struct.pktap_header* %1, %struct.pktap_header** %4, align 8
  %6 = load %struct.pktap_header*, %struct.pktap_header** %4, align 8
  %7 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PTH_FLAG_V2_HDR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.pktap_header*, %struct.pktap_header** %4, align 8
  %14 = bitcast %struct.pktap_header* %13 to %struct.pktap_v2_hdr*
  store %struct.pktap_v2_hdr* %14, %struct.pktap_v2_hdr** %5, align 8
  %15 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PTH_FLAG_DELAY_PKTAP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %5, align 8
  %23 = call i32 @pktap_v2_finalize_proc_info(%struct.pktap_v2_hdr* %22)
  br label %24

24:                                               ; preds = %21, %12
  br label %58

25:                                               ; preds = %2
  %26 = load %struct.pktap_header*, %struct.pktap_header** %4, align 8
  %27 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PTH_FLAG_DELAY_PKTAP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.pktap_header*, %struct.pktap_header** %4, align 8
  %34 = call i32 @pktap_finalize_proc_info(%struct.pktap_header* %33)
  br label %35

35:                                               ; preds = %32, %25
  %36 = load %struct.pktap_header*, %struct.pktap_header** %4, align 8
  %37 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PTH_FLAG_TSTAMP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load %struct.pktap_header*, %struct.pktap_header** %4, align 8
  %44 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bpf_hdr*, %struct.bpf_hdr** %3, align 8
  %48 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.pktap_header*, %struct.pktap_header** %4, align 8
  %51 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bpf_hdr*, %struct.bpf_hdr** %3, align 8
  %55 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %42, %35
  br label %58

58:                                               ; preds = %57, %24
  ret void
}

declare dso_local i32 @pktap_v2_finalize_proc_info(%struct.pktap_v2_hdr*) #1

declare dso_local i32 @pktap_finalize_proc_info(%struct.pktap_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
