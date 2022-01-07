; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_inp_to_sockaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_inp_to_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }
%union.sockaddr_in_4_6 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32 }
%struct.sockaddr_in = type { i32, i32, i32, i32 }

@INP_IPV4 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, %struct.sockaddr**)* @flow_divert_inp_to_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_inp_to_sockaddr(%struct.inpcb* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.sockaddr**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.sockaddr_in_4_6, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = call i32 @bzero(%union.sockaddr_in_4_6* %6, i32 16)
  %10 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @INP_IPV4, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = bitcast %union.sockaddr_in_4_6* %6 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %17, %struct.sockaddr_in** %7, align 8
  %18 = load i32, i32* @AF_INET, align 4
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  store i32 16, i32* %22, align 4
  %23 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %24 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %29 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %58

33:                                               ; preds = %2
  %34 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %35 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @INP_IPV6, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = bitcast %union.sockaddr_in_4_6* %6 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %41, %struct.sockaddr_in6** %8, align 8
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 0
  store i32 16, i32* %43, align 4
  %44 = load i32, i32* @AF_INET6, align 4
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %48 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %53 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %40, %33
  br label %58

58:                                               ; preds = %57, %16
  %59 = bitcast %union.sockaddr_in_4_6* %6 to %struct.sockaddr*
  %60 = call %struct.sockaddr* @dup_sockaddr(%struct.sockaddr* %59, i32 1)
  %61 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  store %struct.sockaddr* %60, %struct.sockaddr** %61, align 8
  %62 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  %63 = load %struct.sockaddr*, %struct.sockaddr** %62, align 8
  %64 = icmp eq %struct.sockaddr* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @ENOBUFS, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %58
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @bzero(%union.sockaddr_in_4_6*, i32) #1

declare dso_local %struct.sockaddr* @dup_sockaddr(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
