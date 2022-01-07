; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_dup_addr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_dup_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i64, i32 }

@AF_INET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.sockaddr*, %struct.sockaddr**)* @flow_divert_dup_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_dup_addr(i64 %0, %struct.sockaddr* %1, %struct.sockaddr** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr_storage, align 8
  store i64 %0, i64* %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.sockaddr** %2, %struct.sockaddr*** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %11 = icmp ne %struct.sockaddr* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %13, %struct.sockaddr** %8, align 8
  br label %28

14:                                               ; preds = %3
  %15 = call i32 @memset(%struct.sockaddr_storage* %9, i32 0, i32 16)
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF_INET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 1
  store i32 4, i32* %23, align 8
  br label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  store %struct.sockaddr* %27, %struct.sockaddr** %8, align 8
  br label %28

28:                                               ; preds = %26, %12
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %33 = call %struct.sockaddr* @dup_sockaddr(%struct.sockaddr* %32, i32 1)
  %34 = load %struct.sockaddr**, %struct.sockaddr*** %6, align 8
  store %struct.sockaddr* %33, %struct.sockaddr** %34, align 8
  %35 = load %struct.sockaddr**, %struct.sockaddr*** %6, align 8
  %36 = load %struct.sockaddr*, %struct.sockaddr** %35, align 8
  %37 = icmp eq %struct.sockaddr* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOBUFS, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %31
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local %struct.sockaddr* @dup_sockaddr(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
