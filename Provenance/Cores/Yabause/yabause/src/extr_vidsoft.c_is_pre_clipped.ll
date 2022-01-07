; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_is_pre_clipped.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_is_pre_clipped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@vdp1interlace = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_pre_clipped(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, %struct.TYPE_3__* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i32, align 4
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %20, align 4
  %24 = load i64, i64* @vdp1interlace, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %9
  %27 = load i32, i32* %20, align 4
  %28 = mul nsw i32 %27, 2
  store i32 %28, i32* %20, align 4
  br label %29

29:                                               ; preds = %26, %9
  %30 = load i64, i64* %11, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i64, i64* %13, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i64, i64* %15, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64, i64* %17, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %102

42:                                               ; preds = %38, %35, %32, %29
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load i64, i64* %13, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load i64, i64* %15, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i64, i64* %17, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 1, i32* %10, align 4
  br label %102

67:                                               ; preds = %60, %54, %48, %42
  %68 = load i64, i64* %12, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i64, i64* %14, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i64, i64* %16, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i64, i64* %18, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, i32* %10, align 4
  br label %102

80:                                               ; preds = %76, %73, %70, %67
  %81 = load i64, i64* %12, align 8
  %82 = load i32, i32* %20, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp sgt i64 %81, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load i64, i64* %14, align 8
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp sgt i64 %86, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load i64, i64* %16, align 8
  %92 = load i32, i32* %20, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp sgt i64 %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i64, i64* %18, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp sgt i64 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 1, i32* %10, align 4
  br label %102

101:                                              ; preds = %95, %90, %85, %80
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %101, %100, %79, %66, %41
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
