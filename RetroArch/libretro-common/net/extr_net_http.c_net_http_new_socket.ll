; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http.c_net_http_new_socket.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http.c_net_http_new_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_connection_t = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.addrinfo = type { i32 }

@SOCKET_TYPE_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.http_connection_t*)* @net_http_new_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_http_new_socket(%struct.http_connection_t* %0) #0 {
  %2 = alloca %struct.http_connection_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.http_connection_t* %0, %struct.http_connection_t** %2, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %5, align 8
  %7 = bitcast %struct.addrinfo** %4 to i8**
  %8 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %9 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %12 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SOCKET_TYPE_STREAM, align 4
  %15 = call i32 @socket_init(i8** %7, i32 %10, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %16, %struct.addrinfo** %5, align 8
  br label %17

17:                                               ; preds = %32, %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %23 = bitcast %struct.addrinfo* %22 to i8*
  %24 = call i32 @socket_connect(i32 %21, i8* %23, i32 1)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @socket_nonblock(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %37

32:                                               ; preds = %27, %20
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @socket_close(i32 %33)
  %35 = bitcast %struct.addrinfo** %5 to i8**
  %36 = call i32 @socket_next(i8** %35)
  store i32 %36, i32* %6, align 4
  br label %17

37:                                               ; preds = %31, %17
  %38 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %39 = icmp ne %struct.addrinfo* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %42 = call i32 @freeaddrinfo_retro(%struct.addrinfo* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %46 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @socket_init(i8**, i32, i32, i32) #1

declare dso_local i32 @socket_connect(i32, i8*, i32) #1

declare dso_local i64 @socket_nonblock(i32) #1

declare dso_local i32 @socket_close(i32) #1

declare dso_local i32 @socket_next(i8**) #1

declare dso_local i32 @freeaddrinfo_retro(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
