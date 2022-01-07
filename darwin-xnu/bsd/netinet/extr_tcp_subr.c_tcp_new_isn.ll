; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_new_isn.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_new_isn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@TCPS_LISTEN = common dso_local global i64 0, align 8
@TCPS_TIME_WAIT = common dso_local global i64 0, align 8
@tcp_strict_rfc1948 = common dso_local global i64 0, align 8
@tcp_isn_reseed_interval = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@ISN_BYTES_PER_SECOND = common dso_local global i64 0, align 8
@INP_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tcp_new_isn(%struct.tcpcb* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca [4 x i64], align 16
  %5 = alloca i64, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca [32 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TCPS_LISTEN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TCPS_TIME_WAIT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15, %1
  %22 = load i64, i64* @tcp_strict_rfc1948, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i64 (...) @arc4random()
  store i64 %25, i64* %2, align 8
  br label %90

26:                                               ; preds = %21, %15
  %27 = call i32 @getmicrotime(%struct.timeval* %6)
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @tcp_strict_rfc1948, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i64, i64* @tcp_isn_reseed_interval, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @tcp_isn_reseed_interval, align 8
  %40 = load i64, i64* @hz, align 8
  %41 = mul nsw i64 %39, %40
  %42 = add nsw i64 %38, %41
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %36, %26
  %48 = bitcast [32 x i32]* %7 to i32**
  %49 = call i32 @read_random_unlimited(i32** %48, i32 128)
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %47, %36, %33, %30
  %53 = call i32 @MD5Init(i32* %9)
  %54 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 6
  %58 = call i32 @MD5Update(i32* %9, i32* %57, i32 4)
  %59 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %60 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  %63 = call i32 @MD5Update(i32* %9, i32* %62, i32 4)
  %64 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = call i32 @MD5Update(i32* %9, i32* %67, i32 4)
  %69 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = call i32 @MD5Update(i32* %9, i32* %72, i32 4)
  %74 = bitcast [32 x i32]* %7 to i32*
  %75 = call i32 @MD5Update(i32* %9, i32* %74, i32 128)
  %76 = bitcast [4 x i64]* %4 to i32*
  %77 = call i32 @MD5Final(i32* %76, i32* %9)
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %79 = load i64, i64* %78, align 16
  store i64 %79, i64* %5, align 8
  %80 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @ISN_BYTES_PER_SECOND, align 8
  %84 = load i64, i64* @hz, align 8
  %85 = sdiv i64 %83, %84
  %86 = mul nsw i64 %82, %85
  %87 = load i64, i64* %5, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  store i64 %89, i64* %2, align 8
  br label %90

90:                                               ; preds = %52, %24
  %91 = load i64, i64* %2, align 8
  ret i64 %91
}

declare dso_local i64 @arc4random(...) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @read_random_unlimited(i32**, i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i32) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
