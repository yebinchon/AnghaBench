; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_ConnectTimeoutIPv4.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_ConnectTimeoutIPv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.in_addr = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ConnectTimeoutIPv4(i32* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.in_addr, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = call i32 @Zero(%struct.sockaddr_in* %10, i32 16)
  %13 = bitcast %struct.in_addr* %11 to %struct.sockaddr_in*
  %14 = call i32 @Zero(%struct.sockaddr_in* %13, i32 16)
  %15 = bitcast %struct.in_addr* %11 to %struct.sockaddr_in*
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @IPToInAddr(%struct.sockaddr_in* %15, i32* %16)
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @htons(i32 %19)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @AF_INET, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @AF_INET, align 4
  %29 = load i32, i32* @SOCK_STREAM, align 4
  %30 = call i64 @socket(i32 %28, i32 %29, i32 0)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @INVALID_SOCKET, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %4
  %35 = load i64, i64* %9, align 8
  %36 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %37 = load i64, i64* %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @connect_timeout(i64 %35, %struct.sockaddr* %36, i32 16, i64 %37, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @closesocket(i64 %42)
  %44 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %41, %34
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i64, i64* %9, align 8
  ret i64 %47
}

declare dso_local i32 @Zero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @IPToInAddr(%struct.sockaddr_in*, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @connect_timeout(i64, %struct.sockaddr*, i32, i64, i32*) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
