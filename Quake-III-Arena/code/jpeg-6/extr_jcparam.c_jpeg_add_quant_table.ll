; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcparam.c_jpeg_add_quant_table.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcparam.c_jpeg_add_quant_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i64* }

@CSTATE_START = common dso_local global i64 0, align 8
@JERR_BAD_STATE = common dso_local global i32 0, align 4
@DCTSIZE2 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jpeg_add_quant_table(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %16, i64 %18
  store %struct.TYPE_7__** %19, %struct.TYPE_7__*** %11, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CSTATE_START, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = load i32, i32* @JERR_BAD_STATE, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ERREXIT1(%struct.TYPE_6__* %26, i32 %27, i64 %30)
  br label %32

32:                                               ; preds = %25, %5
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp eq %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = ptrtoint %struct.TYPE_6__* %37 to i32
  %39 = call %struct.TYPE_7__* @jpeg_alloc_quant_table(i32 %38)
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %40, align 8
  br label %41

41:                                               ; preds = %36, %32
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %81, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @DCTSIZE2, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %52, %54
  %56 = add nsw i64 %55, 50
  %57 = sdiv i64 %56, 100
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  store i64 1, i64* %13, align 8
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i64, i64* %13, align 8
  %63 = icmp sgt i64 %62, 32767
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i64 32767, i64* %13, align 8
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i64, i64* %13, align 8
  %70 = icmp sgt i64 %69, 255
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i64 255, i64* %13, align 8
  br label %72

72:                                               ; preds = %71, %68, %65
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 %73, i64* %80, align 8
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %42

84:                                               ; preds = %42
  %85 = load i32, i32* @FALSE, align 4
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  ret void
}

declare dso_local i32 @ERREXIT1(%struct.TYPE_6__*, i32, i64) #1

declare dso_local %struct.TYPE_7__* @jpeg_alloc_quant_table(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
