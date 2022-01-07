; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_sbrcv_grow_rwin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_sbrcv_grow_rwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.socket* }
%struct.socket = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sockbuf = type { i64, i64, i64 }

@tcp_recv_bg = common dso_local global i32 0, align 4
@SOF_ENABLE_MSGS = common dso_local global i32 0, align 4
@tcp_do_autorcvbuf = common dso_local global i32 0, align 4
@TF_SLOWLINK = common dso_local global i32 0, align 4
@SOF1_EXTEND_BK_IDLE_WANTED = common dso_local global i32 0, align 4
@tcp_autorcvbuf_max = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.sockbuf*)* @tcp_sbrcv_grow_rwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_sbrcv_grow_rwin(%struct.tcpcb* %0, %struct.sockbuf* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.socket*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.sockbuf* %1, %struct.sockbuf** %4, align 8
  %8 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 %10, 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %14 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.socket*, %struct.socket** %19, align 8
  store %struct.socket* %20, %struct.socket** %7, align 8
  %21 = load i32, i32* @tcp_recv_bg, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load %struct.socket*, %struct.socket** %7, align 8
  %25 = call i64 @IS_TCP_RECV_BG(%struct.socket* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %2
  br label %101

28:                                               ; preds = %23
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SOF_ENABLE_MSGS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.socket*, %struct.socket** %7, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %36, %41
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %35, %28
  %44 = load i32, i32* @tcp_do_autorcvbuf, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %101

46:                                               ; preds = %43
  %47 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %48 = call i64 @tcp_cansbgrow(%struct.sockbuf* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %101

50:                                               ; preds = %46
  %51 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TF_SLOWLINK, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %101

57:                                               ; preds = %50
  %58 = load %struct.socket*, %struct.socket** %7, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SOF1_EXTEND_BK_IDLE_WANTED, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %57
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %67 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = load i64, i64* %5, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %64
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @tcp_autorcvbuf_max, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  %77 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %78 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %76
  %82 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %83 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %86 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = add nsw i64 %87, %88
  %90 = icmp sle i64 %84, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %81
  %92 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %93 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %94 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i64, i64* @tcp_autorcvbuf_max, align 8
  %99 = call i32 @min(i64 %97, i64 %98)
  %100 = call i32 @sbreserve(%struct.sockbuf* %92, i32 %99)
  br label %101

101:                                              ; preds = %27, %91, %81, %76, %72, %64, %57, %50, %46, %43
  ret void
}

declare dso_local i64 @IS_TCP_RECV_BG(%struct.socket*) #1

declare dso_local i64 @tcp_cansbgrow(%struct.sockbuf*) #1

declare dso_local i32 @sbreserve(%struct.sockbuf*, i32) #1

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
