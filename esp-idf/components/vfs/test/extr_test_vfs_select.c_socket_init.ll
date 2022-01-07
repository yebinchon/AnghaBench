; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/test/extr_test_vfs_select.c_socket_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/test/extr_test_vfs_select.c_socket_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Socket connection failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @socket_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_init() #0 {
  %1 = alloca %struct.addrinfo, align 4
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 2
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 3
  %11 = load i32, i32* @AF_INET, align 4
  store i32 %11, i32* %10, align 4
  %12 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 16, i1 false)
  store i32 -1, i32* %5, align 4
  %13 = call i32 @getaddrinfo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.addrinfo* %1, %struct.addrinfo** %2)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @TEST_ASSERT_EQUAL(i32 %14, i32 0)
  %16 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %17 = call i32 @TEST_ASSERT_NOT_NULL(%struct.addrinfo* %16)
  %18 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @socket(i32 %20, i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @TEST_ASSERT(i32 %27)
  %29 = load i32, i32* @PF_INET, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = call i32 @htons(i32 80)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @INADDR_ANY, align 4
  %34 = call i32 @htonl(i32 %33)
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %39 = call i32 @bind(i32 %37, %struct.sockaddr* %38, i32 16)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp sge i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @TEST_ASSERT(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @connect(i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @TEST_ASSERT_EQUAL_MESSAGE(i32 %52, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %55 = call i32 @freeaddrinfo(%struct.addrinfo* %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #2

declare dso_local i32 @TEST_ASSERT_NOT_NULL(%struct.addrinfo*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @TEST_ASSERT(i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @connect(i32, i32, i32) #2

declare dso_local i32 @TEST_ASSERT_EQUAL_MESSAGE(i32, i32, i8*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
