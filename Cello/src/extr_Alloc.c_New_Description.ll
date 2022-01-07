; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Alloc.c_New_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Alloc.c_New_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [996 x i8] c"The `New` class allows the user to define constructors and destructors for a type, accessible via `new` and `del`. Objects allocated with `new` are allocated on the heap and also registered with the Garbage Collector this means technically it isn't required to call `del` on them as they will be cleaned up at a later date.\0A\0AThe `new_root` function can be called to register a variable with the Garbage Collector but to indicate that it will be manually destructed with `del_root` by the user. This should be used for variables that wont be reachable by the Garbage Collector such as those in the data segment or only accessible via vanilla C structures.\0A\0AThe `new_raw` and `del_raw` functions can be called to construct and destruct objects without going via the Garbage Collector.\0A\0AIt is also possible to simply call the `construct` and `destruct` functions if you wish to construct an already allocated object.\0A\0AConstructors should assume that memory is zero'd for an object but nothing else.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @New_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @New_Description() #0 {
  ret i8* getelementptr inbounds ([996 x i8], [996 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
