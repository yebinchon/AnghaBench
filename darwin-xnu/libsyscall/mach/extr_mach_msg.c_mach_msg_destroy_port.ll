; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_msg.c_mach_msg_destroy_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_msg.c_mach_msg_destroy_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mach_task_self_ = common dso_local global i32 0, align 4
@MACH_PORT_RIGHT_RECEIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mach_msg_destroy_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mach_msg_destroy_port(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @MACH_PORT_VALID(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %34 [
    i32 129, label %10
    i32 128, label %10
    i32 130, label %14
    i32 132, label %19
    i32 131, label %27
  ]

10:                                               ; preds = %8, %8
  %11 = load i32, i32* @mach_task_self_, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @mach_port_deallocate(i32 %11, i32 %12)
  br label %34

14:                                               ; preds = %8
  %15 = load i32, i32* @mach_task_self_, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MACH_PORT_RIGHT_RECEIVE, align 4
  %18 = call i32 @mach_port_mod_refs(i32 %15, i32 %16, i32 %17, i32 -1)
  br label %34

19:                                               ; preds = %8
  %20 = load i32, i32* @mach_task_self_, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @mach_port_insert_right(i32 %20, i32 %21, i32 %22, i32 132)
  %24 = load i32, i32* @mach_task_self_, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @mach_port_deallocate(i32 %24, i32 %25)
  br label %34

27:                                               ; preds = %8
  %28 = load i32, i32* @mach_task_self_, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @mach_port_extract_right(i32 %28, i32 %29, i32 131, i32* %3, i32* %4)
  %31 = load i32, i32* @mach_task_self_, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @mach_port_deallocate(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %8, %27, %19, %14, %10
  br label %35

35:                                               ; preds = %34, %2
  ret void
}

declare dso_local i64 @MACH_PORT_VALID(i32) #1

declare dso_local i32 @mach_port_deallocate(i32, i32) #1

declare dso_local i32 @mach_port_mod_refs(i32, i32, i32, i32) #1

declare dso_local i32 @mach_port_insert_right(i32, i32, i32, i32) #1

declare dso_local i32 @mach_port_extract_right(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
