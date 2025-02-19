; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ux_handler.c_ux_handler_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ux_handler.c_ux_handler_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ux_handler_port = common dso_local global i64 0, align 8
@IP_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"can't allocate unix exception port\00", align 1
@ux_handler_kobject = common dso_local global i32 0, align 4
@IKOT_UX_HANDLER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ux_handler_init() #0 {
  %1 = call i64 (...) @ipc_port_alloc_kernel()
  store i64 %1, i64* @ux_handler_port, align 8
  %2 = load i64, i64* @ux_handler_port, align 8
  %3 = load i64, i64* @IP_NULL, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i64, i64* @ux_handler_port, align 8
  %9 = load i32, i32* @IKOT_UX_HANDLER, align 4
  %10 = call i32 @ipc_kobject_set(i64 %8, i32 ptrtoint (i32* @ux_handler_kobject to i32), i32 %9)
  ret void
}

declare dso_local i64 @ipc_port_alloc_kernel(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ipc_kobject_set(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
