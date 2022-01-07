; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_is_allowed_to_send_recv_v4.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_is_allowed_to_send_recv_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.in_addr = type { i32 }
%struct.sockaddr_in = type { i32, i32, i8*, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @necp_socket_is_allowed_to_send_recv_v4(%struct.inpcb* %0, i8* %1, i8* %2, %struct.in_addr* %3, %struct.in_addr* %4, i32 %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.inpcb*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.in_addr*, align 8
  %14 = alloca %struct.in_addr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.sockaddr_in, align 8
  %20 = alloca %struct.sockaddr_in, align 8
  store %struct.inpcb* %0, %struct.inpcb** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.in_addr* %3, %struct.in_addr** %13, align 8
  store %struct.in_addr* %4, %struct.in_addr** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %21 = bitcast %struct.sockaddr_in* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = bitcast %struct.sockaddr_in* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = load i32, i32* @AF_INET, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  store i32 24, i32* %26, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  store i32 24, i32* %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 1
  %33 = load %struct.in_addr*, %struct.in_addr** %13, align 8
  %34 = call i32 @memcpy(i32* %32, %struct.in_addr* %33, i32 4)
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 1
  %36 = load %struct.in_addr*, %struct.in_addr** %14, align 8
  %37 = call i32 @memcpy(i32* %35, %struct.in_addr* %36, i32 4)
  %38 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %39 = bitcast %struct.sockaddr_in* %19 to %struct.sockaddr*
  %40 = bitcast %struct.sockaddr_in* %20 to %struct.sockaddr*
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = call i32 @necp_socket_is_allowed_to_send_recv_internal(%struct.inpcb* %38, %struct.sockaddr* %39, %struct.sockaddr* %40, i32 %41, i32* %42, i32* %43, i32* %44)
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, %struct.in_addr*, i32) #2

declare dso_local i32 @necp_socket_is_allowed_to_send_recv_internal(%struct.inpcb*, %struct.sockaddr*, %struct.sockaddr*, i32, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
