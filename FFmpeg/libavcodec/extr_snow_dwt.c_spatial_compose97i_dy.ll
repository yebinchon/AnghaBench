; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_spatial_compose97i_dy.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_spatial_compose97i_dy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i32, i32, i32)* @spatial_compose97i_dy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spatial_compose97i_dy(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %14, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %15, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %16, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %17, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 3
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @avpriv_mirror(i32 %37, i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %35, i64 %43
  store i32* %44, i32** %18, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @avpriv_mirror(i32 %47, i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %45, i64 %53
  store i32* %54, i32** %19, align 8
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 3
  %57 = load i32, i32* %11, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %6
  %60 = load i32*, i32** %17, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = load i32*, i32** %19, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @vertical_compose97iL1(i32* %60, i32* %61, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %6
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 2
  %68 = load i32, i32* %11, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32*, i32** %16, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @vertical_compose97iH1(i32* %71, i32* %72, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %11, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32*, i32** %15, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @vertical_compose97iL0(i32* %82, i32* %83, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 0
  %90 = load i32, i32* %11, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32*, i32** %14, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @vertical_compose97iH0(i32* %93, i32* %94, i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load i32, i32* %11, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32*, i32** %14, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @ff_snow_horizontal_compose97i(i32* %104, i32* %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 0
  %111 = load i32, i32* %11, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i32*, i32** %15, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @ff_snow_horizontal_compose97i(i32* %114, i32* %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load i32*, i32** %16, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  store i32* %119, i32** %121, align 8
  %122 = load i32*, i32** %17, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  store i32* %122, i32** %124, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  store i32* %125, i32** %127, align 8
  %128 = load i32*, i32** %19, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 2
  store i32 %134, i32* %132, align 8
  ret void
}

declare dso_local i32 @avpriv_mirror(i32, i32) #1

declare dso_local i32 @vertical_compose97iL1(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vertical_compose97iH1(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vertical_compose97iL0(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vertical_compose97iH0(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ff_snow_horizontal_compose97i(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
