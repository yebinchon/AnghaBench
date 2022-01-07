; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Exception.c_Exception_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Exception.c_Exception_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [854 x i8] c"The `Exception` type provides an interface to the Cello Exception System. One instance of this type is created for each `Thread` and stores the various bits of data required for the exception system. It can be retrieved using the `current` function, although not much can be done with it.\0A\0AExceptions are available via the `try`, `catch` and `throw` macros. It is important that the `catch` part of the exception block is always evaluated otherwise the internal state of the exception system can go out of sync. For this reason please never use `return` inside a `try` block. \0A\0AThe `exception_signals` method can be used to register some exception to be thrown for any of the [standard C signals](https://en.wikipedia.org/wiki/C_signal_handling).\0A\0ATo get the current exception object or message use the `exception_message` or `exception_object` methods.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Exception_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Exception_Description() #0 {
  ret i8* getelementptr inbounds ([854 x i8], [854 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
