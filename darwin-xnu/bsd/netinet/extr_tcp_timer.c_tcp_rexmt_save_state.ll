; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_rexmt_save_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_rexmt_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@TF_WASFRECOVERY = common dso_local global i32 0, align 4
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@TCP_RTTVAR_SHIFT = common dso_local global i32 0, align 4
@TF_RECOMPUTE_RTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_rexmt_save_state(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %4 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %5 = call i64 @TSTMP_SUPPORTED(%struct.tcpcb* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 13
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 12
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @max(i64 %15, i32 %18)
  %20 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 4
  %22 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  br label %60

27:                                               ; preds = %1
  %28 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 4
  %33 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %42 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %44 = call i64 @IN_FASTRECOVERY(%struct.tcpcb* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %27
  %47 = load i32, i32* @TF_WASFRECOVERY, align 4
  %48 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %59

52:                                               ; preds = %27
  %53 = load i32, i32* @TF_WASFRECOVERY, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %56 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %46
  br label %60

60:                                               ; preds = %59, %7
  %61 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %65 = ashr i32 %63, %64
  %66 = add nsw i32 %65, 2
  %67 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %68 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @TF_RECOMPUTE_RTT, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %79 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  ret void
}

declare dso_local i64 @TSTMP_SUPPORTED(%struct.tcpcb*) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i64 @IN_FASTRECOVERY(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
