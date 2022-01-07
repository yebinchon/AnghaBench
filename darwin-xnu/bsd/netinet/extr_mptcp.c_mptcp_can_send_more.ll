; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_can_send_more.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_can_send_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptcb = type { i64, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.socket = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SOF1_PRECONNECT_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MPTCPS_CLOSE_WAIT = common dso_local global i64 0, align 8
@MPTCPS_FIN_WAIT_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mptcp_can_send_more(%struct.mptcb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mptcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  store %struct.mptcb* %0, %struct.mptcb** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %8 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %7, i32 0, i32 5
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call %struct.socket* @mptetoso(%struct.TYPE_2__* %9)
  store %struct.socket* %10, %struct.socket** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %15 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %13, %2
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SOF1_PRECONNECT_DATA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %22
  %30 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %31 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %34 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @MPTCP_SEQ_GEQ(i64 %32, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %82

40:                                               ; preds = %29, %22
  %41 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %42 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %45 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %49 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @MPTCP_SEQ_LEQ(i64 %47, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %82

55:                                               ; preds = %40
  %56 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %57 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  %60 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %61 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %66 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MPTCPS_CLOSE_WAIT, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %3, align 4
  br label %82

72:                                               ; preds = %64, %55
  %73 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %74 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MPTCPS_FIN_WAIT_2, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %78, %70, %53, %38, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.socket* @mptetoso(%struct.TYPE_2__*) #1

declare dso_local i64 @MPTCP_SEQ_GEQ(i64, i64) #1

declare dso_local i64 @MPTCP_SEQ_LEQ(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
