; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Function.c_Function_Call.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Function.c_Function_Call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Function = type { %struct.Function* (%struct.Function*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Function* (%struct.Function*, %struct.Function*)* @Function_Call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Function* @Function_Call(%struct.Function* %0, %struct.Function* %1) #0 {
  %3 = alloca %struct.Function*, align 8
  %4 = alloca %struct.Function*, align 8
  %5 = alloca %struct.Function*, align 8
  store %struct.Function* %0, %struct.Function** %3, align 8
  store %struct.Function* %1, %struct.Function** %4, align 8
  %6 = load %struct.Function*, %struct.Function** %3, align 8
  store %struct.Function* %6, %struct.Function** %5, align 8
  %7 = load %struct.Function*, %struct.Function** %5, align 8
  %8 = getelementptr inbounds %struct.Function, %struct.Function* %7, i32 0, i32 0
  %9 = load %struct.Function* (%struct.Function*)*, %struct.Function* (%struct.Function*)** %8, align 8
  %10 = load %struct.Function*, %struct.Function** %4, align 8
  %11 = call %struct.Function* %9(%struct.Function* %10)
  ret %struct.Function* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
