; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_mssopt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_mssopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rtentry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@IFSCOPE_NONE = common dso_local global i32 0, align 4
@tcp_mssdflt = common dso_local global i32 0, align 4
@IFT_PPP = common dso_local global i64 0, align 8
@slowlink_wsize = common dso_local global i64 0, align 8
@TF_SLOWLINK = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@tcp_v6mssdflt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_mssopt(%struct.tcpcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  %6 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = load i32, i32* @IFSCOPE_NONE, align 4
  %10 = call %struct.rtentry* @tcp_rtlookup(%struct.TYPE_6__* %8, i32 %9)
  store %struct.rtentry* %10, %struct.rtentry** %4, align 8
  %11 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %12 = icmp eq %struct.rtentry* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @tcp_mssdflt, align 4
  store i32 %14, i32* %2, align 4
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %17 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IFT_PPP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %15
  %24 = load i64, i64* @slowlink_wsize, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %28 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 9600
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %35 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sle i32 %38, 128000
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @TF_SLOWLINK, align 4
  %42 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %33, %26, %23, %15
  %47 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %48 = call i32 @tcp_maxmtu(%struct.rtentry* %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %50 = call i32 @RT_UNLOCK(%struct.rtentry* %49)
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %46, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.rtentry* @tcp_rtlookup(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @tcp_maxmtu(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
