; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_cmac.c_print128.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_cmac.c_print128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"%s(MSB ~ LSB) = \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%02x %02x %02x %02x\00", align 1
@BT_OCTET16_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print128(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 (i8*, ...) @SMP_TRACE_WARNING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %52, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %55

14:                                               ; preds = %11
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @BT_OCTET16_LEN, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %17, 4
  %19 = sub nsw i32 %16, %18
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %15, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @BT_OCTET16_LEN, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sub nsw i32 %25, %27
  %29 = sub nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %24, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @BT_OCTET16_LEN, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %35, 4
  %37 = sub nsw i32 %34, %36
  %38 = sub nsw i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %33, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @BT_OCTET16_LEN, align 4
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %44, 4
  %46 = sub nsw i32 %43, %45
  %47 = sub nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @SMP_TRACE_WARNING(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %32, i32 %41, i32 %50)
  br label %52

52:                                               ; preds = %14
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %11

55:                                               ; preds = %11
  ret void
}

declare dso_local i32 @SMP_TRACE_WARNING(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
