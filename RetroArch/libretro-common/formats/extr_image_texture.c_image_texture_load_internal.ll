; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/extr_image_texture.c_image_texture_load_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/extr_image_texture.c_image_texture_load_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture_image = type { i32, i32, i32 }

@IMAGE_PROCESS_NEXT = common dso_local global i32 0, align 4
@IMAGE_PROCESS_ERROR = common dso_local global i32 0, align 4
@IMAGE_PROCESS_ERROR_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, %struct.texture_image*, i32, i32, i32, i32)* @image_texture_load_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_texture_load_internal(i32 %0, i8* %1, i64 %2, %struct.texture_image* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.texture_image*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.texture_image* %3, %struct.texture_image** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i8* @image_transfer_new(i32 %20)
  store i8* %21, i8** %19, align 8
  %22 = load i8*, i8** %19, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %8
  br label %83

25:                                               ; preds = %8
  %26 = load i8*, i8** %19, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @image_transfer_set_buffer_ptr(i8* %26, i32 %27, i32* %29, i64 %30)
  %32 = load i8*, i8** %19, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @image_transfer_start(i8* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %83

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %43, %37
  %39 = load i8*, i8** %19, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @image_transfer_iterate(i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %38

44:                                               ; preds = %38
  %45 = load i8*, i8** %19, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @image_transfer_is_valid(i8* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %83

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %63, %50
  %52 = load i8*, i8** %19, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %55 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %54, i32 0, i32 2
  %56 = bitcast i32* %55 to i32**
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %59 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %58, i32 0, i32 1
  %60 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %61 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %60, i32 0, i32 0
  %62 = call i32 @image_transfer_process(i8* %52, i32 %53, i32** %56, i64 %57, i32* %59, i32* %61)
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @IMAGE_PROCESS_NEXT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %51, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* @IMAGE_PROCESS_ERROR, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @IMAGE_PROCESS_ERROR_END, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %67
  br label %83

76:                                               ; preds = %71
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %82 = call i32 @image_texture_color_convert(i32 %77, i32 %78, i32 %79, i32 %80, %struct.texture_image* %81)
  store i32 1, i32* %18, align 4
  br label %83

83:                                               ; preds = %76, %75, %49, %36, %24
  %84 = load i8*, i8** %19, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i8*, i8** %19, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @image_transfer_free(i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i32, i32* %18, align 4
  ret i32 %91
}

declare dso_local i8* @image_transfer_new(i32) #1

declare dso_local i32 @image_transfer_set_buffer_ptr(i8*, i32, i32*, i64) #1

declare dso_local i32 @image_transfer_start(i8*, i32) #1

declare dso_local i64 @image_transfer_iterate(i8*, i32) #1

declare dso_local i32 @image_transfer_is_valid(i8*, i32) #1

declare dso_local i32 @image_transfer_process(i8*, i32, i32**, i64, i32*, i32*) #1

declare dso_local i32 @image_texture_color_convert(i32, i32, i32, i32, %struct.texture_image*) #1

declare dso_local i32 @image_transfer_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
