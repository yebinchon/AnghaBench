; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/base/extr_fthash.c_hash_num_lookup.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/base/extr_fthash.c_hash_num_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @hash_num_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_num_lookup(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 255
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 %10, 5
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, 5
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %26, 5
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = ashr i32 %30, 24
  %32 = and i32 %31, 255
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
