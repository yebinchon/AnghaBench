; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/extr_image_texture.c_image_texture_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/extr_image_texture.c_image_texture_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture_image = type { i32, i64, i64, i32* }
%struct.nbio_t = type { i32 }

@IMAGE_TYPE_NONE = common dso_local global i32 0, align 4
@NBIO_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @image_texture_load(%struct.texture_image* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.texture_image*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.nbio_t*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.texture_image* %0, %struct.texture_image** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %10, align 8
  store %struct.nbio_t* null, %struct.nbio_t** %11, align 8
  store i8* null, i8** %12, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @image_texture_get_type(i8* %14)
  store i32 %15, i32* %13, align 4
  %16 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %17 = call i32 @image_texture_set_color_shifts(i32* %6, i32* %7, i32* %8, i32* %9, %struct.texture_image* %16)
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @IMAGE_TYPE_NONE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @NBIO_READ, align 4
  %24 = call i64 @nbio_open(i8* %22, i32 %23)
  %25 = inttoptr i64 %24 to %struct.nbio_t*
  store %struct.nbio_t* %25, %struct.nbio_t** %11, align 8
  %26 = load %struct.nbio_t*, %struct.nbio_t** %11, align 8
  %27 = icmp ne %struct.nbio_t* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %58

29:                                               ; preds = %21
  %30 = load %struct.nbio_t*, %struct.nbio_t** %11, align 8
  %31 = call i32 @nbio_begin_read(%struct.nbio_t* %30)
  br label %32

32:                                               ; preds = %37, %29
  %33 = load %struct.nbio_t*, %struct.nbio_t** %11, align 8
  %34 = call i32 @nbio_iterate(%struct.nbio_t* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %32

38:                                               ; preds = %32
  %39 = load %struct.nbio_t*, %struct.nbio_t** %11, align 8
  %40 = call i8* @nbio_get_ptr(%struct.nbio_t* %39, i64* %10)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %58

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @image_texture_load_internal(i32 %45, i8* %46, i64 %47, %struct.texture_image* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %73

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %2
  br label %58

58:                                               ; preds = %57, %43, %28
  %59 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %60 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %62 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  %63 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %64 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %66 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.nbio_t*, %struct.nbio_t** %11, align 8
  %68 = icmp ne %struct.nbio_t* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load %struct.nbio_t*, %struct.nbio_t** %11, align 8
  %71 = call i32 @nbio_free(%struct.nbio_t* %70)
  br label %72

72:                                               ; preds = %69, %58
  store i32 0, i32* %3, align 4
  br label %80

73:                                               ; preds = %55
  %74 = load %struct.nbio_t*, %struct.nbio_t** %11, align 8
  %75 = icmp ne %struct.nbio_t* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.nbio_t*, %struct.nbio_t** %11, align 8
  %78 = call i32 @nbio_free(%struct.nbio_t* %77)
  br label %79

79:                                               ; preds = %76, %73
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %72
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @image_texture_get_type(i8*) #1

declare dso_local i32 @image_texture_set_color_shifts(i32*, i32*, i32*, i32*, %struct.texture_image*) #1

declare dso_local i64 @nbio_open(i8*, i32) #1

declare dso_local i32 @nbio_begin_read(%struct.nbio_t*) #1

declare dso_local i32 @nbio_iterate(%struct.nbio_t*) #1

declare dso_local i8* @nbio_get_ptr(%struct.nbio_t*, i64*) #1

declare dso_local i64 @image_texture_load_internal(i32, i8*, i64, %struct.texture_image*, i32, i32, i32, i32) #1

declare dso_local i32 @nbio_free(%struct.nbio_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
