; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Tuple.c_Tuple_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Tuple.c_Tuple_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [910 x i8] c"The `Tuple` type provides a basic way to create a simple collection of objects. Its main use is the fact that it can be constructed on the stack using the `tuple` macro. This makes it suitable for a number of purposes such as use in functions that take a variable number of arguments.\0A\0ATuples can also be constructed on the heap and stored in collections. This makes them also useful as a simple _untyped_ list of objects.\0A\0AInternally Tuples are just an array of pointers terminated with a pointer to the Cello `Terminal` object. This makes positional access fast, but many other operations slow including iteration and counting the number of elements. Due to this it is only recommended Tuples are used for small collections. \0A\0ABecause Tuples are terminated with the Cello `Terminal` object this can't naturally be included within them. This object should therefore only be returned from iteration functions.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Tuple_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Tuple_Description() #0 {
  ret i8* getelementptr inbounds ([910 x i8], [910 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
