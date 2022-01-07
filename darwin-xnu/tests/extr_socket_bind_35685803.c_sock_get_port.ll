; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_socket_bind_35685803.c_sock_get_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_socket_bind_35685803.c_sock_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sockaddr_in_4_6 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"getsockname(%d)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown address family %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sock_get_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_get_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.sockaddr_in_4_6, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 4, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @bzero(%union.sockaddr_in_4_6* %6, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = bitcast %union.sockaddr_in_4_6* %6 to %struct.sockaddr*
  %12 = call i32 @getsockname(i32 %10, %struct.sockaddr* %11, i32* %7)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @T_QUIET, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @T_EXPECT_POSIX_ZERO(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

20:                                               ; preds = %1
  %21 = bitcast %union.sockaddr_in_4_6* %6 to %struct.TYPE_6__*
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %32 [
    i32 129, label %24
    i32 128, label %28
  ]

24:                                               ; preds = %20
  %25 = bitcast %union.sockaddr_in_4_6* %6 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %37

28:                                               ; preds = %20
  %29 = bitcast %union.sockaddr_in_4_6* %6 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %20
  %33 = bitcast %union.sockaddr_in_4_6* %6 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @T_ASSERT_FAIL(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %28, %24
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %19
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @bzero(%union.sockaddr_in_4_6*, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @T_EXPECT_POSIX_ZERO(i32, i8*, i32) #1

declare dso_local i32 @T_ASSERT_FAIL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
