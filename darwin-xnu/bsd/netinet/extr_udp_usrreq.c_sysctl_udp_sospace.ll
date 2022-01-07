; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_sysctl_udp_sospace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_sysctl_udp_sospace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid = type { i32 }
%struct.sysctl_req = type { i32 }

@sb_max = common dso_local global i64 0, align 8
@MSIZE = common dso_local global i64 0, align 8
@MCLBYTES = common dso_local global i64 0, align 8
@udp_recvspace = common dso_local global i64 0, align 8
@udp_sendspace = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_oid*, i8*, i32, %struct.sysctl_req*)* @sysctl_udp_sospace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_udp_sospace(%struct.sysctl_oid* %0, i8* %1, i32 %2, %struct.sysctl_req* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sysctl_req*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.sysctl_oid* %0, %struct.sysctl_oid** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sysctl_req* %3, %struct.sysctl_req** %9, align 8
  store i64 0, i64* %10, align 8
  store i64* null, i64** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i64, i64* @sb_max, align 8
  %16 = load i64, i64* @MSIZE, align 8
  %17 = load i64, i64* @MCLBYTES, align 8
  %18 = add nsw i64 %16, %17
  %19 = sdiv i64 %15, %18
  %20 = load i64, i64* @MCLBYTES, align 8
  %21 = mul nsw i64 %19, %20
  store i64 %21, i64* %14, align 8
  %22 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %23 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %27 [
    i32 128, label %25
    i32 129, label %26
  ]

25:                                               ; preds = %4
  store i64* @udp_recvspace, i64** %11, align 8
  br label %29

26:                                               ; preds = %4
  store i64* @udp_sendspace, i64** %11, align 8
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %51

29:                                               ; preds = %26, %25
  %30 = load %struct.sysctl_req*, %struct.sysctl_req** %9, align 8
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @sysctl_io_number(%struct.sysctl_req* %30, i64 %32, i32 8, i64* %10, i32* %12)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load i64, i64* %10, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, i64* %10, align 8
  %45 = load i64*, i64** %11, align 8
  store i64 %44, i64* %45, align 8
  br label %48

46:                                               ; preds = %39, %36
  %47 = load i32, i32* @ERANGE, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %46, %43
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %27
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @sysctl_io_number(%struct.sysctl_req*, i64, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
