; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_connect.c_tcpkeepalive.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_connect.c_tcpkeepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to set SO_KEEPALIVE on fd %d\0A\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SIO_KEEPALIVE_VALS = common dso_local global i32 0, align 4
@TCP_KEEPALIVE = common dso_local global i32 0, align 4
@TCP_KEEPIDLE = common dso_local global i32 0, align 4
@TCP_KEEPINTVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Curl_easy*, i64)* @tcpkeepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpkeepalive(%struct.Curl_easy* %0, i64 %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %7 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @SOL_SOCKET, align 4
  %15 = load i32, i32* @SO_KEEPALIVE, align 4
  %16 = bitcast i32* %5 to i8*
  %17 = call i64 @setsockopt(i64 %13, i32 %14, i32 %15, i8* %16, i32 4)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (%struct.Curl_easy*, i8*, i32, ...) @infof(%struct.Curl_easy* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %19
  ret void
}

declare dso_local i64 @setsockopt(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
