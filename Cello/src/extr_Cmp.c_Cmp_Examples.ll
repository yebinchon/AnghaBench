; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Cmp.c_Cmp_Examples.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Cmp.c_Cmp_Examples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Example = type { i8*, i8* }

@Cmp_Examples.examples = internal global [3 x %struct.Example] [%struct.Example { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([291 x i8], [291 x i8]* @.str.1, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([350 x i8], [350 x i8]* @.str.3, i32 0, i32 0) }, %struct.Example zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"Usage 1\00", align 1
@.str.1 = private unnamed_addr constant [291 x i8] c"show($I( eq($I(1), $I( 1)))); /* 1 */\0Ashow($I(neq($I(2), $I(20)))); /* 1 */\0Ashow($I(neq($S(\22Hello\22), $S(\22Hello\22)))); /* 0 */\0Ashow($I( eq($S(\22Hello\22), $S(\22There\22)))); /* 0 */\0A\0Avar a = $I(1); var b = $I(1);\0A\0Ashow($I(eq(a, b))); /* 1 */\0Ashow($I(a is b));   /* 0 */\0Ashow($I(a isnt b)); /* 1 */\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Usage 2\00", align 1
@.str.3 = private unnamed_addr constant [350 x i8] c"show($I(gt($I(15), $I(3 )))); /* 1 */\0Ashow($I(lt($I(70), $I(81)))); /* 1 */\0Ashow($I(lt($I(71), $I(71)))); /* 0 */\0Ashow($I(ge($I(78), $I(71)))); /* 1 */\0Ashow($I(gt($I(32), $I(32)))); /* 0 */\0Ashow($I(le($I(21), $I(32)))); /* 1 */\0A\0Ashow($I(cmp($I(20), $I(20)))); /*  0 */\0Ashow($I(cmp($I(21), $I(20)))); /*  1 */\0Ashow($I(cmp($I(20), $I(21)))); /* -1 */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Example* ()* @Cmp_Examples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Example* @Cmp_Examples() #0 {
  ret %struct.Example* getelementptr inbounds ([3 x %struct.Example], [3 x %struct.Example]* @Cmp_Examples.examples, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
