; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/bank/extr_bank.c_bank_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/bank/extr_bank.c_bank_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_SUCCESS = common dso_local global i64 0, align 8
@MAX_BANK_TASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"bank_task\00", align 1
@bank_task_zone = common dso_local global i8* null, align 8
@MAX_BANK_ACCOUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"bank_account\00", align 1
@bank_account_zone = common dso_local global i8* null, align 8
@bank_lock_grp_attr = common dso_local global i32 0, align 4
@bank_lock_grp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"bank_lock\00", align 1
@bank_lock_attr = common dso_local global i32 0, align 4
@bank_manager = common dso_local global i32 0, align 4
@MACH_VOUCHER_ATTR_KEY_BANK = common dso_local global i32 0, align 4
@bank_voucher_attr_control = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"BANK subsystem initialization failed\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"BANK subsystem is initialized\0A\00", align 1
@bank_accounts_list = common dso_local global i32 0, align 4
@bank_accounts_list_lock = common dso_local global i32 0, align 4
@bank_dev_lock_attr = common dso_local global i32 0, align 4
@bank_dev_lock_grp = common dso_local global i32 0, align 4
@bank_dev_lock_grp_attr = common dso_local global i32 0, align 4
@bank_tasks_list = common dso_local global i32 0, align 4
@bank_tasks_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bank_init() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %2, i64* %1, align 8
  %3 = load i32, i32* @MAX_BANK_TASK, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = trunc i64 %5 to i32
  %7 = call i8* @zinit(i32 4, i32 %6, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** @bank_task_zone, align 8
  %8 = load i32, i32* @MAX_BANK_ACCOUNT, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = call i8* @zinit(i32 4, i32 %11, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** @bank_account_zone, align 8
  %13 = call i32 (...) @init_bank_ledgers()
  %14 = call i32 @lck_grp_attr_setdefault(i32* @bank_lock_grp_attr)
  %15 = call i32 @lck_grp_init(i32* @bank_lock_grp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* @bank_lock_grp_attr)
  %16 = call i32 @lck_attr_setdefault(i32* @bank_lock_attr)
  %17 = call i32 (...) @global_bank_task_lock_init()
  %18 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_BANK, align 4
  %19 = call i64 @ipc_register_well_known_mach_voucher_attr_manager(i32* @bank_manager, i32 0, i32 %18, i32* @bank_voucher_attr_control)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @KERN_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %0
  %24 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %0
  %26 = call i32 @kprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i8* @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @init_bank_ledgers(...) #1

declare dso_local i32 @lck_grp_attr_setdefault(i32*) #1

declare dso_local i32 @lck_grp_init(i32*, i8*, i32*) #1

declare dso_local i32 @lck_attr_setdefault(i32*) #1

declare dso_local i32 @global_bank_task_lock_init(...) #1

declare dso_local i64 @ipc_register_well_known_mach_voucher_attr_manager(i32*, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @kprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
