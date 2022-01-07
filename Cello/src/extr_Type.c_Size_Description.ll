; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Type.c_Size_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Type.c_Size_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [423 x i8] c"The `Size` class is a very important class in Cello because it gives the size in bytes you can expect an object of a given type to be. This is used by many methods to allocate, assign, or compare various objects.\0A\0ABy default this size is automatically found and recorded by the `Cello` macro, but if the type does it's own allocation, or the size cannot be found naturally then it may be necessary to override this method.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Size_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Size_Description() #0 {
  ret i8* getelementptr inbounds ([423 x i8], [423 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
