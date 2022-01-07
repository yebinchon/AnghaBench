; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_importance.c_ipc_importance_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_importance.c_ipc_importance_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@task_max = common dso_local global i32 0, align 4
@thread_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"imp_interactive_receiver\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ipc_importance_interactive_receiver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ipc task importance\00", align 1
@ipc_importance_task_zone = common dso_local global i32 0, align 4
@Z_NOENCRYPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ipc importance inherit\00", align 1
@ipc_importance_inherit_zone = common dso_local global i32 0, align 4
@ipc_importance_manager = common dso_local global i32 0, align 4
@MACH_VOUCHER_ATTR_KEY_IMPORTANCE = common dso_local global i32 0, align 4
@ipc_importance_control = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"Voucher importance manager register returned %d\00", align 1
@global_iit_alloc_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_importance_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [26 x i8], align 16
  %3 = alloca i64, align 8
  %4 = load i32, i32* @task_max, align 4
  %5 = load i32, i32* @thread_max, align 4
  %6 = add nsw i32 %4, %5
  %7 = mul nsw i32 %6, 2
  store i32 %7, i32* %1, align 4
  %8 = getelementptr inbounds [26 x i8], [26 x i8]* %2, i64 0, i64 0
  %9 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %8, i32 26)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* @ipc_importance_interactive_receiver, align 4
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 @zinit(i32 4, i32 %17, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* @ipc_importance_task_zone, align 4
  %19 = load i32, i32* @ipc_importance_task_zone, align 4
  %20 = load i32, i32* @Z_NOENCRYPT, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @zone_change(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32 @zinit(i32 4, i32 %26, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %27, i32* @ipc_importance_inherit_zone, align 4
  %28 = load i32, i32* @ipc_importance_inherit_zone, align 4
  %29 = load i32, i32* @Z_NOENCRYPT, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @zone_change(i32 %28, i32 %29, i32 %30)
  %32 = call i32 (...) @ipc_importance_lock_init()
  %33 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_IMPORTANCE, align 4
  %34 = call i64 @ipc_register_well_known_mach_voucher_attr_manager(i32* @ipc_importance_manager, i32 0, i32 %33, i32* @ipc_importance_control)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* @KERN_SUCCESS, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %13
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %38, %13
  ret void
}

declare dso_local i64 @PE_parse_boot_argn(i8*, i8*, i32) #1

declare dso_local i32 @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @zone_change(i32, i32, i32) #1

declare dso_local i32 @ipc_importance_lock_init(...) #1

declare dso_local i64 @ipc_register_well_known_mach_voucher_attr_manager(i32*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
