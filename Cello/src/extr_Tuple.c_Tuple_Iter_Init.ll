; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Tuple.c_Tuple_Iter_Init.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Tuple.c_Tuple_Iter_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tuple = type { %struct.Tuple** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Tuple* (%struct.Tuple*)* @Tuple_Iter_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Tuple* @Tuple_Iter_Init(%struct.Tuple* %0) #0 {
  %2 = alloca %struct.Tuple*, align 8
  %3 = alloca %struct.Tuple*, align 8
  store %struct.Tuple* %0, %struct.Tuple** %2, align 8
  %4 = load %struct.Tuple*, %struct.Tuple** %2, align 8
  store %struct.Tuple* %4, %struct.Tuple** %3, align 8
  %5 = load %struct.Tuple*, %struct.Tuple** %3, align 8
  %6 = getelementptr inbounds %struct.Tuple, %struct.Tuple* %5, i32 0, i32 0
  %7 = load %struct.Tuple**, %struct.Tuple*** %6, align 8
  %8 = getelementptr inbounds %struct.Tuple*, %struct.Tuple** %7, i64 0
  %9 = load %struct.Tuple*, %struct.Tuple** %8, align 8
  ret %struct.Tuple* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
