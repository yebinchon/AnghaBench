; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_udp.c_udp_set_url.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_udp.c_udp_set_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.addrinfo = type { i32, i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sockaddr_storage*, i8*, i32)* @udp_set_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_set_url(i32* %0, %struct.sockaddr_storage* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SOCK_DGRAM, align 4
  %16 = load i32, i32* @AF_UNSPEC, align 4
  %17 = call %struct.addrinfo* @ff_ip_resolve_host(i32* %12, i8* %13, i32 %14, i32 %15, i32 %16, i32 0)
  store %struct.addrinfo* %17, %struct.addrinfo** %10, align 8
  %18 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %19 = icmp ne %struct.addrinfo* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EIO, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %38

23:                                               ; preds = %4
  %24 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %25 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(%struct.sockaddr_storage* %24, i32 %27, i32 %30)
  %32 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %36 = call i32 @freeaddrinfo(%struct.addrinfo* %35)
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %23, %20
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.addrinfo* @ff_ip_resolve_host(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
