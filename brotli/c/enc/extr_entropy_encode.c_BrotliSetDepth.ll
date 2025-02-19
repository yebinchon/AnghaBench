; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_entropy_encode.c_BrotliSetDepth.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_entropy_encode.c_BrotliSetDepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@BROTLI_TRUE = common dso_local global i64 0, align 8
@BROTLI_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BrotliSetDepth(i32 %0, %struct.TYPE_3__* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sle i32 %14, 15
  %16 = zext i1 %15 to i32
  %17 = call i32 @BROTLI_DCHECK(i32 %16)
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  store i32 -1, i32* %18, align 16
  br label %19

19:                                               ; preds = %86, %38, %4
  %20 = load i64, i64* @BROTLI_TRUE, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %94

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %22
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %37, i64* %5, align 8
  br label %94

38:                                               ; preds = %30
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %46
  store i32 %44, i32* %47, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  br label %19

54:                                               ; preds = %22
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64*, i64** %8, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %57, i64 %64
  store i64 %56, i64* %65, align 8
  br label %66

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %78, %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, -1
  br label %76

76:                                               ; preds = %70, %67
  %77 = phi i1 [ false, %67 ], [ %75, %70 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %11, align 4
  br label %67

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %85, i64* %5, align 8
  br label %94

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %92
  store i32 -1, i32* %93, align 4
  br label %19

94:                                               ; preds = %36, %84, %19
  %95 = load i64, i64* %5, align 8
  ret i64 %95
}

declare dso_local i32 @BROTLI_DCHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
