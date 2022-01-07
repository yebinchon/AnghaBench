; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_proc_disc_error_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_proc_disc_error_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"gatt_proc_disc_error_rsp reason: %02x cmd_code %04x\00", align 1
@GATT_NOT_FOUND = common dso_local global i32 0, align 4
@GATT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Discovery completed\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Incorrect discovery opcode %04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_proc_disc_error_rsp(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @UNUSED(i32* %13)
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @UNUSED(i32* %15)
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %29 [
    i32 129, label %21
    i32 130, label %21
    i32 128, label %21
    i32 131, label %21
  ]

21:                                               ; preds = %5, %5, %5, %5
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @GATT_NOT_FOUND, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %26, i32* %11, align 4
  %27 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  br label %32

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %28
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @gatt_end_operation(i32* %33, i32 %34, i32* null)
  ret void
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*, i32) #1

declare dso_local i32 @gatt_end_operation(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
