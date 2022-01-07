; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_discovery.c_init_lan_ad_server_socket.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_discovery.c_init_lan_ad_server_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }

@SOCKET_TYPE_DATAGRAM = common dso_local global i32 0, align 4
@lan_ad_server_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"[discovery] Failed to initialize netplay advertisement socket\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @init_lan_ad_server_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_lan_ad_server_socket(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %6, align 8
  %8 = bitcast %struct.addrinfo** %6 to i8**
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SOCKET_TYPE_DATAGRAM, align 4
  %11 = call i32 @socket_init(i8** %8, i32 %9, i32* null, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %28

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %18 = bitcast %struct.addrinfo* %17 to i8*
  %19 = call i32 @socket_bind(i32 %16, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @socket_close(i32 %22)
  br label %28

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* @lan_ad_server_fd, align 4
  %26 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %27 = call i32 @freeaddrinfo_retro(%struct.addrinfo* %26)
  store i32 1, i32* %3, align 4
  br label %36

28:                                               ; preds = %21, %14
  %29 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %30 = icmp ne %struct.addrinfo* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %33 = call i32 @freeaddrinfo_retro(%struct.addrinfo* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %24
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @socket_init(i8**, i32, i32*, i32) #1

declare dso_local i32 @socket_bind(i32, i8*) #1

declare dso_local i32 @socket_close(i32) #1

declare dso_local i32 @freeaddrinfo_retro(%struct.addrinfo*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
