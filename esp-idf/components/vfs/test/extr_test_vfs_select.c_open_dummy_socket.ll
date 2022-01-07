; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/test/extr_test_vfs_select.c_open_dummy_socket.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/test/extr_test_vfs_select.c_open_dummy_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @open_dummy_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_dummy_socket() #0 {
  %1 = alloca %struct.addrinfo, align 4
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 0
  %6 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 1
  %8 = load i32, i32* @AF_INET, align 4
  store i32 %8, i32* %7, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8
  %9 = call i32 @getaddrinfo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.addrinfo* %1, %struct.addrinfo** %2)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %10)
  %12 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %13 = call i32 @TEST_ASSERT_NOT_NULL(%struct.addrinfo* %12)
  %14 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @socket(i32 %16, i32 %19, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @TEST_ASSERT(i32 %23)
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(%struct.addrinfo*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
