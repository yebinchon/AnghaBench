; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_sbrcv_reserve.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_sbrcv_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptcb = type { i32 }
%struct.sockbuf = type { i64, i64 }

@tcp_autorcvbuf_max = common dso_local global i32 0, align 4
@TCP_MAXWIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mptcb*, %struct.sockbuf*, i64, i64)* @mptcp_sbrcv_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_sbrcv_reserve(%struct.mptcb* %0, %struct.sockbuf* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mptcb*, align 8
  %6 = alloca %struct.sockbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mptcb* %0, %struct.mptcb** %5, align 8
  store %struct.sockbuf* %1, %struct.sockbuf** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %11 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mptcp_get_rcvscale(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* @tcp_autorcvbuf_max, align 4
  %16 = call i8* @min(i64 %14, i32 %15)
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @TCP_MAXWIN, align 4
  %20 = load i32, i32* %9, align 4
  %21 = shl i32 %19, %20
  %22 = call i8* @min(i64 %18, i32 %21)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %26 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %4
  %30 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @sbreserve(%struct.sockbuf* %30, i64 %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %36 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* %8, align 8
  br label %44

42:                                               ; preds = %34
  %43 = load i64, i64* %7, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  %46 = call i64 @max(i64 %37, i64 %45)
  %47 = load i32, i32* @tcp_autorcvbuf_max, align 4
  %48 = call i8* @min(i64 %46, i32 %47)
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %51 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %53 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @TCP_MAXWIN, align 4
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %55, %56
  %58 = call i8* @min(i64 %54, i32 %57)
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %61 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %44, %29, %4
  ret void
}

declare dso_local i32 @mptcp_get_rcvscale(i32) #1

declare dso_local i8* @min(i64, i32) #1

declare dso_local i32 @sbreserve(%struct.sockbuf*, i64) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
