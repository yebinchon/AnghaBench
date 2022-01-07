; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_sbrcv_grow_rwin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_sbrcv_grow_rwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptcb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.sockbuf = type { i64, i64, i64 }

@tcp_recv_bg = common dso_local global i32 0, align 4
@tcp_do_autorcvbuf = common dso_local global i32 0, align 4
@SOF1_EXTEND_BK_IDLE_WANTED = common dso_local global i32 0, align 4
@tcp_autorcvbuf_max = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mptcb*, %struct.sockbuf*)* @mptcp_sbrcv_grow_rwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_sbrcv_grow_rwin(%struct.mptcb* %0, %struct.sockbuf* %1) #0 {
  %3 = alloca %struct.mptcb*, align 8
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mptcb* %0, %struct.mptcb** %3, align 8
  store %struct.sockbuf* %1, %struct.sockbuf** %4, align 8
  %8 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %9 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.socket*, %struct.socket** %13, align 8
  store %struct.socket* %14, %struct.socket** %5, align 8
  %15 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %16 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @mptcp_get_maxseg(%struct.TYPE_4__* %17)
  %19 = shl i32 %18, 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %6, align 8
  %21 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %22 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* @tcp_recv_bg, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load %struct.socket*, %struct.socket** %5, align 8
  %28 = call i64 @IS_TCP_RECV_BG(%struct.socket* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %2
  br label %82

31:                                               ; preds = %26
  %32 = load i32, i32* @tcp_do_autorcvbuf, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %82

34:                                               ; preds = %31
  %35 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %36 = call i64 @tcp_cansbgrow(%struct.sockbuf* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %34
  %39 = load %struct.socket*, %struct.socket** %5, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SOF1_EXTEND_BK_IDLE_WANTED, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %82

45:                                               ; preds = %38
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %48 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %45
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @tcp_autorcvbuf_max, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %59 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %64 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %67 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %68, %69
  %71 = icmp sle i64 %65, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %62
  %73 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %74 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %75 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64, i64* @tcp_autorcvbuf_max, align 8
  %80 = call i32 @min(i64 %78, i64 %79)
  %81 = call i32 @sbreserve(%struct.sockbuf* %73, i32 %80)
  br label %82

82:                                               ; preds = %30, %72, %62, %57, %53, %45, %38, %34, %31
  ret void
}

declare dso_local i32 @mptcp_get_maxseg(%struct.TYPE_4__*) #1

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
