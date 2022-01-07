; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_GC.c_GC_Examples.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_GC.c_GC_Examples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Example = type { i8*, i8* }

@GC_Examples.examples = internal global [2 x %struct.Example] [%struct.Example { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.1, i32 0, i32 0) }, %struct.Example zeroinitializer], align 16
@.str = private unnamed_addr constant [20 x i8] c"Starting & Stopping\00", align 1
@.str.1 = private unnamed_addr constant [163 x i8] c"var gc = current(GC);\0Astop(gc);\0Avar x = new(Int, $I(10)); /* Not added to GC */\0Ashow($I(running(gc))); /* 0 */\0Adel(x); /* Must be deleted when done */\0Astart(gc);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Example* ()* @GC_Examples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Example* @GC_Examples() #0 {
  ret %struct.Example* getelementptr inbounds ([2 x %struct.Example], [2 x %struct.Example]* @GC_Examples.examples, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
