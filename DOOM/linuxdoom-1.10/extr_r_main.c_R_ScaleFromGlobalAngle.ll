; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_ScaleFromGlobalAngle.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_ScaleFromGlobalAngle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANG90 = common dso_local global i64 0, align 8
@viewangle = common dso_local global i64 0, align 8
@rw_normalangle = common dso_local global i64 0, align 8
@finesine = common dso_local global i32* null, align 8
@ANGLETOFINESHIFT = common dso_local global i64 0, align 8
@projection = common dso_local global i32 0, align 4
@detailshift = common dso_local global i32 0, align 4
@rw_distance = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@finecosine = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_ScaleFromGlobalAngle(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* @ANG90, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @viewangle, align 8
  %13 = sub i64 %11, %12
  %14 = add i64 %10, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i64, i64* @ANG90, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @rw_normalangle, align 8
  %19 = sub i64 %17, %18
  %20 = add i64 %16, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** @finesine, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %25 = trunc i64 %24 to i32
  %26 = ashr i32 %23, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** @finesine, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %33 = trunc i64 %32 to i32
  %34 = ashr i32 %31, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @projection, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @FixedMul(i32 %38, i32 %39)
  %41 = load i32, i32* @detailshift, align 4
  %42 = shl i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @rw_distance, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @FixedMul(i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 16
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %1
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @FixedDiv(i32 %51, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @FRACUNIT, align 4
  %56 = mul nsw i32 64, %55
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @FRACUNIT, align 4
  %60 = mul nsw i32 64, %59
  store i32 %60, i32* %3, align 4
  br label %66

61:                                               ; preds = %50
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 256
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 256, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %61
  br label %66

66:                                               ; preds = %65, %58
  br label %70

67:                                               ; preds = %1
  %68 = load i32, i32* @FRACUNIT, align 4
  %69 = mul nsw i32 64, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %66
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @FixedMul(i32, i32) #1

declare dso_local i32 @FixedDiv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
