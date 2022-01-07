; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Alloc.c_Copy_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Alloc.c_Copy_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [827 x i8] c"The `Copy` class can be used to override the behaviour of an object when a copy is made of it. By default the `Copy` class allocates a new empty object of the same type and uses the `Assign` class to set the contents. The copy is then registered with the Garbage Collector as if it had been constructed with `new`. This means when using manual memory management a copy must be deleted manually.\0A\0AIf the `copy` class is overridden then the implementer may manually have to register the object with the Garbage Collector if they wish for it to be tracked.\0A\0ABy convention `copy` follows the semantics of `Assign`, which typically means a _deep copy_ should be made, and that an object will create a copy of all of the sub-objects it references or contains - although this could vary depending on the type's overridden behaviours.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Copy_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Copy_Description() #0 {
  ret i8* getelementptr inbounds ([827 x i8], [827 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
