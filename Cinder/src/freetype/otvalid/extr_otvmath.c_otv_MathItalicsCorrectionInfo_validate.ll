; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvmath.c_otv_MathItalicsCorrectionInfo_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvmath.c_otv_MathItalicsCorrectionInfo_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Coverage = common dso_local global i32 0, align 4
@DeviceTableOffset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"MathItalicsCorrectionInfo\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"MathTopAccentAttachment\00", align 1
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @otv_MathItalicsCorrectionInfo_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_MathItalicsCorrectionInfo_validate(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @Coverage, align 4
  %13 = call i32 @OTV_OPTIONAL_TABLE(i32 %12)
  %14 = load i32, i32* @DeviceTableOffset, align 4
  %15 = call i32 @OTV_OPTIONAL_TABLE(i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @FT_UNUSED(i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)
  %22 = call i32 @OTV_NAME_ENTER(i8* %21)
  %23 = call i32 @OTV_LIMIT_CHECK(i32 4)
  %24 = load i32, i32* @Coverage, align 4
  %25 = call i32 @OTV_OPTIONAL_OFFSET(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @FT_NEXT_USHORT(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 4, %28
  %30 = call i32 @OTV_LIMIT_CHECK(i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 4, %31
  %33 = add nsw i32 4, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @Coverage, align 4
  %35 = call i32 @OTV_SIZE_CHECK(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @Coverage, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32 @otv_Coverage_validate(i32 %38, i32 %39, i64 %41)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %63, %3
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @DeviceTableOffset, align 4
  %51 = call i32 @OTV_OPTIONAL_OFFSET(i32 %50)
  %52 = load i32, i32* @DeviceTableOffset, align 4
  %53 = call i32 @OTV_SIZE_CHECK(i32 %52)
  %54 = load i32, i32* @DeviceTableOffset, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @DeviceTableOffset, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @otv_Device_validate(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %47
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %43

66:                                               ; preds = %43
  %67 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_OPTIONAL_TABLE(i32) #1

declare dso_local i32 @FT_UNUSED(i64) #1

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @OTV_OPTIONAL_OFFSET(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_SIZE_CHECK(i32) #1

declare dso_local i32 @otv_Coverage_validate(i32, i32, i64) #1

declare dso_local i32 @otv_Device_validate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
