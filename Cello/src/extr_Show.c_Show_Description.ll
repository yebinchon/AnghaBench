; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Show.c_Show_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Show.c_Show_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1026 x i8] c"The `Show` class is used to convert objects to, and from, a `String` representation. Objects which implement `Show` should expect the input/output object to be one that support the `Format` class, such as `File` or `String`.\0A\0AThe `print`, `println` and `print_to` functions provide a mechanism for writing formatted strings with Cello objects. To do this they provide a new format specifier `%$` which uses an object's `Show` functionality to write that part of the string. All objects which don't support `Show` can still be shown via a default implementation.\0A\0AAll the Show methods which are variable arguments only take `var` objects as input. To print native C types wrap them in Cello types using `$`.\0A\0AStandard format specifiers such as `%f` and `%d` will call functions such as `c_float` and `c_int` on their passed arguments to convert objects to C types before performing the standard C formatting behaviour.\0A\0ASee [printf](http://www.cplusplus.com/reference/cstdio/printf/) for more information on format specifiers.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Show_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Show_Description() #0 {
  ret i8* getelementptr inbounds ([1026 x i8], [1026 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
