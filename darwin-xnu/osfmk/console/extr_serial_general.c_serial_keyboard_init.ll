; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_serial_general.c_serial_keyboard_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_serial_general.c_serial_keyboard_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@serialmode = common dso_local global i32 0, align 4
@SERIALMODE_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Serial keyboard started\0A\00", align 1
@serial_keyboard_start = common dso_local global i64 0, align 8
@MAXPRI_KERNEL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"serial_keyboard_init\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial_keyboard_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @serialmode, align 4
  %4 = load i32, i32* @SERIALMODE_INPUT, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %22

8:                                                ; preds = %0
  %9 = call i32 @kprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @serial_keyboard_start, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @MAXPRI_KERNEL, align 4
  %13 = call i64 @kernel_thread_start_priority(i32 %11, i32* null, i32 %12, i32* %2)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @KERN_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @thread_deallocate(i32 %20)
  br label %22

22:                                               ; preds = %19, %7
  ret void
}

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i64 @kernel_thread_start_priority(i32, i32*, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @thread_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
