; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_spatial_compose97i_dy_buffered.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_spatial_compose97i_dy_buffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32*, i32*, i32)* }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*, i32*, i32*, i32, i32, i32)* @spatial_compose97i_dy_buffered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spatial_compose97i_dy_buffered(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %16, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %17, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %18, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %19, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %15, align 4
  %39 = add nsw i32 %38, 3
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @avpriv_mirror(i32 %39, i32 %41)
  %43 = load i32, i32* %14, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i32* @slice_buffer_get_line(i32* %37, i32 %44)
  store i32* %45, i32** %20, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 4
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @avpriv_mirror(i32 %48, i32 %50)
  %52 = load i32, i32* %14, align 4
  %53 = mul nsw i32 %51, %52
  %54 = call i32* @slice_buffer_get_line(i32* %46, i32 %53)
  store i32* %54, i32** %21, align 8
  %55 = load i32, i32* %15, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %7
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32 (i32*, i32*, i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32*, i32*, i32)** %64, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = load i32*, i32** %18, align 8
  %69 = load i32*, i32** %19, align 8
  %70 = load i32*, i32** %20, align 8
  %71 = load i32*, i32** %21, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 %65(i32* %66, i32* %67, i32* %68, i32* %69, i32* %70, i32* %71, i32 %72)
  br label %119

74:                                               ; preds = %57, %7
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 3
  %77 = load i32, i32* %13, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32*, i32** %19, align 8
  %81 = load i32*, i32** %20, align 8
  %82 = load i32*, i32** %21, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @vertical_compose97iL1(i32* %80, i32* %81, i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 2
  %88 = load i32, i32* %13, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32*, i32** %18, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = load i32*, i32** %20, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @vertical_compose97iH1(i32* %91, i32* %92, i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i32, i32* %13, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32*, i32** %17, align 8
  %103 = load i32*, i32** %18, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @vertical_compose97iL0(i32* %102, i32* %103, i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %96
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 0
  %110 = load i32, i32* %13, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32*, i32** %16, align 8
  %114 = load i32*, i32** %17, align 8
  %115 = load i32*, i32** %18, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @vertical_compose97iH0(i32* %113, i32* %114, i32* %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %107
  br label %119

119:                                              ; preds = %118, %62
  %120 = load i32, i32* %15, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %13, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %126, align 8
  %128 = load i32*, i32** %16, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 %127(i32* %128, i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %124, %119
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 0
  %135 = load i32, i32* %13, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %139, align 8
  %141 = load i32*, i32** %17, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 %140(i32* %141, i32* %142, i32 %143)
  br label %145

145:                                              ; preds = %137, %132
  %146 = load i32*, i32** %18, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  store i32* %146, i32** %148, align 8
  %149 = load i32*, i32** %19, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  store i32* %149, i32** %151, align 8
  %152 = load i32*, i32** %20, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  store i32* %152, i32** %154, align 8
  %155 = load i32*, i32** %21, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  store i32* %155, i32** %157, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 2
  store i32 %161, i32* %159, align 8
  ret void
}

declare dso_local i32* @slice_buffer_get_line(i32*, i32) #1

declare dso_local i32 @avpriv_mirror(i32, i32) #1

declare dso_local i32 @vertical_compose97iL1(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vertical_compose97iH1(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vertical_compose97iL0(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vertical_compose97iH0(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
