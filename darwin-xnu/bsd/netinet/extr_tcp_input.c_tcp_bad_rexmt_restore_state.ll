; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_bad_rexmt_restore_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_bad_rexmt_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i32, i32, i64, i64, i32, i32, i64, i64, i32, i32, i64 }
%struct.tcphdr = type { i64 }
%struct.TYPE_2__ = type { i32 (%struct.tcpcb*)* }

@TF_WASFRECOVERY = common dso_local global i32 0, align 4
@TCP_CC_CWND_INIT_BYTES = common dso_local global i32 0, align 4
@TF_RECOMPUTE_RTT = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcphdr*)* @tcp_bad_rexmt_restore_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_bad_rexmt_restore_state(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %7 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %8 = call i64 @TSTMP_SUPPORTED(%struct.tcpcb* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %2
  %11 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %15 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  store i64 %17, i64* %5, align 8
  %18 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %19 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %20 = call i64 @BYTES_ACKED(%struct.tcphdr* %18, %struct.tcpcb* %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %22 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %27 = call %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %28, align 8
  %30 = icmp ne i32 (%struct.tcpcb*)* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %10
  %32 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %33 = call %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %34, align 8
  %36 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %37 = call i32 %35(%struct.tcpcb* %36)
  br label %38

38:                                               ; preds = %31, %10
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %42 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @min(i64 %40, i64 %43)
  %45 = add nsw i64 %39, %44
  %46 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 8
  store i64 %45, i64* %47, align 8
  br label %71

48:                                               ; preds = %2
  %49 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %50 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %49, i32 0, i32 12
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %53 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %52, i32 0, i32 8
  store i64 %51, i64* %53, align 8
  %54 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 4
  %59 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %60 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TF_WASFRECOVERY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %67 = call i32 @ENTER_FASTRECOVERY(%struct.tcpcb* %66)
  br label %68

68:                                               ; preds = %65, %48
  %69 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 9
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %38
  %72 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %73 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @TCP_CC_CWND_INIT_BYTES, align 4
  %76 = call i64 @max(i64 %74, i32 %75)
  %77 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %78 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %77, i32 0, i32 8
  store i64 %76, i64* %78, align 8
  %79 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %80 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %83 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %85 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %88 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %87, i32 0, i32 5
  store i64 %86, i64* %88, align 8
  %89 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %90 = call i32 @tcp_bad_rexmt_fix_sndbuf(%struct.tcpcb* %89)
  %91 = load i32, i32* @TF_RECOMPUTE_RTT, align 4
  %92 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %93 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @tcp_now, align 4
  %97 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %98 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %100 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  ret void
}

declare dso_local i64 @TSTMP_SUPPORTED(%struct.tcpcb*) #1

declare dso_local i64 @BYTES_ACKED(%struct.tcphdr*, %struct.tcpcb*) #1

declare dso_local %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @ENTER_FASTRECOVERY(%struct.tcpcb*) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @tcp_bad_rexmt_fix_sndbuf(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
