; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/ntsc/extr_sms_ntsc.c_correct_errors.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/ntsc/extr_sms_ntsc.c_correct_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rgb_kernel_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*)* @correct_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correct_errors(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %65, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @rgb_kernel_size, align 4
  %10 = sdiv i32 %9, 2
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %68

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %13, %18
  %20 = load i64*, i64** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %21, 12
  %23 = urem i32 %22, 14
  %24 = add i32 %23, 14
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %20, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %19, %27
  %29 = load i64*, i64** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 10
  %32 = urem i32 %31, 14
  %33 = add i32 %32, 28
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %29, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %28, %36
  %38 = load i64*, i64** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 7
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %37, %43
  %45 = load i64*, i64** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 5
  %48 = add i32 %47, 14
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %44, %51
  %53 = load i64*, i64** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 3
  %56 = add i32 %55, 28
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %53, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %52, %59
  store i64 %60, i64* %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %61, 3
  %63 = add i32 %62, 28
  %64 = call i32 @CORRECT_ERROR(i32 %63)
  br label %65

65:                                               ; preds = %12
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %7

68:                                               ; preds = %7
  ret void
}

declare dso_local i32 @CORRECT_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
