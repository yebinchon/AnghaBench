; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_layout.c_video_layout_load_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_layout.c_video_layout_load_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8**, %struct.TYPE_5__, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8* (i32, i32)* }
%struct.texture_image = type { i32 }

@video_layout_state = common dso_local global %struct.TYPE_6__* null, align 8
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"video_layout: failed to decompress image: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"video_layout: failed to load image: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @video_layout_load_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_layout_load_image(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.texture_image, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %14 = call i32 (...) @video_driver_supports_rgba()
  %15 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %4, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @video_layout_state, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %1
  %21 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @video_layout_state, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = trunc i64 %22 to i32
  %29 = call i32 @strlcpy(i8* %24, i32 %27, i32 %28)
  %30 = load i8*, i8** %3, align 8
  %31 = trunc i64 %22 to i32
  %32 = call i32 @strlcat(i8* %24, i8* %30, i32 %31)
  %33 = call i32 @file_archive_compressed_read(i8* %24, i8** %7, i32* null, i64* %8)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %20
  %36 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %51

37:                                               ; preds = %20
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @image_texture_get_type(i8* %38)
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @image_texture_load_buffer(%struct.texture_image* %4, i32 %39, i8* %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @free(i8* %45)
  %47 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %51

48:                                               ; preds = %37
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @free(i8* %49)
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %48, %44, %35
  %52 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %115 [
    i32 0, label %54
    i32 1, label %113
  ]

54:                                               ; preds = %51
  br label %77

55:                                               ; preds = %1
  %56 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %12, align 8
  %59 = alloca i8, i64 %57, align 16
  store i64 %57, i64* %13, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @video_layout_state, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = trunc i64 %57 to i32
  %64 = call i32 @strlcpy(i8* %59, i32 %62, i32 %63)
  %65 = load i8*, i8** %3, align 8
  %66 = trunc i64 %57 to i32
  %67 = call i32 @strlcat(i8* %59, i8* %65, i32 %66)
  %68 = call i32 @image_texture_load(%struct.texture_image* %4, i8* %59)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %55
  %71 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %73

72:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %72, %70
  %74 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %11, align 4
  switch i32 %75, label %115 [
    i32 0, label %76
    i32 1, label %113
  ]

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76, %54
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @video_layout_state, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i8* (i32, i32)*, i8* (i32, i32)** %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @video_layout_state, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %4, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i8* %82(i32 %86, i32 %88)
  store i8* %89, i8** %5, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %113

93:                                               ; preds = %77
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @video_layout_state, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %6, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @video_layout_state, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = bitcast i8*** %98 to i8**
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @video_layout_state, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = call i32 @vec_size(i8** %99, i32 8, i32 %103)
  %105 = load i8*, i8** %5, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @video_layout_state, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  store i8* %105, i8** %111, align 8
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %93, %92, %73, %51
  %114 = load i32, i32* %2, align 4
  ret i32 %114

115:                                              ; preds = %73, %51
  unreachable
}

declare dso_local i32 @video_driver_supports_rgba(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @file_archive_compressed_read(i8*, i8**, i32*, i64*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @image_texture_load_buffer(%struct.texture_image*, i32, i8*, i64) #1

declare dso_local i32 @image_texture_get_type(i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @image_texture_load(%struct.texture_image*, i8*) #1

declare dso_local i32 @vec_size(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
