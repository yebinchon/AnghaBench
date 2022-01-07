; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Thread.c_Thread_Examples.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Thread.c_Thread_Examples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Example = type { i8*, i8* }

@Thread_Examples.examples = internal global [3 x %struct.Example] [%struct.Example { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str.1, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([508 x i8], [508 x i8]* @.str.3, i32 0, i32 0) }, %struct.Example zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"Usage\00", align 1
@.str.1 = private unnamed_addr constant [180 x i8] c"var set_value(var args) {\0A  assign(get(args, $I(0)), $I(1));\0A  return NULL;\0A}\0A\0Avar i = $I(0);\0A\0Avar x = new(Thread, $(Function, set_value));\0Acall(x, i);\0Ajoin(x);\0A\0Ashow(i); /* 1 */\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Exclusive Resource\00", align 1
@.str.3 = private unnamed_addr constant [508 x i8] c"var increment(var args) {\0A  var mut = get(args, $I(0));\0A  var tot = get(args, $I(1));\0A  lock(mut);\0A  assign(tot, $I(c_int(tot)+1));\0A  unlock(mut);\0A  return NULL;\0A}\0A\0Avar mutex = new(Mutex);\0Avar total = $I(0);\0A\0Avar threads = new(Array, Box,\0A  new(Thread, $(Function, increment)),\0A  new(Thread, $(Function, increment)),\0A  new(Thread, $(Function, increment)));\0A\0Ashow(total); /* 0 */\0A\0Aforeach (t in threads) {\0A  call(deref(t), mutex, total);\0A}\0A\0Aforeach (t in threads) {\0A  join(deref(t));\0A}\0A\0Ashow(total); /* 3 */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Example* ()* @Thread_Examples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Example* @Thread_Examples() #0 {
  ret %struct.Example* getelementptr inbounds ([3 x %struct.Example], [3 x %struct.Example]* @Thread_Examples.examples, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
