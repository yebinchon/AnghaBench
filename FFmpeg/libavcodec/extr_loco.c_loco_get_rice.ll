; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_loco.c_loco_get_rice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_loco.c_loco_get_rice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32 }

@INT_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @loco_get_rice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loco_get_rice(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = call i32 @loco_update_rice_param(%struct.TYPE_5__* %14, i32 0)
  store i32 0, i32* %2, align 4
  br label %117

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = call i32 @get_bits_left(i32* %18)
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @INT_MIN, align 4
  store i32 %22, i32* %2, align 4
  br label %117

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = call i32 @loco_get_rice_param(%struct.TYPE_5__* %26)
  %28 = load i32, i32* @INT_MAX, align 4
  %29 = call i8* @get_ur_golomb_jpegls(i32* %25, i32 %27, i32 %28, i32 0)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  %34 = ashr i32 %33, 1
  %35 = call i32 @loco_update_rice_param(%struct.TYPE_5__* %31, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %77, label %38

38:                                               ; preds = %23
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  %46 = load i32, i32* @INT_MAX, align 4
  %47 = call i8* @get_ur_golomb_jpegls(i32* %45, i32 2, i32 %46, i32 0)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %65

55:                                               ; preds = %43
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %70

65:                                               ; preds = %43
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, 3
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %65, %55
  br label %76

71:                                               ; preds = %38
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %70
  br label %115

77:                                               ; preds = %23
  %78 = load i32, i32* %4, align 4
  %79 = ashr i32 %78, 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, 1
  %86 = sub nsw i32 0, %85
  %87 = xor i32 %83, %86
  store i32 %87, i32* %4, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %77
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp sgt i32 %95, 2
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %101
  store i64 %105, i64* %103, align 8
  br label %111

106:                                              ; preds = %92
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, 3
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %106, %97
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  store i32 0, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %77
  br label %115

115:                                              ; preds = %114, %76
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %21, %9
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @loco_update_rice_param(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i8* @get_ur_golomb_jpegls(i32*, i32, i32, i32) #1

declare dso_local i32 @loco_get_rice_param(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
