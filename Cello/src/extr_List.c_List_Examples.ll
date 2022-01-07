; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_List.c_List_Examples.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_List.c_List_Examples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Example = type { i8*, i8* }

@List_Examples.examples = internal global [5 x %struct.Example] [%struct.Example { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.1, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.3, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([285 x i8], [285 x i8]* @.str.5, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.7, i32 0, i32 0) }, %struct.Example zeroinitializer], align 16
@.str = private unnamed_addr constant [24 x i8] c"Construction & Deletion\00", align 1
@.str.1 = private unnamed_addr constant [113 x i8] c"var x = new(List, Int);\0Apush(x, $I(32));\0Apush(x, $I(6));\0A\0A/* <'List' At 0x0000000000414603 [32, 6]> */\0Ashow(x);\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Element Access\00", align 1
@.str.3 = private unnamed_addr constant [172 x i8] c"var x = new(List, Float, $F(0.01), $F(5.12));\0A\0Ashow(get(x, $I(0))); /* 0.01 */\0Ashow(get(x, $I(1))); /* 5.12 */\0A\0Aset(x, $I(0), $F(500.1));\0Ashow(get(x, $I(0))); /* 500.1 */\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Membership\00", align 1
@.str.5 = private unnamed_addr constant [285 x i8] c"var x = new(List, Int, $I(1), $I(2), $I(3), $I(4));\0A\0Ashow($I(mem(x, $I(1)))); /* 1 */\0Ashow($I(len(x)));        /* 4 */\0A\0Arem(x, $I(3));\0A\0Ashow($I(mem(x, $I(3)))); /* 0 */\0Ashow($I(len(x)));        /* 3 */\0Ashow($I(empty(x)));      /* 0 */\0A\0Aresize(x, 0);\0A\0Ashow($I(empty(x)));      /* 1 */\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Iteration\00", align 1
@.str.7 = private unnamed_addr constant [126 x i8] c"var greetings = new(List, String, \0A  $S(\22Hello\22), $S(\22Bonjour\22), $S(\22Hej\22));\0A\0Aforeach(greet in greetings) {\0A  show(greet);\0A}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Example* ()* @List_Examples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Example* @List_Examples() #0 {
  ret %struct.Example* getelementptr inbounds ([5 x %struct.Example], [5 x %struct.Example]* @List_Examples.examples, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
