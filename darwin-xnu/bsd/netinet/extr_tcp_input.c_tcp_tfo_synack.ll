; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_tfo_synack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_tfo_synack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.tcpcb = type { i32, i32 }
%struct.tcpopt = type { i32, i8* }

@TOF_TFO = common dso_local global i32 0, align 4
@TCPOLEN_FASTOPEN_REQ = common dso_local global i8 0, align 1
@TFO_COOKIE_LEN_MAX = common dso_local global i8 0, align 1
@TFO_S_COOKIE_RCV = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TFO_F_COOKIE_SENT = common dso_local global i32 0, align 4
@TFO_S_COOKIE_WRONG = common dso_local global i32 0, align 4
@TFO_F_SYN_LOSS = common dso_local global i32 0, align 4
@TFO_S_SYN_LOSS = common dso_local global i32 0, align 4
@TFO_F_COOKIE_REQ = common dso_local global i32 0, align 4
@TFO_S_NO_COOKIE_RCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcpopt*)* @tcp_tfo_synack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_tfo_synack(%struct.tcpcb* %0, %struct.tcpopt* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcpopt*, align 8
  %5 = alloca i8, align 1
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcpopt* %1, %struct.tcpopt** %4, align 8
  %6 = load %struct.tcpopt*, %struct.tcpopt** %4, align 8
  %7 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @TOF_TFO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %2
  %13 = load %struct.tcpopt*, %struct.tcpopt** %4, align 8
  %14 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @TCPOLEN_FASTOPEN_REQ, align 1
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 %17, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %5, align 1
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @TFO_COOKIE_LEN_MAX, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp sle i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @VERIFY(i32 %27)
  %29 = load %struct.tcpopt*, %struct.tcpopt** %4, align 8
  %30 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %30, align 8
  %33 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %34 = load %struct.tcpopt*, %struct.tcpopt** %4, align 8
  %35 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %5, align 1
  %38 = call i32 @tcp_cache_set_cookie(%struct.tcpcb* %33, i8* %36, i8 zeroext %37)
  %39 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %40 = call i32 @tcp_heuristic_tfo_success(%struct.tcpcb* %39)
  %41 = load i32, i32* @TFO_S_COOKIE_RCV, align 4
  %42 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 3), align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 3), align 4
  %48 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TFO_F_COOKIE_SENT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %12
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  %57 = load i32, i32* @TFO_S_COOKIE_WRONG, align 4
  %58 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %54, %12
  br label %99

63:                                               ; preds = %2
  %64 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TFO_F_SYN_LOSS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = load i32, i32* @TFO_S_SYN_LOSS, align 4
  %72 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %73 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %78 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %79 = call i32 @tcp_heuristic_tfo_loss(%struct.tcpcb* %78)
  br label %98

80:                                               ; preds = %63
  %81 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %82 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TFO_F_COOKIE_REQ, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load i32, i32* @TFO_S_NO_COOKIE_RCV, align 4
  %89 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %90 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  br label %95

95:                                               ; preds = %87, %80
  %96 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %97 = call i32 @tcp_heuristic_tfo_success(%struct.tcpcb* %96)
  br label %98

98:                                               ; preds = %95, %70
  br label %99

99:                                               ; preds = %98, %62
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @tcp_cache_set_cookie(%struct.tcpcb*, i8*, i8 zeroext) #1

declare dso_local i32 @tcp_heuristic_tfo_success(%struct.tcpcb*) #1

declare dso_local i32 @tcp_heuristic_tfo_loss(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
