; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_spatial_compose53i_dy_buffered.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_spatial_compose53i_dy_buffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i32, i32, i32)* @spatial_compose53i_dy_buffered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spatial_compose53i_dy_buffered(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %14, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %13, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @avpriv_mirror(i32 %30, i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call i32* @slice_buffer_get_line(i32* %28, i32 %35)
  store i32* %36, i32** %16, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 2
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @avpriv_mirror(i32 %39, i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i32* @slice_buffer_get_line(i32* %37, i32 %44)
  store i32* %45, i32** %17, align 8
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %11, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %101

50:                                               ; preds = %6
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %101

54:                                               ; preds = %50
  store i32 0, i32* %18, align 4
  br label %55

55:                                               ; preds = %97, %54
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %100

59:                                               ; preds = %55
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %64, %69
  %71 = add nsw i32 %70, 2
  %72 = ashr i32 %71, 2
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, %72
  store i32 %78, i32* %76, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %16, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %83, %88
  %90 = ashr i32 %89, 1
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %90
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %59
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %18, align 4
  br label %55

100:                                              ; preds = %55
  br label %124

101:                                              ; preds = %50, %6
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  %104 = load i32, i32* %11, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32*, i32** %15, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @vertical_compose53iL0(i32* %107, i32* %108, i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %106, %101
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 0
  %115 = load i32, i32* %11, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32*, i32** %14, align 8
  %119 = load i32*, i32** %15, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @vertical_compose53iH0(i32* %118, i32* %119, i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %112
  br label %124

124:                                              ; preds = %123, %100
  %125 = load i32, i32* %13, align 4
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %11, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32*, i32** %14, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @horizontal_compose53i(i32* %130, i32* %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %124
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 0
  %137 = load i32, i32* %11, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i32*, i32** %15, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @horizontal_compose53i(i32* %140, i32* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %134
  %145 = load i32*, i32** %16, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i32* %145, i32** %147, align 8
  %148 = load i32*, i32** %17, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  store i32* %148, i32** %150, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 2
  store i32 %154, i32* %152, align 8
  ret void
}

declare dso_local i32* @slice_buffer_get_line(i32*, i32) #1

declare dso_local i32 @avpriv_mirror(i32, i32) #1

declare dso_local i32 @vertical_compose53iL0(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vertical_compose53iH0(i32*, i32*, i32*, i32) #1

declare dso_local i32 @horizontal_compose53i(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
