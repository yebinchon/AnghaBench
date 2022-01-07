; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_decode_adaptive6.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_decode_adaptive6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i32*, i32*)* @decode_adaptive6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_adaptive6(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %17, align 4
  br label %23

23:                                               ; preds = %86, %5
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %89

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %16, align 4
  %32 = mul nsw i32 2, %31
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %27
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %16, align 4
  %45 = mul nsw i32 2, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %19, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %40
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %19, align 4
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @incr_cntdec(%struct.TYPE_6__* %67, i32 %68)
  store i32 1, i32* %6, align 4
  br label %162

70:                                               ; preds = %40
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i32, i32* %19, align 4
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %13, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %74, %70
  br label %85

85:                                               ; preds = %84, %27
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %23

89:                                               ; preds = %23
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 1, %92
  store i32 %93, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %89
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %98, %99
  %101 = sub nsw i32 %97, %100
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %101, %104
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %106, %107
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 %113, %116
  %118 = add nsw i32 %112, %117
  store i32 %118, i32* %15, align 4
  br label %130

119:                                              ; preds = %89
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = ashr i32 %120, %123
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = shl i32 %125, %128
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %119, %96
  %131 = load i32, i32* %16, align 4
  %132 = load i32*, i32** %10, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32*, i32** %11, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32*, i32** %9, align 8
  store i32 %135, i32* %136, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @add_dec(%struct.TYPE_6__* %137, i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %130
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 64
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i32 0, i32* %6, align 4
  br label %162

150:                                              ; preds = %144
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %152 = call i32 @grow_dec(%struct.TYPE_6__* %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @add_dec(%struct.TYPE_6__* %153, i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %150, %130
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @incr_cntdec(%struct.TYPE_6__* %159, i32 %160)
  store i32 1, i32* %6, align 4
  br label %162

162:                                              ; preds = %158, %149, %54
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @incr_cntdec(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @add_dec(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @grow_dec(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
