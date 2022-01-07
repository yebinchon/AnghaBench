; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Cmp.c_Cmp_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Cmp.c_Cmp_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [950 x i8] c"The `Cmp` class is used to define comparison between two object values. This class is important as it is used by many data structures to test equality or ordering of objects.\0A\0ABy default, if passed two objects of the same type, the `Cmp` class will simply compare the raw memory of both objects, using the `Size` class.\0A\0ATo implement this class a `cmp` function must be provided which returns `< 0` if the first object is _less than_ the second, `> 0` if the first object is _greater than_ the second, and `0` if they are _equal_. \0A\0AFor objects that manage their own data this class may need to be overridden to ensure that objects of the same _value_ are still treated as equal. E.G. for string types.\0A\0AThis class to used to test for _value_ equality between objects, I.E. if they represent the same thing. For _object_ equality the `is` keyword can be used, which will return `true` only if two variables are pointing to the same object in memory.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Cmp_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Cmp_Description() #0 {
  ret i8* getelementptr inbounds ([950 x i8], [950 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
