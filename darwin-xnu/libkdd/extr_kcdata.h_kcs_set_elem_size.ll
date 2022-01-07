; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkdd/extr_kcdata.h_kcs_set_elem_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkdd/extr_kcdata.h_kcs_set_elem_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @kcs_set_elem_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcs_set_elem_size(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 65535
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 65535
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  store i32 -1, i32* %4, align 4
  br label %31

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 65535
  %20 = shl i32 %19, 16
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 65535
  %23 = or i32 %20, %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %17
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
