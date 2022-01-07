; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_key_src_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_key_src_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.inpcb* }
%struct.inpcb = type { i32, i32, i32, i32, i32, i32 }
%struct.tcp_cache_key_src = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@INP_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_cache_key_src*)* @tcp_cache_key_src_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cache_key_src_create(%struct.tcpcb* %0, %struct.tcp_cache_key_src* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcp_cache_key_src*, align 8
  %5 = alloca %struct.inpcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcp_cache_key_src* %1, %struct.tcp_cache_key_src** %4, align 8
  %6 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 0
  %8 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  store %struct.inpcb* %8, %struct.inpcb** %5, align 8
  %9 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %4, align 8
  %10 = call i32 @memset(%struct.tcp_cache_key_src* %9, i32 0, i32 24)
  %11 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %12 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %4, align 8
  %15 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @INP_IPV6, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %4, align 8
  %24 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %27 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %26, i32 0, i32 4
  %28 = call i32 @memcpy(i32* %25, i32* %27, i32 4)
  %29 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %4, align 8
  %30 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %33 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %32, i32 0, i32 3
  %34 = call i32 @memcpy(i32* %31, i32* %33, i32 4)
  %35 = load i32, i32* @AF_INET6, align 4
  %36 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %4, align 8
  %37 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %54

38:                                               ; preds = %2
  %39 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %4, align 8
  %40 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 2
  %44 = call i32 @memcpy(i32* %41, i32* %43, i32 4)
  %45 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %4, align 8
  %46 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %49 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %48, i32 0, i32 1
  %50 = call i32 @memcpy(i32* %47, i32* %49, i32 4)
  %51 = load i32, i32* @AF_INET, align 4
  %52 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %4, align 8
  %53 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %38, %22
  ret void
}

declare dso_local i32 @memset(%struct.tcp_cache_key_src*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
