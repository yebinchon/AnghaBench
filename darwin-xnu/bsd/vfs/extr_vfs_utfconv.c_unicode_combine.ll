; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_utfconv.c_unicode_combine.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_utfconv.c_unicode_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HANGUL_VBASE = common dso_local global i64 0, align 8
@HANGUL_TBASE = common dso_local global i64 0, align 8
@HANGUL_TCOUNT = common dso_local global i64 0, align 8
@HANGUL_VCOUNT = common dso_local global i64 0, align 8
@HANGUL_LBASE = common dso_local global i64 0, align 8
@HANGUL_LCOUNT = common dso_local global i64 0, align 8
@HANGUL_SBASE = common dso_local global i64 0, align 8
@HANGUL_SCOUNT = common dso_local global i64 0, align 8
@__CFUniCharPrecompSourceTable = common dso_local global i64 0, align 8
@__CFUniCharPrecompositionTableLength = common dso_local global i32 0, align 4
@__CFUniCharBMPPrecompDestinationTable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @unicode_combine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unicode_combine(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @HANGUL_VBASE, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %77

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @HANGUL_TBASE, align 8
  %13 = load i64, i64* @HANGUL_TCOUNT, align 8
  %14 = add nsw i64 %12, %13
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %77

16:                                               ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @HANGUL_VBASE, align 8
  %19 = load i64, i64* @HANGUL_VCOUNT, align 8
  %20 = add nsw i64 %18, %19
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @HANGUL_LBASE, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @HANGUL_LBASE, align 8
  %29 = load i64, i64* @HANGUL_LCOUNT, align 8
  %30 = add nsw i64 %28, %29
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load i64, i64* @HANGUL_SBASE, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @HANGUL_LBASE, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i64, i64* @HANGUL_VCOUNT, align 8
  %38 = load i64, i64* @HANGUL_TCOUNT, align 8
  %39 = mul nsw i64 %37, %38
  %40 = mul nsw i64 %36, %39
  %41 = add nsw i64 %33, %40
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @HANGUL_VBASE, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load i64, i64* @HANGUL_TCOUNT, align 8
  %46 = mul nsw i64 %44, %45
  %47 = add nsw i64 %41, %46
  store i64 %47, i64* %3, align 8
  br label %99

48:                                               ; preds = %26, %22, %16
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @HANGUL_TBASE, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @HANGUL_SBASE, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @HANGUL_SBASE, align 8
  %59 = load i64, i64* @HANGUL_SCOUNT, align 8
  %60 = add nsw i64 %58, %59
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @HANGUL_SBASE, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load i64, i64* @HANGUL_TCOUNT, align 8
  %67 = srem i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i64 0, i64* %3, align 8
  br label %99

70:                                               ; preds = %62
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @HANGUL_TBASE, align 8
  %74 = sub nsw i64 %72, %73
  %75 = add nsw i64 %71, %74
  store i64 %75, i64* %3, align 8
  br label %99

76:                                               ; preds = %56, %52, %48
  br label %77

77:                                               ; preds = %76, %10, %2
  %78 = load i64, i64* @__CFUniCharPrecompSourceTable, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32, i32* @__CFUniCharPrecompositionTableLength, align 4
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @getmappedvalue32(i32* %79, i32 %80, i64 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %77
  %86 = load i64, i64* @__CFUniCharBMPPrecompDestinationTable, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 65535
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %6, align 4
  %93 = ashr i32 %92, 16
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @getmappedvalue16(i32* %91, i32 %93, i64 %94)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %85, %77
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %3, align 8
  br label %99

99:                                               ; preds = %96, %70, %69, %32
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local i32 @getmappedvalue32(i32*, i32, i64) #1

declare dso_local i32 @getmappedvalue16(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
