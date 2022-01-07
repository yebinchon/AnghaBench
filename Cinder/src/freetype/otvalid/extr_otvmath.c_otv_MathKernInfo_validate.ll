; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvmath.c_otv_MathKernInfo_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvmath.c_otv_MathKernInfo_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Coverage = common dso_local global i64 0, align 8
@MKRecordOffset = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"MathKernInfo\00", align 1
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @otv_MathKernInfo_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_MathKernInfo_validate(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* @Coverage, align 8
  %12 = call i32 @OTV_OPTIONAL_TABLE(i64 %11)
  %13 = load i64, i64* @MKRecordOffset, align 8
  %14 = call i32 @OTV_OPTIONAL_TABLE(i64 %13)
  %15 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @OTV_LIMIT_CHECK(i32 4)
  %17 = load i64, i64* @Coverage, align 8
  %18 = call i32 @OTV_OPTIONAL_OFFSET(i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @FT_NEXT_USHORT(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 8, %21
  %23 = call i32 @OTV_LIMIT_CHECK(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 8, %24
  %26 = add nsw i32 4, %25
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* @Coverage, align 8
  %28 = call i32 @OTV_SIZE_CHECK(i64 %27)
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @Coverage, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @otv_Coverage_validate(i64 %31, i32 %32, i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %61, %2
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load i64, i64* @MKRecordOffset, align 8
  %45 = call i32 @OTV_OPTIONAL_OFFSET(i64 %44)
  %46 = load i64, i64* @MKRecordOffset, align 8
  %47 = call i32 @OTV_SIZE_CHECK(i64 %46)
  %48 = load i64, i64* @MKRecordOffset, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @MKRecordOffset, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @otv_MathKern_validate(i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %43
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %40

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %35

64:                                               ; preds = %35
  %65 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_OPTIONAL_TABLE(i64) #1

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @OTV_OPTIONAL_OFFSET(i64) #1

declare dso_local i32 @FT_NEXT_USHORT(i64) #1

declare dso_local i32 @OTV_SIZE_CHECK(i64) #1

declare dso_local i32 @otv_Coverage_validate(i64, i32, i32) #1

declare dso_local i32 @otv_MathKern_validate(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
