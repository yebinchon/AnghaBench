; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_getcomb_setlifetime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_getcomb_setlifetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_comb = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sadb_comb*)* @key_getcomb_setlifetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_getcomb_setlifetime(%struct.sadb_comb* %0) #0 {
  %2 = alloca %struct.sadb_comb*, align 8
  store %struct.sadb_comb* %0, %struct.sadb_comb** %2, align 8
  %3 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %4 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %6 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %5, i32 0, i32 1
  store i32 1, i32* %6, align 4
  %7 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %8 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %7, i32 0, i32 7
  store i64 0, i64* %8, align 8
  %9 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %10 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %12 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %11, i32 0, i32 2
  store i32 86400, i32* %12, align 8
  %13 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %14 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 80
  %17 = sdiv i32 %16, 100
  %18 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %19 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %21 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %20, i32 0, i32 4
  store i32 28800, i32* %21, align 8
  %22 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %23 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 80
  %26 = sdiv i32 %25, 100
  %27 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %28 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
