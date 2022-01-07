; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_rtsock.c_rt_xaddrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_rtsock.c_rt_xaddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.rt_addrinfo = type { i32, %struct.sockaddr** }

@RTAX_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sa_zero = common dso_local global %struct.sockaddr zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.rt_addrinfo*)* @rt_xaddrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_xaddrs(i64 %0, i64 %1, %struct.rt_addrinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rt_addrinfo*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rt_addrinfo* %2, %struct.rt_addrinfo** %7, align 8
  %10 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %11 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %10, i32 0, i32 1
  %12 = load %struct.sockaddr**, %struct.sockaddr*** %11, align 8
  %13 = call i32 @bzero(%struct.sockaddr** %12, i32 8)
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %68, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @RTAX_MAX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %71

24:                                               ; preds = %22
  %25 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %26 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %68

33:                                               ; preds = %24
  %34 = load i64, i64* %5, align 8
  %35 = inttoptr i64 %34 to %struct.sockaddr*
  store %struct.sockaddr* %35, %struct.sockaddr** %8, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i64, i64* %6, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %72

45:                                               ; preds = %33
  %46 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %52 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %51, i32 0, i32 1
  %53 = load %struct.sockaddr**, %struct.sockaddr*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %53, i64 %55
  store %struct.sockaddr* @sa_zero, %struct.sockaddr** %56, align 8
  store i32 0, i32* %4, align 4
  br label %72

57:                                               ; preds = %45
  %58 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %59 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %60 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %59, i32 0, i32 1
  %61 = load %struct.sockaddr**, %struct.sockaddr*** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %61, i64 %63
  store %struct.sockaddr* %58, %struct.sockaddr** %64, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %67 = call i32 @ADVANCE32(i64 %65, %struct.sockaddr* %66)
  br label %68

68:                                               ; preds = %57, %32
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %14

71:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %50, %43
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @bzero(%struct.sockaddr**, i32) #1

declare dso_local i32 @ADVANCE32(i64, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
