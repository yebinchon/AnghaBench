; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libdav1d.c_libdav1d_picture_allocator.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libdav1d.c_libdav1d_picture_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_13__*, i32**, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }

@pix_fmt = common dso_local global i32** null, align 8
@DAV1D_PICTURE_ALIGNMENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*)* @libdav1d_picture_allocator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libdav1d_picture_allocator(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [4 x i32*], align 16
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  %16 = load i32**, i32*** @pix_fmt, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32*, i32** %16, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @FFALIGN(i64 %33, i32 128)
  store i32 %34, i32* %10, align 4
  %35 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @FFALIGN(i64 %41, i32 128)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @DAV1D_PICTURE_ALIGNMENT, align 4
  %45 = call i32 @av_image_fill_arrays(i32** %35, i32* %36, i32* null, i32 %37, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %143

50:                                               ; preds = %2
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %50
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = call i32 @av_buffer_pool_uninit(i32* %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @DAV1D_PICTURE_ALIGNMENT, align 4
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 %60, %62
  %64 = call i32 @av_buffer_pool_init(i32 %63, i32* null)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %56
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = call i32 @AVERROR(i32 %74)
  store i32 %75, i32* %3, align 4
  br label %143

76:                                               ; preds = %56
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %50
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.TYPE_13__* @av_buffer_pool_get(i32 %83)
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %13, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %86 = icmp ne %struct.TYPE_13__* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %3, align 4
  br label %143

90:                                               ; preds = %80
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @DAV1D_PICTURE_ALIGNMENT, align 4
  %95 = call i32 @FFALIGN(i64 %93, i32 %94)
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i32*
  store i32* %97, i32** %11, align 8
  %98 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %103 = call i32 @av_image_fill_pointers(i32** %98, i32 %99, i32 %100, i32* %101, i32* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %90
  %107 = call i32 @av_buffer_unref(%struct.TYPE_13__** %13)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %143

109:                                              ; preds = %90
  %110 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  %111 = load i32*, i32** %110, align 16
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  store i32* %111, i32** %115, align 8
  %116 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load i32**, i32*** %119, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 1
  store i32* %117, i32** %121, align 8
  %122 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 2
  %123 = load i32*, i32** %122, align 16
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i32**, i32*** %125, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 2
  store i32* %123, i32** %127, align 8
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %129 = load i32, i32* %128, align 16
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %129, i32* %133, align 4
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %135, i32* %139, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  store %struct.TYPE_13__* %140, %struct.TYPE_13__** %142, align 8
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %109, %106, %87, %71, %48
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @FFALIGN(i64, i32) #1

declare dso_local i32 @av_image_fill_arrays(i32**, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @av_buffer_pool_uninit(i32*) #1

declare dso_local i32 @av_buffer_pool_init(i32, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_13__* @av_buffer_pool_get(i32) #1

declare dso_local i32 @av_image_fill_pointers(i32**, i32, i32, i32*, i32*) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_13__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
