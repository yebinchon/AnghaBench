; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvmath.c_otv_MathKern_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvmath.c_otv_MathKern_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DeviceTableOffset = common dso_local global i32 0, align 4
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @otv_MathKern_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_MathKern_validate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @DeviceTableOffset, align 4
  %11 = call i32 @OTV_OPTIONAL_TABLE(i32 %10)
  %12 = call i32 @OTV_LIMIT_CHECK(i32 2)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @FT_NEXT_USHORT(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 4, %15
  %17 = add nsw i32 %16, 2
  %18 = call i32 @OTV_LIMIT_CHECK(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 4, %19
  %21 = add nsw i32 4, %20
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %42, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @DeviceTableOffset, align 4
  %30 = call i32 @OTV_OPTIONAL_OFFSET(i32 %29)
  %31 = load i32, i32* @DeviceTableOffset, align 4
  %32 = call i32 @OTV_SIZE_CHECK(i32 %31)
  %33 = load i32, i32* @DeviceTableOffset, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @DeviceTableOffset, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @otv_Device_validate(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %22

45:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %67, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 2
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @DeviceTableOffset, align 4
  %55 = call i32 @OTV_OPTIONAL_OFFSET(i32 %54)
  %56 = load i32, i32* @DeviceTableOffset, align 4
  %57 = call i32 @OTV_SIZE_CHECK(i32 %56)
  %58 = load i32, i32* @DeviceTableOffset, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @DeviceTableOffset, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @otv_Device_validate(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %51
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %46

70:                                               ; preds = %46
  %71 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_OPTIONAL_TABLE(i32) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_OPTIONAL_OFFSET(i32) #1

declare dso_local i32 @OTV_SIZE_CHECK(i32) #1

declare dso_local i32 @otv_Device_validate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
