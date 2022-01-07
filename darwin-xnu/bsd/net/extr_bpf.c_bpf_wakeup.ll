; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_wakeup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i64, i32, %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@BPF_WAITING = common dso_local global i64 0, align 8
@BPF_IDLE = common dso_local global i64 0, align 8
@BPF_KNOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_d*)* @bpf_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_wakeup(%struct.bpf_d* %0) #0 {
  %2 = alloca %struct.bpf_d*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %2, align 8
  %3 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %4 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BPF_WAITING, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %10 = call i32 @bpf_stop_timer(%struct.bpf_d* %9)
  %11 = load i64, i64* @BPF_IDLE, align 8
  %12 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %13 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %16 = ptrtoint %struct.bpf_d* %15 to i32
  %17 = call i32 @wakeup(i32 %16)
  %18 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %19 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %14
  %23 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %24 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %29 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %34 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %37 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @pgsigio(i64 %35, i64 %38)
  br label %40

40:                                               ; preds = %32, %27, %22, %14
  %41 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %42 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %41, i32 0, i32 2
  %43 = call i32 @selwakeup(%struct.TYPE_2__* %42)
  %44 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %45 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BPF_KNOTE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %52 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @KNOTE(i32* %53, i32 1)
  br label %55

55:                                               ; preds = %50, %40
  ret void
}

declare dso_local i32 @bpf_stop_timer(%struct.bpf_d*) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @pgsigio(i64, i64) #1

declare dso_local i32 @selwakeup(%struct.TYPE_2__*) #1

declare dso_local i32 @KNOTE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
