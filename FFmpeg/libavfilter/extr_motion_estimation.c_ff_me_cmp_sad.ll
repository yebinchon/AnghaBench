; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_motion_estimation.c_ff_me_cmp_sad.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_motion_estimation.c_ff_me_cmp_sad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_me_cmp_sad(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %12, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %13, align 8
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i64*, i64** %12, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64* %31, i64** %12, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i64*, i64** %13, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64* %37, i64** %13, align 8
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %84, %5
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %38
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %80, %44
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %45
  %52 = load i64*, i64** %12, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %56, %57
  %59 = add nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %52, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %13, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %63, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %62, %73
  %75 = call i64 @FFABS(i64 %74)
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %51
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %45

83:                                               ; preds = %45
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %38

87:                                               ; preds = %38
  %88 = load i32, i32* %14, align 4
  ret i32 %88
}

declare dso_local i64 @FFABS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
