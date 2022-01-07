; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Start.c_Start_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Start.c_Start_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [424 x i8] c"The `Start` class can be implemented by types which provide an abstract notion of a started and stopped state. This can be real processes such as `Thread`, or something like `File` where the on/off correspond to if the file is open or not.\0A\0AThe main nicety of the `Start` class is that it allows use of the `with` macro which performs the `start` function at the opening of a scope block and the `stop` function at the end.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Start_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Start_Description() #0 {
  ret i8* getelementptr inbounds ([424 x i8], [424 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
