; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_hist.c_HIST_count_wksp.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_hist.c_HIST_count_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC = common dso_local global i32 0, align 4
@HIST_WKSP_SIZE = common dso_local global i64 0, align 8
@workSpace_tooSmall = common dso_local global i32 0, align 4
@checkMaxSymbolValue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HIST_count_wksp(i32* %0, i32* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 3
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @GENERIC, align 4
  %20 = call i64 @ERROR(i32 %19)
  store i64 %20, i64* %7, align 8
  br label %50

21:                                               ; preds = %6
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @HIST_WKSP_SIZE, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @workSpace_tooSmall, align 4
  %27 = call i64 @ERROR(i32 %26)
  store i64 %27, i64* %7, align 8
  br label %50

28:                                               ; preds = %21
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %30, 255
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* @checkMaxSymbolValue, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = call i64 @HIST_count_parallel_wksp(i32* %33, i32* %34, i8* %35, i64 %36, i32 %37, i32* %39)
  store i64 %40, i64* %7, align 8
  br label %50

41:                                               ; preds = %28
  %42 = load i32*, i32** %9, align 8
  store i32 255, i32* %42, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = call i64 @HIST_countFast_wksp(i32* %43, i32* %44, i8* %45, i64 %46, i8* %47, i64 %48)
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %41, %32, %25, %18
  %51 = load i64, i64* %7, align 8
  ret i64 %51
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @HIST_count_parallel_wksp(i32*, i32*, i8*, i64, i32, i32*) #1

declare dso_local i64 @HIST_countFast_wksp(i32*, i32*, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
