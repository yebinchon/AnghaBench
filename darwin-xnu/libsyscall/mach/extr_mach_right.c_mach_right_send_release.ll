; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_right.c_mach_right_send_release.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_right.c_mach_right_send_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@MACH_PORT_RIGHT_SEND = common dso_local global i32 0, align 4
@MACH_PORT_RIGHT_DEAD_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"release dead name\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"release send right\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mach_right_send_release(i32 %0) #0 {
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @mach_task_self()
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MACH_PORT_RIGHT_SEND, align 4
  %10 = call i32 @mach_port_mod_refs(i32 %6, i32 %8, i32 %9, i32 -1)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %21 [
    i32 0, label %12
    i32 128, label %13
  ]

12:                                               ; preds = %1
  br label %24

13:                                               ; preds = %1
  %14 = call i32 (...) @mach_task_self()
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MACH_PORT_RIGHT_DEAD_NAME, align 4
  %18 = call i32 @mach_port_mod_refs(i32 %14, i32 %16, i32 %17, i32 -1)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @_mach_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @_mach_assert(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %13, %12
  ret void
}

declare dso_local i32 @mach_port_mod_refs(i32, i32, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @_mach_assert(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
