; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Iter.c_Range_Assign.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Iter.c_Range_Assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range = type { i32, i32, i32, i32 }

@Range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Range*, %struct.Range*)* @Range_Assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Range_Assign(%struct.Range* %0, %struct.Range* %1) #0 {
  %3 = alloca %struct.Range*, align 8
  %4 = alloca %struct.Range*, align 8
  %5 = alloca %struct.Range*, align 8
  %6 = alloca %struct.Range*, align 8
  store %struct.Range* %0, %struct.Range** %3, align 8
  store %struct.Range* %1, %struct.Range** %4, align 8
  %7 = load %struct.Range*, %struct.Range** %3, align 8
  store %struct.Range* %7, %struct.Range** %5, align 8
  %8 = load %struct.Range*, %struct.Range** %4, align 8
  %9 = load i32, i32* @Range, align 4
  %10 = call %struct.Range* @cast(%struct.Range* %8, i32 %9)
  store %struct.Range* %10, %struct.Range** %6, align 8
  %11 = load %struct.Range*, %struct.Range** %5, align 8
  %12 = getelementptr inbounds %struct.Range, %struct.Range* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.Range*, %struct.Range** %6, align 8
  %15 = getelementptr inbounds %struct.Range, %struct.Range* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @assign(i32 %13, i32 %16)
  %18 = load %struct.Range*, %struct.Range** %6, align 8
  %19 = getelementptr inbounds %struct.Range, %struct.Range* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.Range*, %struct.Range** %5, align 8
  %22 = getelementptr inbounds %struct.Range, %struct.Range* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.Range*, %struct.Range** %6, align 8
  %24 = getelementptr inbounds %struct.Range, %struct.Range* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.Range*, %struct.Range** %5, align 8
  %27 = getelementptr inbounds %struct.Range, %struct.Range* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.Range*, %struct.Range** %6, align 8
  %29 = getelementptr inbounds %struct.Range, %struct.Range* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.Range*, %struct.Range** %5, align 8
  %32 = getelementptr inbounds %struct.Range, %struct.Range* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret void
}

declare dso_local %struct.Range* @cast(%struct.Range*, i32) #1

declare dso_local i32 @assign(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
