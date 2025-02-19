; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Pointer.c_Box_Examples.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Pointer.c_Box_Examples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Example = type { i8*, i8* }

@Box_Examples.examples = internal global [4 x %struct.Example] [%struct.Example { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.1, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([234 x i8], [234 x i8]* @.str.5, i32 0, i32 0) }, %struct.Example zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"Usage\00", align 1
@.str.1 = private unnamed_addr constant [177 x i8] c"var obj0 = $F(1.0), obj1 = $F(2.0);\0Avar r = $(Box, obj0);\0Ashow(r);\0Ashow(deref(r)); /* 1.0 */\0Aref(r, obj1);\0Ashow(deref(r)); /* 2.0 */\0Aassign(r, obj0);\0Ashow(deref(r)); /* 1.0 */\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Lifetimes\00", align 1
@.str.3 = private unnamed_addr constant [204 x i8] c"var quote = $S(\22Life is long\22);\0A\0Awith (r in $B(new(String, quote))) {\0A  println(\22This reference is: %$\22, r);\0A  println(\22This string is alive: '%s'\22, deref(r));\0A}\0A\0Aprint(\22Now it has been cleared up!\\n\22);\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Collection\00", align 1
@.str.5 = private unnamed_addr constant [234 x i8] c"/* Multiple Types in one Collection */\0Avar x = new(Array, Box, \0A  new(String, $S(\22Hello\22)), \0A  new(String, $S(\22There\22)), \0A  new(Int, $I(10)));\0A\0Aprint(deref(get(x, $I(0)))); /* Hello */ \0A\0Adel(x); /* Contents of `x` deleted with it */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Example* ()* @Box_Examples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Example* @Box_Examples() #0 {
  ret %struct.Example* getelementptr inbounds ([4 x %struct.Example], [4 x %struct.Example]* @Box_Examples.examples, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
