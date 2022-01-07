; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Iter.c_Iter_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Iter.c_Iter_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [397 x i8] c"The `Iter` class is implemented by types which can be looped over. This allows them to be used in conjunction with the `foreach` macro as well as various other components of Cello.\0A\0ATo signal that an interation has finished an iteration should return the Cello object `Terminal`. Due to this - the `Terminal` object cannot be placed inside of Tuples because it artificially shortens their length.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Iter_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Iter_Description() #0 {
  ret i8* getelementptr inbounds ([397 x i8], [397 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
