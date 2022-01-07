; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_recv_throttle.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_recv_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sockbuf }
%struct.sockbuf = type { i32 }

@tcp_use_rtt_recvbg = common dso_local global i32 0, align 4
@TF_RECV_THROTTLE = common dso_local global i32 0, align 4
@target_qdelay = common dso_local global i64 0, align 8
@tcp_now = common dso_local global i64 0, align 8
@tcp_recv_throttle_minwin = common dso_local global i32 0, align 4
@tcp_acc_iaj_react_limit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*)* @tcp_recv_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_recv_throttle(%struct.tcpcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sockbuf*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  %7 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %8 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %7, i32 0, i32 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.sockbuf* %12, %struct.sockbuf** %6, align 8
  %13 = load i32, i32* @tcp_use_rtt_recvbg, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %81

15:                                               ; preds = %1
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = call i64 @TSTMP_SUPPORTED(%struct.tcpcb* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %81

19:                                               ; preds = %15
  %20 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TF_RECV_THROTTLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %89

27:                                               ; preds = %19
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = call i64 @get_base_rtt(%struct.tcpcb* %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %80

32:                                               ; preds = %27
  %33 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %32
  %38 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @target_qdelay, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %37
  %46 = load i32, i32* @TF_RECV_THROTTLE, align 4
  %47 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i64, i64* @tcp_now, align 8
  %57 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %45
  %60 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %61 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @tcp_recv_throttle_minwin, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %67 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 1
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i32, i32* @tcp_recv_throttle_minwin, align 4
  %73 = call i64 @max(i64 %71, i32 %72)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %77 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %65, %59
  store i32 1, i32* %2, align 4
  br label %89

79:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %89

80:                                               ; preds = %32, %27
  br label %81

81:                                               ; preds = %80, %15, %1
  %82 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %83 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @tcp_acc_iaj_react_limit, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 1, i32* %2, align 4
  br label %89

88:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %87, %79, %78, %26
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @TSTMP_SUPPORTED(%struct.tcpcb*) #1

declare dso_local i64 @get_base_rtt(%struct.tcpcb*) #1

declare dso_local i64 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
