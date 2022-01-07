; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_hash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_cache_key_src = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tcp_cache_key = type { %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@tcp_cache_hash_seed = common dso_local global i32 0, align 4
@tcp_cache_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_cache_key_src*, %struct.tcp_cache_key*)* @tcp_cache_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_cache_hash(%struct.tcp_cache_key_src* %0, %struct.tcp_cache_key* %1) #0 {
  %3 = alloca %struct.tcp_cache_key_src*, align 8
  %4 = alloca %struct.tcp_cache_key*, align 8
  %5 = alloca i32, align 4
  store %struct.tcp_cache_key_src* %0, %struct.tcp_cache_key_src** %3, align 8
  store %struct.tcp_cache_key* %1, %struct.tcp_cache_key** %4, align 8
  %6 = load %struct.tcp_cache_key*, %struct.tcp_cache_key** %4, align 8
  %7 = call i32 @bzero(%struct.tcp_cache_key* %6, i32 24)
  %8 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %9 = load %struct.tcp_cache_key*, %struct.tcp_cache_key** %4, align 8
  %10 = getelementptr inbounds %struct.tcp_cache_key, %struct.tcp_cache_key* %9, i32 0, i32 2
  %11 = call i32 @tcp_cache_hash_src(%struct.tcp_cache_key_src* %8, i32* %10)
  %12 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %13 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_INET6, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load i64, i64* @AF_INET6, align 8
  %19 = load %struct.tcp_cache_key*, %struct.tcp_cache_key** %4, align 8
  %20 = getelementptr inbounds %struct.tcp_cache_key, %struct.tcp_cache_key* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.tcp_cache_key*, %struct.tcp_cache_key** %4, align 8
  %22 = getelementptr inbounds %struct.tcp_cache_key, %struct.tcp_cache_key* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %25 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @memcpy(i32* %23, i32* %26, i32 4)
  br label %39

28:                                               ; preds = %2
  %29 = load i64, i64* @AF_INET, align 8
  %30 = load %struct.tcp_cache_key*, %struct.tcp_cache_key** %4, align 8
  %31 = getelementptr inbounds %struct.tcp_cache_key, %struct.tcp_cache_key* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.tcp_cache_key*, %struct.tcp_cache_key** %4, align 8
  %33 = getelementptr inbounds %struct.tcp_cache_key, %struct.tcp_cache_key* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %36 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @memcpy(i32* %34, i32* %37, i32 4)
  br label %39

39:                                               ; preds = %28, %17
  %40 = load %struct.tcp_cache_key*, %struct.tcp_cache_key** %4, align 8
  %41 = load i32, i32* @tcp_cache_hash_seed, align 4
  %42 = call i32 @net_flowhash(%struct.tcp_cache_key* %40, i32 24, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @tcp_cache_size, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %43, %45
  ret i32 %46
}

declare dso_local i32 @bzero(%struct.tcp_cache_key*, i32) #1

declare dso_local i32 @tcp_cache_hash_src(%struct.tcp_cache_key_src*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @net_flowhash(%struct.tcp_cache_key*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
