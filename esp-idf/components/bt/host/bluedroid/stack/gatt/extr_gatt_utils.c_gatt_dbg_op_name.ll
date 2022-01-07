; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_dbg_op_name.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_dbg_op_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GATT_WRITE_CMD_MASK = common dso_local global i64 0, align 8
@GATT_CMD_WRITE = common dso_local global i64 0, align 8
@GATT_SIGN_CMD_WRITE = common dso_local global i64 0, align 8
@GATT_OP_CODE_MAX = common dso_local global i64 0, align 8
@op_code_name = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Op Code Exceed Max\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @gatt_dbg_op_name(i64 %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @GATT_WRITE_CMD_MASK, align 8
  %7 = xor i64 %6, -1
  %8 = and i64 %5, %7
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @GATT_CMD_WRITE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 20, i64* %4, align 8
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @GATT_SIGN_CMD_WRITE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i64 21, i64* %4, align 8
  br label %18

18:                                               ; preds = %17, %13
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @GATT_OP_CODE_MAX, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64*, i64** @op_code_name, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i64*
  store i64* %27, i64** %2, align 8
  br label %29

28:                                               ; preds = %18
  store i64* bitcast ([19 x i8]* @.str to i64*), i64** %2, align 8
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i64*, i64** %2, align 8
  ret i64* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
