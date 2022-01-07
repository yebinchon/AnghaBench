; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_draw_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_draw_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32, i32)* @draw_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_line(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 %18, %19
  %21 = call i32 @FFABS(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i32 @FFABS(i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 -1
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %13, align 4
  br label %39

36:                                               ; preds = %6
  %37 = load i32, i32* %14, align 4
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %38, %36 ]
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %94, %39
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %48, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %47, %55
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @AV_WL32(i64 %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %42
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %95

71:                                               ; preds = %66, %42
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %16, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %87, %83
  br label %42

95:                                               ; preds = %70
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @AV_WL32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
