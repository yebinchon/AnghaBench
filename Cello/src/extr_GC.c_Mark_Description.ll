; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_GC.c_Mark_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_GC.c_Mark_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [604 x i8] c"The `Mark` class can be overridden to customize the behaviour of the Cello Garbage Collector on encountering a given type. By default the allocated memory for a structure is scanned for pointers to other Cello objects, but if a type does its own memory allocation it may store pointers to Cello objects in other locations.\0A\0AIf this is the case the `Mark` class can be overridden and the callback function `f` must be called on all pointers which might be Cello objects which are managed by the class. Alternately the `mark` function can be called on any sub object to start a chain of recursive marking.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Mark_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Mark_Description() #0 {
  ret i8* getelementptr inbounds ([604 x i8], [604 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
