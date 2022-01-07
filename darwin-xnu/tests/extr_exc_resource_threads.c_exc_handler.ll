; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_exc_resource_threads.c_exc_handler.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_exc_resource_threads.c_exc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACH_PORT_RIGHT_RECEIVE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"mach_port_allocate: %s (%d)\00", align 1
@MACH_MSG_TYPE_MAKE_SEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"mach_port_insert_right: %s (%d)\00", align 1
@EXC_MASK_CRASH = common dso_local global i32 0, align 4
@EXC_MASK_CORPSE_NOTIFY = common dso_local global i32 0, align 4
@EXCEPTION_DEFAULT = common dso_local global i32 0, align 4
@MACH_EXCEPTION_CODES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"task_set_exception_ports: %s (%d)\00", align 1
@sync_sema = common dso_local global i32 0, align 4
@mach_exc_server = common dso_local global i32 0, align 4
@MACH_MSG_SIZE_RELIABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"mach_msg_server: %s (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @exc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @exc_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @mach_task_self()
  %6 = load i32, i32* @MACH_PORT_RIGHT_RECEIVE, align 4
  %7 = call i64 @mach_port_allocate(i32 %5, i32 %6, i32* %4)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @KERN_SUCCESS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @mach_error_string(i64 %12)
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @T_FAIL(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = call i32 (...) @mach_task_self()
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MACH_MSG_TYPE_MAKE_SEND, align 4
  %21 = call i64 @mach_port_insert_right(i32 %17, i32 %18, i32 %19, i32 %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @KERN_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @mach_error_string(i64 %26)
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @T_FAIL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %25, %16
  %31 = call i32 (...) @mach_task_self()
  %32 = load i32, i32* @EXC_MASK_CRASH, align 4
  %33 = load i32, i32* @EXC_MASK_CORPSE_NOTIFY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @EXCEPTION_DEFAULT, align 4
  %37 = load i32, i32* @MACH_EXCEPTION_CODES, align 4
  %38 = or i32 %36, %37
  %39 = call i64 @task_set_exception_ports(i32 %31, i32 %34, i32 %35, i32 %38, i32 0)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @KERN_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @mach_error_string(i64 %44)
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @T_FAIL(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %45, i64 %46)
  br label %48

48:                                               ; preds = %43, %30
  %49 = load i32, i32* @sync_sema, align 4
  %50 = call i32 @dispatch_semaphore_signal(i32 %49)
  %51 = load i32, i32* @mach_exc_server, align 4
  %52 = load i32, i32* @MACH_MSG_SIZE_RELIABLE, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @mach_msg_server(i32 %51, i32 %52, i32 %53, i32 0)
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @KERN_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @mach_error_string(i64 %59)
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @T_FAIL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %48
  ret i8* null
}

declare dso_local i64 @mach_port_allocate(i32, i32, i32*) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @T_FAIL(i8*, i32, i64) #1

declare dso_local i32 @mach_error_string(i64) #1

declare dso_local i64 @mach_port_insert_right(i32, i32, i32, i32) #1

declare dso_local i64 @task_set_exception_ports(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dispatch_semaphore_signal(i32) #1

declare dso_local i64 @mach_msg_server(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
