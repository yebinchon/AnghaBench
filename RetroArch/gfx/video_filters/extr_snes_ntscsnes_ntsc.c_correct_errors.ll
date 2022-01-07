; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_snes_ntscsnes_ntsc.c_correct_errors.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_snes_ntscsnes_ntsc.c_correct_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@burst_count = common dso_local global i32 0, align 4
@rgb_kernel_size = common dso_local global i32 0, align 4
@alignment_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*)* @correct_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correct_errors(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i32, i32* @burst_count, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %86, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %89

12:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %76, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @rgb_kernel_size, align 4
  %16 = sdiv i32 %15, 2
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %79

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = load i64*, i64** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %19, %24
  %26 = load i64*, i64** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %27, 12
  %29 = urem i32 %28, 14
  %30 = add i32 %29, 14
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %26, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %25, %33
  %35 = load i64*, i64** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 10
  %38 = urem i32 %37, 14
  %39 = add i32 %38, 28
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %35, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %34, %42
  %44 = load i64*, i64** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 7
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %43, %49
  %51 = load i64*, i64** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 5
  %54 = add i32 %53, 14
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %51, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %50, %57
  %59 = load i64*, i64** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, 3
  %62 = add i32 %61, 28
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %59, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %58, %65
  store i64 %66, i64* %7, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add i32 %67, 3
  %69 = add i32 %68, 28
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 5
  %72 = add i32 %71, 14
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 7
  %75 = call i32 @DISTRIBUTE_ERROR(i32 %69, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %18
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %13

79:                                               ; preds = %13
  %80 = load i32, i32* @alignment_count, align 4
  %81 = load i32, i32* @rgb_kernel_size, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i64*, i64** %4, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64* %85, i64** %4, align 8
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %5, align 4
  br label %9

89:                                               ; preds = %9
  ret void
}

declare dso_local i32 @DISTRIBUTE_ERROR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
