; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_fixed.c_apply_independent_coupling_fixed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_fixed.c_apply_independent_coupling_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32** }

@cce_scale_fixed = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32)* @apply_independent_coupling_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_independent_coupling_fixed(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %15, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %16, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = shl i32 1024, %45
  store i32 %46, i32* %17, align 4
  %47 = load i32*, i32** @cce_scale_fixed, align 8
  %48 = load i32, i32* %14, align 4
  %49 = and i32 %48, 7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %14, align 4
  %54 = sub nsw i32 %53, 1024
  %55 = ashr i32 %54, 3
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, -31
  br i1 %57, label %58, label %59

58:                                               ; preds = %4
  br label %127

59:                                               ; preds = %4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %97

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  %67 = shl i32 1, %66
  store i32 %67, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %93, %62
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %77, %78
  %80 = add nsw i32 %79, 0
  %81 = ashr i32 %80, 37
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %11, align 4
  %86 = ashr i32 %84, %85
  %87 = load i32*, i32** %16, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %91, %86
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %72
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %68

96:                                               ; preds = %68
  br label %126

97:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %122, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %98
  %103 = load i32*, i32** %15, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %109, 0
  %111 = ashr i32 %110, 37
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %11, align 4
  %114 = shl i32 1, %113
  %115 = mul i32 %112, %114
  %116 = load i32*, i32** %16, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add i32 %120, %115
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %102
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %98

125:                                              ; preds = %98
  br label %126

126:                                              ; preds = %125, %96
  br label %127

127:                                              ; preds = %58, %126
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
