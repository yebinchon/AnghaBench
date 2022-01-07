; ModuleID = '/home/carl/AnghaBench/dsvpn/src/extr_vpn.c_tcp_client.c'
source_filename = "/home/carl/AnghaBench/dsvpn/src/extr_vpn.c_tcp_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, i32*, i32, i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Connecting to %s:%s...\0A\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to create the client socket: [%s]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @tcp_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_client(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12)
  %14 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 40)
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* @AF_UNSPEC, align 8
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @getaddrinfo(i8* %21, i8* %22, %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %2
  %26 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AF_INET6, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31, %2
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @gai_strerror(i32 %39)
  %41 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %77

43:                                               ; preds = %31, %25
  %44 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @SOCK_STREAM, align 4
  %48 = load i32, i32* @IPPROTO_TCP, align 4
  %49 = call i32 @socket(i64 %46, i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %66, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @tcp_opts(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = bitcast i32* %59 to %struct.sockaddr*
  %61 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @connect(i32 %56, %struct.sockaddr* %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %55, %51, %43
  %67 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %68 = call i32 @freeaddrinfo(%struct.addrinfo* %67)
  %69 = load i32, i32* @errno, align 4
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @close(i32 %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %77

73:                                               ; preds = %55
  %74 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %75 = call i32 @freeaddrinfo(%struct.addrinfo* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %66, %37
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i64 @tcp_opts(i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
