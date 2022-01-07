; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Pointer.c_Box_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Pointer.c_Box_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [617 x i8] c"The `Box` type is another wrapper around a C pointer with one additional behaviour as compared to `Ref`. When a `Box` object is deleted it will also call `del` on the object it points to. The means a `Box` is considered a pointer type that _owns_ the object it points to, and so is responsible for it's destruction. Due to this `Box`s must point to valid Cello objects and so can't be initalised with `NULL` or anything else invalid. \0A\0AWhile this might not seem that useful when there is Garbage Collection this can be very useful when Garbage Collection is turned off, and when used in conjunction with collections.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Box_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Box_Description() #0 {
  ret i8* getelementptr inbounds ([617 x i8], [617 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
