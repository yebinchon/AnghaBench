; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/bank/extr_bank.c_bank_get_voucher_bank_account.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/bank/extr_bank.c_bank_get_voucher_bank_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64 }

@BANK_ELEMENT_NULL = common dso_local global %struct.TYPE_13__* null, align 8
@BANK_ACCOUNT_NULL = common dso_local global %struct.TYPE_14__* null, align 8
@MACH_VOUCHER_ATTR_VALUE_MAX_NESTED = common dso_local global i32 0, align 4
@bank_voucher_attr_control = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@BANK_DEFAULT_VALUE = common dso_local global %struct.TYPE_13__* null, align 8
@BANK_DEFAULT_TASK_VALUE = common dso_local global %struct.TYPE_13__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@BANK_TASK = common dso_local global i64 0, align 8
@BANK_ACCOUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Bogus bank type: %d passed in bank_get_voucher_bank_account\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32)* @bank_get_voucher_bank_account to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @bank_get_voucher_bank_account(i32 %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** @BANK_ELEMENT_NULL, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** @BANK_ACCOUNT_NULL, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %5, align 8
  %13 = load i32, i32* @MACH_VOUCHER_ATTR_VALUE_MAX_NESTED, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @MACH_VOUCHER_ATTR_VALUE_MAX_NESTED, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* @bank_voucher_attr_control, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @mach_voucher_attr_control_get_values(i32 %19, i32 %20, i32* %16, i64* %8)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @KERN_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** @BANK_ACCOUNT_NULL, align 8
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %92

30:                                               ; preds = %25
  %31 = getelementptr inbounds i32, i32* %16, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = call %struct.TYPE_13__* @HANDLE_TO_BANK_ELEMENT(i32 %32)
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %4, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** @BANK_DEFAULT_VALUE, align 8
  %36 = icmp eq %struct.TYPE_13__* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** @BANK_ACCOUNT_NULL, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %92

39:                                               ; preds = %30
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** @BANK_DEFAULT_TASK_VALUE, align 8
  %42 = icmp eq %struct.TYPE_13__* %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = call i32 (...) @current_task()
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @get_bank_task_context(i32 %44, i32 %45)
  %47 = call %struct.TYPE_13__* @CAST_TO_BANK_ELEMENT(i32 %46)
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %4, align 8
  br label %48

48:                                               ; preds = %43, %39
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BANK_TASK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** @BANK_ACCOUNT_NULL, align 8
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %92

56:                                               ; preds = %48
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BANK_ACCOUNT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %56
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = call %struct.TYPE_14__* @CAST_TO_BANK_ACCOUNT(%struct.TYPE_13__* %63)
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %5, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %62
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = call i64 @bank_get_bank_account_thread_group(%struct.TYPE_14__* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @bank_get_bank_task_thread_group(i64 %77)
  %79 = icmp ne i64 %74, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72, %62
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %92

82:                                               ; preds = %72
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** @BANK_ACCOUNT_NULL, align 8
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %92

84:                                               ; preds = %56
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** @BANK_ACCOUNT_NULL, align 8
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %82, %80, %54, %37, %28
  %93 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mach_voucher_attr_control_get_values(i32, i32, i32*, i64*) #2

declare dso_local %struct.TYPE_13__* @HANDLE_TO_BANK_ELEMENT(i32) #2

declare dso_local %struct.TYPE_13__* @CAST_TO_BANK_ELEMENT(i32) #2

declare dso_local i32 @get_bank_task_context(i32, i32) #2

declare dso_local i32 @current_task(...) #2

declare dso_local %struct.TYPE_14__* @CAST_TO_BANK_ACCOUNT(%struct.TYPE_13__*) #2

declare dso_local i64 @bank_get_bank_account_thread_group(%struct.TYPE_14__*) #2

declare dso_local i64 @bank_get_bank_task_thread_group(i64) #2

declare dso_local i32 @panic(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
