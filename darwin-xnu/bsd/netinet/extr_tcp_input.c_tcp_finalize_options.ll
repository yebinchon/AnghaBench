; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_finalize_options.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_finalize_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, i32, i32, i32, i32 }
%struct.tcpopt = type { i32, i32, i32, i32 }

@TOF_TS = common dso_local global i32 0, align 4
@TF_RCVD_TSTMP = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i32 0, align 4
@TOF_MSS = common dso_local global i32 0, align 4
@TOF_SACK = common dso_local global i32 0, align 4
@TF_SACK_ENABLE = common dso_local global i32 0, align 4
@TF_SACK_PERMIT = common dso_local global i32 0, align 4
@TOF_SCALE = common dso_local global i32 0, align 4
@TF_RCVD_SCALE = common dso_local global i32 0, align 4
@TF_REQ_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcpopt*, i32)* @tcp_finalize_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_finalize_options(%struct.tcpcb* %0, %struct.tcpopt* %1, i32 %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.tcpopt*, align 8
  %6 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.tcpopt* %1, %struct.tcpopt** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %8 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TOF_TS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load i32, i32* @TF_RCVD_TSTMP, align 4
  %15 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %16 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %20 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @tcp_now, align 4
  %25 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %13, %3
  %28 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %29 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TOF_MSS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %36 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %37 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @tcp_mss(%struct.tcpcb* %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %43 = call i64 @SACK_ENABLED(%struct.tcpcb* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %47 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TOF_SACK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @TF_SACK_ENABLE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %56 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %65

59:                                               ; preds = %45
  %60 = load i32, i32* @TF_SACK_PERMIT, align 4
  %61 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %52
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %68 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TOF_SCALE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %66
  %74 = load i32, i32* @TF_RCVD_SCALE, align 4
  %75 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %76 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %80 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %83 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %85 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %73
  %89 = load i32, i32* @TF_REQ_SCALE, align 4
  %90 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %91 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %73
  br label %95

95:                                               ; preds = %94, %66
  ret void
}

declare dso_local i32 @tcp_mss(%struct.tcpcb*, i32, i32) #1

declare dso_local i64 @SACK_ENABLED(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
