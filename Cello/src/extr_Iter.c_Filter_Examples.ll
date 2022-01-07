; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Iter.c_Filter_Examples.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Iter.c_Filter_Examples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Example = type { i8*, i8* }

@Filter_Examples.examples = internal global [3 x %struct.Example] [%struct.Example { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.1, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.3, i32 0, i32 0) }, %struct.Example zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"Usage\00", align 1
@.str.1 = private unnamed_addr constant [204 x i8] c"var greater_than_two(var x) {\0A  return c_int(x) > 2 ? x : NULL;\0A}\0A\0Avar x = new(Array, Int, $I(0), $I(5), $I(2), $I(9));\0A\0Aforeach (n in filter(x, $(Function, greater_than_two))) {\0A  show(n); /* 5, 9 */\0A}\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Usage 2\00", align 1
@.str.3 = private unnamed_addr constant [261 x i8] c"var mem_hello(var x) {\0A  return mem(x, $S(\22Hello\22)) ? x : NULL;\0A}\0A\0Avar x = new(Tuple, \0A  $S(\22Hello World\22), $S(\22Hello Dan\22), \0A  $S(\22Bonjour\22));\0A\0Avar y = new(Tuple);\0Aassign(y, filter(x, $(Function, mem_hello)));\0Ashow(y); /* tuple(\22Hello World\22, \22Hello Dan\22) */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Example* ()* @Filter_Examples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Example* @Filter_Examples() #0 {
  ret %struct.Example* getelementptr inbounds ([3 x %struct.Example], [3 x %struct.Example]* @Filter_Examples.examples, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
