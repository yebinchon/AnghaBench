; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_get_flow_address_v6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_get_flow_address_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfil_hash_entry = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.TYPE_3__ = type { %struct.in6_addr }
%struct.inpcb = type { i32, i32, %struct.in6_addr, %struct.in6_addr }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfil_hash_entry*, %struct.inpcb*, %struct.in6_addr**, %struct.in6_addr**, i32*, i32*)* @cfil_get_flow_address_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfil_get_flow_address_v6(%struct.cfil_hash_entry* %0, %struct.inpcb* %1, %struct.in6_addr** %2, %struct.in6_addr** %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.cfil_hash_entry*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca %struct.in6_addr**, align 8
  %10 = alloca %struct.in6_addr**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.cfil_hash_entry* %0, %struct.cfil_hash_entry** %7, align 8
  store %struct.inpcb* %1, %struct.inpcb** %8, align 8
  store %struct.in6_addr** %2, %struct.in6_addr*** %9, align 8
  store %struct.in6_addr** %3, %struct.in6_addr*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %7, align 8
  %14 = icmp ne %struct.cfil_hash_entry* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %6
  %16 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %7, align 8
  %17 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.in6_addr**, %struct.in6_addr*** %9, align 8
  store %struct.in6_addr* %18, %struct.in6_addr** %19, align 8
  %20 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %7, align 8
  %21 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.in6_addr**, %struct.in6_addr*** %10, align 8
  store %struct.in6_addr* %22, %struct.in6_addr** %23, align 8
  %24 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %7, align 8
  %25 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %7, align 8
  %29 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %12, align 8
  store i32 %30, i32* %31, align 4
  br label %47

32:                                               ; preds = %6
  %33 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %34 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %33, i32 0, i32 3
  %35 = load %struct.in6_addr**, %struct.in6_addr*** %9, align 8
  store %struct.in6_addr* %34, %struct.in6_addr** %35, align 8
  %36 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %37 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %36, i32 0, i32 2
  %38 = load %struct.in6_addr**, %struct.in6_addr*** %10, align 8
  store %struct.in6_addr* %37, %struct.in6_addr** %38, align 8
  %39 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %40 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %44 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %32, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
