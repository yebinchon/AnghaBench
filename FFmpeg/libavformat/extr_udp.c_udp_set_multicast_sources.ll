; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_udp.c_udp_set_multicast_sources.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_udp.c_udp_set_multicast_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64, i64 }
%struct.sockaddr_storage = type { i64, i64 }

@AF_INET = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Setting multicast sources only supported for IPv4\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IP_ADD_SOURCE_MEMBERSHIP = common dso_local global i32 0, align 4
@IP_BLOCK_SOURCE = common dso_local global i32 0, align 4
@MCAST_BLOCK_SOURCE = common dso_local global i32 0, align 4
@MCAST_JOIN_SOURCE_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.sockaddr*, i32, %struct.sockaddr_storage*, %struct.sockaddr_storage*, i32, i32)* @udp_set_multicast_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_set_multicast_sources(i32* %0, i32 %1, %struct.sockaddr* %2, i32 %3, %struct.sockaddr_storage* %4, %struct.sockaddr_storage* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_storage*, align 8
  %15 = alloca %struct.sockaddr_storage*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.sockaddr_storage* %4, %struct.sockaddr_storage** %14, align 8
  store %struct.sockaddr_storage* %5, %struct.sockaddr_storage** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AF_INET, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @AV_LOG_ERROR, align 4
  %27 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %25, i32 %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %9, align 4
  br label %33

30:                                               ; preds = %8
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
