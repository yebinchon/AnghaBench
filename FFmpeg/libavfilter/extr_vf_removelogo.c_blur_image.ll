; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removelogo.c_blur_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removelogo.c_blur_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32***, i64*, i32, i64*, i32, i64*, i32, i32, i32, i32, %struct.TYPE_3__*)* @blur_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blur_image(i32*** %0, i64* %1, i32 %2, i64* %3, i32 %4, i64* %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.TYPE_3__* %10) #0 {
  %12 = alloca i32***, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_3__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  store i32*** %0, i32**** %12, align 8
  store i64* %1, i64** %13, align 8
  store i32 %2, i32* %14, align 4
  store i64* %3, i64** %15, align 8
  store i32 %4, i32* %16, align 4
  store i64* %5, i64** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %22, align 8
  %27 = load i32, i32* %21, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %11
  %30 = load i64*, i64** %15, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load i64*, i64** %13, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %19, align 4
  %35 = load i32, i32* %20, align 4
  %36 = call i32 @av_image_copy_plane(i64* %30, i32 %31, i64* %32, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %11
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %24, align 4
  br label %41

41:                                               ; preds = %114, %37
  %42 = load i32, i32* %24, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %42, %45
  br i1 %46, label %47, label %117

47:                                               ; preds = %41
  %48 = load i64*, i64** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %24, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  store i64* %53, i64** %26, align 8
  %54 = load i64*, i64** %15, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %24, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %54, i64 %58
  store i64* %59, i64** %25, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %23, align 4
  br label %63

63:                                               ; preds = %110, %47
  %64 = load i32, i32* %23, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %64, %67
  br i1 %68, label %69, label %113

69:                                               ; preds = %63
  %70 = load i64*, i64** %17, align 8
  %71 = load i32, i32* %24, align 4
  %72 = load i32, i32* %18, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %23, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %70, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %69
  %81 = load i32***, i32**** %12, align 8
  %82 = load i64*, i64** %17, align 8
  %83 = load i32, i32* %18, align 4
  %84 = load i64*, i64** %15, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %24, align 4
  %90 = call i64 @blur_pixel(i32*** %81, i64* %82, i32 %83, i64* %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i64*, i64** %25, align 8
  %92 = load i32, i32* %23, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 %90, i64* %94, align 8
  br label %109

95:                                               ; preds = %69
  %96 = load i32, i32* %21, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = load i64*, i64** %26, align 8
  %100 = load i32, i32* %23, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %25, align 8
  %105 = load i32, i32* %23, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 %103, i64* %107, align 8
  br label %108

108:                                              ; preds = %98, %95
  br label %109

109:                                              ; preds = %108, %80
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %23, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %23, align 4
  br label %63

113:                                              ; preds = %63
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %24, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %24, align 4
  br label %41

117:                                              ; preds = %41
  ret void
}

declare dso_local i32 @av_image_copy_plane(i64*, i32, i64*, i32, i32, i32) #1

declare dso_local i64 @blur_pixel(i32***, i64*, i32, i64*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
