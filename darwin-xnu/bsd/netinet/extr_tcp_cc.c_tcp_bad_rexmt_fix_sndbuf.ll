; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cc.c_tcp_bad_rexmt_fix_sndbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cc.c_tcp_bad_rexmt_fix_sndbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sockbuf }
%struct.sockbuf = type { i32, i64, i64 }

@SB_TRIM = common dso_local global i32 0, align 4
@SB_AUTOSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_bad_rexmt_fix_sndbuf(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.sockbuf*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %4 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %5 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.sockbuf* %9, %struct.sockbuf** %3, align 8
  %10 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %11 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SB_TRIM, align 4
  %14 = load i32, i32* @SB_AUTOSIZE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @SB_TRIM, align 4
  %18 = load i32, i32* @SB_AUTOSIZE, align 4
  %19 = or i32 %17, %18
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %1
  %22 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %23 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @SET_SNDSB_IDEAL_SIZE(%struct.sockbuf* %22, i32 %25)
  %27 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %28 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %31 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %21
  %35 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %36 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %37 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @sbreserve(%struct.sockbuf* %35, i64 %38)
  %40 = load i32, i32* @SB_TRIM, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %43 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %34, %21
  br label %47

47:                                               ; preds = %46, %1
  ret void
}

declare dso_local i32 @SET_SNDSB_IDEAL_SIZE(%struct.sockbuf*, i32) #1

declare dso_local i32 @sbreserve(%struct.sockbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
