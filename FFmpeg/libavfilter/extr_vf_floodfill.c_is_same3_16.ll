; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_floodfill.c_is_same3_16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_floodfill.c_is_same3_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32)* @is_same3_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_same3_16(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %24, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %23, %31
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 2, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i32 @AV_RN16(i64 %36)
  store i32 %37, i32* %16, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %43, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %42, %50
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 2, %52
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = call i32 @AV_RN16(i64 %55)
  store i32 %56, i32* %17, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 2
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %62, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %61, %69
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 2, %71
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  %75 = call i32 @AV_RN16(i64 %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %7
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 1, i32* %8, align 4
  br label %89

88:                                               ; preds = %83, %79, %7
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %87
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @AV_RN16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
