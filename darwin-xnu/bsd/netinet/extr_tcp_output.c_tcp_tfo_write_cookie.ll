; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_tfo_write_cookie.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_tfo_write_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.tcpcb = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.socket* }
%struct.socket = type { i32 }

@MAX_TCPOPTLEN = common dso_local global i32 0, align 4
@TCPOLEN_FASTOPEN_REQ = common dso_local global i32 0, align 4
@SOF1_DATA_AUTHENTICATED = common dso_local global i32 0, align 4
@TFO_S_SYN_DATA_SENT = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@TCPOPT_FASTOPEN = common dso_local global i8* null, align 8
@TFO_F_COOKIE_REQ = common dso_local global i32 0, align 4
@TFO_S_COOKIE_REQ = common dso_local global i32 0, align 4
@TFO_F_COOKIE_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, i32, i64, i32*)* @tcp_tfo_write_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_tfo_write_cookie(%struct.tcpcb* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @MAX_TCPOPTLEN, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub i32 %15, %16
  %18 = load i32, i32* @TCPOLEN_FASTOPEN_REQ, align 4
  %19 = sub i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.socket*, %struct.socket** %23, align 8
  store %struct.socket* %24, %struct.socket** %11, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.socket*, %struct.socket** %11, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SOF1_DATA_AUTHENTICATED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %4
  %32 = load i64, i64* %8, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* @TFO_S_SYN_DATA_SENT, align 4
  %36 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 0), align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 0), align 4
  br label %42

42:                                               ; preds = %34, %31
  store i32 0, i32* %5, align 4
  br label %112

43:                                               ; preds = %4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %14, align 8
  %48 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* @TCPOLEN_FASTOPEN_REQ, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @tcp_cache_get_cookie(%struct.tcpcb* %48, i32* %52, i32* %10)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %43
  %57 = load i8*, i8** @TCPOPT_FASTOPEN, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load i32*, i32** %14, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %14, align 8
  store i32 %58, i32* %59, align 4
  %61 = load i32, i32* @TCPOLEN_FASTOPEN_REQ, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %14, align 8
  store i32 %61, i32* %62, align 4
  %64 = load i32, i32* @TCPOLEN_FASTOPEN_REQ, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* @TFO_F_COOKIE_REQ, align 4
  %68 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %69 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @TFO_S_COOKIE_REQ, align 4
  %73 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 1), align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 1), align 4
  br label %110

79:                                               ; preds = %43
  %80 = load i8*, i8** @TCPOPT_FASTOPEN, align 8
  %81 = ptrtoint i8* %80 to i32
  %82 = load i32*, i32** %14, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %14, align 8
  store i32 %81, i32* %82, align 4
  %84 = load i32, i32* @TCPOLEN_FASTOPEN_REQ, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %84, %85
  %87 = load i32*, i32** %14, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %14, align 8
  store i32 %86, i32* %87, align 4
  %89 = load i32, i32* @TCPOLEN_FASTOPEN_REQ, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %89, %90
  %92 = load i32, i32* %12, align 4
  %93 = add i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* @TFO_F_COOKIE_SENT, align 4
  %95 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %96 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i64, i64* %8, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %79
  %102 = load i32, i32* @TFO_S_SYN_DATA_SENT, align 4
  %103 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %104 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 0), align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 0), align 4
  br label %109

109:                                              ; preds = %101, %79
  br label %110

110:                                              ; preds = %109, %56
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %42
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @tcp_cache_get_cookie(%struct.tcpcb*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
