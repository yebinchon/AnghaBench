; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-x86_64.c_split_address.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-x86_64.c_split_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i32)* @split_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @split_address(i32 %0) #0 {
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = ashr i32 %4, 39
  %6 = and i32 %5, 511
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 30
  %10 = and i32 %9, 511
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = ashr i32 %12, 21
  %14 = and i32 %13, 511
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 12
  %18 = and i32 %17, 511
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.TYPE_3__* %2 to { i64, i64 }*
  %21 = load { i64, i64 }, { i64, i64 }* %20, align 4
  ret { i64, i64 } %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
