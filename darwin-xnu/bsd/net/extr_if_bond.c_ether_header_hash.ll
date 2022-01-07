; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_ether_header_hash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_ether_header_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_header = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ether_header*)* @ether_header_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether_header_hash(%struct.ether_header* %0) #0 {
  %2 = alloca %struct.ether_header*, align 8
  %3 = alloca i32, align 4
  store %struct.ether_header* %0, %struct.ether_header** %2, align 8
  %4 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %5 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 4
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 %8, 16
  %10 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %11 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %9, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %15 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
