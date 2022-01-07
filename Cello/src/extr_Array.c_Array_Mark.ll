; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Array.c_Array_Mark.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Array.c_Array_Mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Array = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Array*, %struct.Array*, void (%struct.Array*, i8*)*)* @Array_Mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Array_Mark(%struct.Array* %0, %struct.Array* %1, void (%struct.Array*, i8*)* %2) #0 {
  %4 = alloca %struct.Array*, align 8
  %5 = alloca %struct.Array*, align 8
  %6 = alloca void (%struct.Array*, i8*)*, align 8
  %7 = alloca %struct.Array*, align 8
  %8 = alloca i64, align 8
  store %struct.Array* %0, %struct.Array** %4, align 8
  store %struct.Array* %1, %struct.Array** %5, align 8
  store void (%struct.Array*, i8*)* %2, void (%struct.Array*, i8*)** %6, align 8
  %9 = load %struct.Array*, %struct.Array** %4, align 8
  store %struct.Array* %9, %struct.Array** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %22, %3
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.Array*, %struct.Array** %7, align 8
  %13 = getelementptr inbounds %struct.Array, %struct.Array* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load void (%struct.Array*, i8*)*, void (%struct.Array*, i8*)** %6, align 8
  %18 = load %struct.Array*, %struct.Array** %5, align 8
  %19 = load %struct.Array*, %struct.Array** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i8* @Array_Item(%struct.Array* %19, i64 %20)
  call void %17(%struct.Array* %18, i8* %21)
  br label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %8, align 8
  br label %10

25:                                               ; preds = %10
  ret void
}

declare dso_local i8* @Array_Item(%struct.Array*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
