; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_compress.c_ZSTD_fseBitCost.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_compress.c_ZSTD_fseBitCost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Repeat FSE_CTable has maxSymbolValue %u < %u\00", align 1
@GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Repeat FSE_CTable has Prob[%u] == 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32)* @ZSTD_fseBitCost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_fseBitCost(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 8, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @FSE_initCState(%struct.TYPE_3__* %11, i32* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @ZSTD_getFSEMaxSymbolValue(i32* %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ZSTD_getFSEMaxSymbolValue(i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @GENERIC, align 4
  %27 = call i64 @ERROR(i32 %26)
  store i64 %27, i64* %4, align 8
  br label %77

28:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ule i32 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = add i32 %36, 1
  %38 = shl i32 %37, 8
  store i32 %38, i32* %13, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @FSE_bitCost(i32 %40, i32 %41, i32 %42, i32 8)
  store i32 %43, i32* %14, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %71

51:                                               ; preds = %33
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @GENERIC, align 4
  %59 = call i64 @ERROR(i32 %58)
  store i64 %59, i64* %4, align 8
  br label %77

60:                                               ; preds = %51
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %14, align 4
  %67 = mul i32 %65, %66
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %60, %50
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %29

74:                                               ; preds = %29
  %75 = load i64, i64* %9, align 8
  %76 = lshr i64 %75, 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %74, %55, %21
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local i32 @FSE_initCState(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @ZSTD_getFSEMaxSymbolValue(i32*) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, ...) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSE_bitCost(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
