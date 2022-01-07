; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_tfo_write_cookie_rep.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_tfo_write_cookie_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tcpcb = type { i32, i32 }

@CCAES_BLOCK_SIZE = common dso_local global i32 0, align 4
@MAX_TCPOPTLEN = common dso_local global i32 0, align 4
@TCPOLEN_FASTOPEN_REQ = common dso_local global i32 0, align 4
@TFO_COOKIE_LEN_DEFAULT = common dso_local global i32 0, align 4
@TCPOPT_FASTOPEN = common dso_local global i32 0, align 4
@TFO_S_COOKIE_SENT = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, i32, i32*)* @tcp_tfo_write_cookie_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_tfo_write_cookie_rep(%struct.tcpcb* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @CCAES_BLOCK_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @MAX_TCPOPTLEN, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub i32 %17, %18
  %20 = load i32, i32* @TCPOLEN_FASTOPEN_REQ, align 4
  %21 = load i32, i32* @TFO_COOKIE_LEN_DEFAULT, align 4
  %22 = add i32 %20, %21
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %59

26:                                               ; preds = %3
  %27 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %28 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nuw i64 4, %14
  %31 = trunc i64 %30 to i32
  %32 = call i32 @tcp_tfo_gen_cookie(i32 %29, i32* %16, i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %11, align 8
  %37 = load i32, i32* @TCPOPT_FASTOPEN, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  %40 = load i32, i32* @TFO_COOKIE_LEN_DEFAULT, align 4
  %41 = add i32 2, %40
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @TFO_COOKIE_LEN_DEFAULT, align 4
  %46 = call i32 @memcpy(i32* %44, i32* %16, i32 %45)
  %47 = load i32, i32* @TFO_COOKIE_LEN_DEFAULT, align 4
  %48 = add i32 2, %47
  %49 = load i32, i32* %10, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @TFO_S_COOKIE_SENT, align 4
  %52 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %53 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %26, %24
  %60 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tcp_tfo_gen_cookie(i32, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
