; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_tfo_syn.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_tfo_syn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tcpcb = type { i32, i32, i32 }
%struct.tcpopt = type { i32, i8* }

@CCAES_BLOCK_SIZE = common dso_local global i32 0, align 4
@TOF_TFO = common dso_local global i32 0, align 4
@TOF_TFOREQ = common dso_local global i32 0, align 4
@tcp_fastopen = common dso_local global i32 0, align 4
@TCP_FASTOPEN_SERVER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TFO_F_OFFER_COOKIE = common dso_local global i32 0, align 4
@TFO_S_COOKIEREQ_RECV = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TCPOLEN_FASTOPEN_REQ = common dso_local global i8 0, align 1
@TFO_S_COOKIE_INVALID = common dso_local global i32 0, align 4
@tcp_tfo_halfcnt = common dso_local global i32 0, align 4
@tcp_tfo_backlog = common dso_local global i64 0, align 8
@TFO_F_COOKIE_VALID = common dso_local global i32 0, align 4
@TFO_S_SYNDATA_RCV = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcpopt*)* @tcp_tfo_syn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_tfo_syn(%struct.tcpcb* %0, %struct.tcpopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.tcpopt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.tcpopt* %1, %struct.tcpopt** %5, align 8
  %10 = load i32, i32* @CCAES_BLOCK_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %15 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TOF_TFO, align 4
  %18 = load i32, i32* @TOF_TFOREQ, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @tcp_fastopen, align 4
  %24 = load i32, i32* @TCP_FASTOPEN_SERVER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %2
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %111

29:                                               ; preds = %22
  %30 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %31 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TOF_TFOREQ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load i32, i32* @TFO_F_OFFER_COOKIE, align 4
  %38 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @TFO_S_COOKIEREQ_RECV, align 4
  %43 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %111

50:                                               ; preds = %29
  %51 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = mul nuw i64 4, %11
  %55 = trunc i64 %54 to i32
  %56 = call i32 @tcp_tfo_gen_cookie(i32 %53, i32* %13, i32 %55)
  %57 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %58 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @TCPOLEN_FASTOPEN_REQ, align 1
  %63 = zext i8 %62 to i32
  %64 = sub nsw i32 %61, %63
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %8, align 1
  %66 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %67 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %67, align 8
  %70 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %71 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i8, i8* %8, align 1
  %74 = call i64 @memcmp(i32* %13, i8* %72, i8 zeroext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %50
  %77 = load i32, i32* @TFO_F_OFFER_COOKIE, align 4
  %78 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %79 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @TFO_S_COOKIE_INVALID, align 4
  %83 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %111

90:                                               ; preds = %50
  %91 = call i64 @OSIncrementAtomic(i32* @tcp_tfo_halfcnt)
  %92 = load i64, i64* @tcp_tfo_backlog, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = call i32 @OSDecrementAtomic(i32* @tcp_tfo_halfcnt)
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %111

97:                                               ; preds = %90
  %98 = load i32, i32* @TFO_F_COOKIE_VALID, align 4
  %99 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %100 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @TFO_S_SYNDATA_RCV, align 4
  %104 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %105 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %111

111:                                              ; preds = %97, %94, %76, %36, %27
  %112 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tcp_tfo_gen_cookie(i32, i32*, i32) #2

declare dso_local i64 @memcmp(i32*, i8*, i8 zeroext) #2

declare dso_local i64 @OSIncrementAtomic(i32*) #2

declare dso_local i32 @OSDecrementAtomic(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
