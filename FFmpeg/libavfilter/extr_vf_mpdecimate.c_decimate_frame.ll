; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_mpdecimate.c_decimate_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_mpdecimate.c_decimate_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*)* @decimate_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decimate_frame(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %140

29:                                               ; preds = %19, %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %140

45:                                               ; preds = %34, %29
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %135, %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %55, %46
  %65 = phi i1 [ false, %46 ], [ %63, %55 ]
  br i1 %65, label %66, label %138

66:                                               ; preds = %64
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %76

72:                                               ; preds = %69, %66
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  br label %77

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i32 [ %75, %72 ], [ 0, %76 ]
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %88

84:                                               ; preds = %81, %77
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  br label %89

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i32 [ %87, %84 ], [ 0, %88 ]
  store i32 %90, i32* %11, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @AV_CEIL_RSHIFT(i32 %122, i32 %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @AV_CEIL_RSHIFT(i32 %127, i32 %128)
  %130 = call i64 @diff_planes(%struct.TYPE_10__* %91, i64 %98, i64 %105, i64 %112, i64 %119, i32 %124, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %89
  %133 = call i32 (...) @emms_c()
  store i32 0, i32* %4, align 4
  br label %140

134:                                              ; preds = %89
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %46

138:                                              ; preds = %64
  %139 = call i32 (...) @emms_c()
  store i32 1, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %132, %44, %28
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i64 @diff_planes(%struct.TYPE_10__*, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @emms_c(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
