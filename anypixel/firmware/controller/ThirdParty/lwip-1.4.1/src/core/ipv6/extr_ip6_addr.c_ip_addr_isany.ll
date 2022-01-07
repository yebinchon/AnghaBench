; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/ipv6/extr_ip6_addr.c_ip_addr_isany.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/ipv6/extr_ip6_addr.c_ip_addr_isany.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_addr = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_addr_isany(%struct.ip_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_addr*, align 8
  store %struct.ip_addr* %0, %struct.ip_addr** %3, align 8
  %4 = load %struct.ip_addr*, %struct.ip_addr** %3, align 8
  %5 = icmp eq %struct.ip_addr* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %33

7:                                                ; preds = %1
  %8 = load %struct.ip_addr*, %struct.ip_addr** %3, align 8
  %9 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ip_addr*, %struct.ip_addr** %3, align 8
  %14 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %12, %17
  %19 = load %struct.ip_addr*, %struct.ip_addr** %3, align 8
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %18, %23
  %25 = load %struct.ip_addr*, %struct.ip_addr** %3, align 8
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %24, %29
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %7, %6
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
