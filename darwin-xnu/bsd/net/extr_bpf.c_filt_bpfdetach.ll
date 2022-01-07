; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_filt_bpfdetach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_filt_bpfdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64 }
%struct.bpf_d = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@bpf_mlock = common dso_local global i32 0, align 4
@BPF_KNOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @filt_bpfdetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_bpfdetach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.bpf_d*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %4 = load %struct.knote*, %struct.knote** %2, align 8
  %5 = getelementptr inbounds %struct.knote, %struct.knote* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.bpf_d*
  store %struct.bpf_d* %7, %struct.bpf_d** %3, align 8
  %8 = load i32, i32* @bpf_mlock, align 4
  %9 = call i32 @lck_mtx_lock(i32 %8)
  %10 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %11 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BPF_KNOTE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %18 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.knote*, %struct.knote** %2, align 8
  %21 = call i32 @KNOTE_DETACH(i32* %19, %struct.knote* %20)
  %22 = load i32, i32* @BPF_KNOTE, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %25 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %16, %1
  %29 = load i32, i32* @bpf_mlock, align 4
  %30 = call i32 @lck_mtx_unlock(i32 %29)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @KNOTE_DETACH(i32*, %struct.knote*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
