; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_fasttrap_isa.c_fasttrap_get_condition_code.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_fasttrap_isa.c_fasttrap_get_condition_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*)* @fasttrap_get_condition_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasttrap_get_condition_code(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 14, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @GETITSTATE(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ISLASTINIT(i32 %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %11
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ARM_CONDCODE(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %24
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @GETITSTATE(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ISLASTINIT(i32) #1

declare dso_local i32 @ARM_CONDCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
