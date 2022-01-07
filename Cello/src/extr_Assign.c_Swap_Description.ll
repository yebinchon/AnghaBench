; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Assign.c_Swap_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Assign.c_Swap_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [392 x i8] c"The `Swap` class can be used to override the behaviour of swapping two objects. By default the `Swap` class simply swaps the memory of the two objects passed in as parameters making use of the `Size` class. In almost all cases this default behaviour should be fine, even if the objects have custom assignment functions.\0A\0ASwapping can be used internally by various collections and algorithms.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Swap_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Swap_Description() #0 {
  ret i8* getelementptr inbounds ([392 x i8], [392 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
