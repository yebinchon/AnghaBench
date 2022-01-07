; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/ntsc/extr_md_ntsc.c_correct_errors.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/ntsc/extr_md_ntsc.c_correct_errors.c"
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

7:                                                ; preds = %80, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @rgb_kernel_size, align 4
  %10 = sdiv i32 %9, 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %83

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
  %22 = add i32 %21, 2
  %23 = add i32 %22, 16
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %20, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %19, %26
  %28 = load i64*, i64** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %27, %33
  %35 = load i64*, i64** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, 6
  %38 = add i32 %37, 16
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %35, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %34, %41
  %43 = load i64*, i64** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 8
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %42, %48
  %50 = load i64*, i64** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 10
  %53 = urem i32 %52, 16
  %54 = add i32 %53, 16
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %50, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %49, %57
  %59 = load i64*, i64** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, 12
  %62 = urem i32 %61, 16
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %59, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %58, %65
  %67 = load i64*, i64** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 14
  %70 = urem i32 %69, 16
  %71 = add i32 %70, 16
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %67, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %66, %74
  store i64 %75, i64* %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 6
  %78 = add i32 %77, 16
  %79 = call i32 @CORRECT_ERROR(i32 %78)
  br label %80

80:                                               ; preds = %12
  %81 = load i32, i32* %5, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %7

83:                                               ; preds = %7
  ret void
}

declare dso_local i32 @CORRECT_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
