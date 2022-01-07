; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Iter.c_Map_Examples.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Iter.c_Map_Examples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Example = type { i8*, i8* }

@Map_Examples.examples = internal global [3 x %struct.Example] [%struct.Example { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.1, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.3, i32 0, i32 0) }, %struct.Example zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"Usage\00", align 1
@.str.1 = private unnamed_addr constant [210 x i8] c"var convert_to_int(var x) {\0A  var y = new(Int);\0A  look_from(y, x, 0);\0A  return y;\0A}\0A\0Avar x = tuple($S(\221\22), $S(\222\22), $S(\223\22));\0A\0Aforeach (y in map(x, $(Function, convert_to_int))) {\0A  show(y); /* 1, 2, 3 */\0A};\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Usage 2\00", align 1
@.str.3 = private unnamed_addr constant [185 x i8] c"var print_object(var x) {\0A  println(\22Object %$ is of type %$\22, x, type_of(x));\0A  return NULL;\0A}\0A\0Avar x = tuple($I(0), $S(\22Hello!\22), $F(2.4));\0A\0Acall(map(x, $(Function, print_object)));\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Example* ()* @Map_Examples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Example* @Map_Examples() #0 {
  ret %struct.Example* getelementptr inbounds ([3 x %struct.Example], [3 x %struct.Example]* @Map_Examples.examples, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
