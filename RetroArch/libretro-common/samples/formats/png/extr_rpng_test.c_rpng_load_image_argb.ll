; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/samples/formats/png/extr_rpng_test.c_rpng_load_image_argb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/samples/formats/png/extr_rpng_test.c_rpng_load_image_argb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbio_t = type { i32 }

@NBIO_READ = common dso_local global i32 0, align 4
@IMAGE_PROCESS_NEXT = common dso_local global i32 0, align 4
@IMAGE_PROCESS_ERROR = common dso_local global i32 0, align 4
@IMAGE_PROCESS_ERROR_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**, i32*, i32*)* @rpng_load_image_argb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpng_load_image_argb(i8* %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.nbio_t*, align 8
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 1, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i8* null, i8** %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @NBIO_READ, align 4
  %17 = call i64 @nbio_open(i8* %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.nbio_t*
  store %struct.nbio_t* %18, %struct.nbio_t** %14, align 8
  %19 = load %struct.nbio_t*, %struct.nbio_t** %14, align 8
  %20 = icmp ne %struct.nbio_t* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %88

22:                                               ; preds = %4
  %23 = load %struct.nbio_t*, %struct.nbio_t** %14, align 8
  %24 = call i32 @nbio_begin_read(%struct.nbio_t* %23)
  br label %25

25:                                               ; preds = %30, %22
  %26 = load %struct.nbio_t*, %struct.nbio_t** %14, align 8
  %27 = call i32 @nbio_iterate(%struct.nbio_t* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %25

31:                                               ; preds = %25
  %32 = load %struct.nbio_t*, %struct.nbio_t** %14, align 8
  %33 = call i8* @nbio_get_ptr(%struct.nbio_t* %32, i64* %10)
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %88

37:                                               ; preds = %31
  %38 = call i32* (...) @rpng_alloc()
  store i32* %38, i32** %12, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %88

42:                                               ; preds = %37
  %43 = load i32*, i32** %12, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = call i32 @rpng_set_buf_ptr(i32* %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %88

49:                                               ; preds = %42
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @rpng_start(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %88

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %59, %54
  %56 = load i32*, i32** %12, align 8
  %57 = call i64 @rpng_iterate_image(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %55

60:                                               ; preds = %55
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @rpng_is_valid(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %88

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %74, %65
  %67 = load i32*, i32** %12, align 8
  %68 = load i32**, i32*** %6, align 8
  %69 = bitcast i32** %68 to i8**
  %70 = load i64, i64* %10, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @rpng_process_image(i32* %67, i8** %69, i64 %70, i32* %71, i32* %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @IMAGE_PROCESS_NEXT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %66, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @IMAGE_PROCESS_ERROR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @IMAGE_PROCESS_ERROR_END, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %78
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %82
  br label %88

88:                                               ; preds = %87, %64, %53, %48, %41, %36, %21
  %89 = load %struct.nbio_t*, %struct.nbio_t** %14, align 8
  %90 = icmp ne %struct.nbio_t* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.nbio_t*, %struct.nbio_t** %14, align 8
  %93 = call i32 @nbio_free(%struct.nbio_t* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32*, i32** %12, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @rpng_free(i32* %98)
  br label %100

100:                                              ; preds = %97, %94
  store i32* null, i32** %12, align 8
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load i32**, i32*** %6, align 8
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @free(i32* %105)
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

declare dso_local i64 @nbio_open(i8*, i32) #1

declare dso_local i32 @nbio_begin_read(%struct.nbio_t*) #1

declare dso_local i32 @nbio_iterate(%struct.nbio_t*) #1

declare dso_local i8* @nbio_get_ptr(%struct.nbio_t*, i64*) #1

declare dso_local i32* @rpng_alloc(...) #1

declare dso_local i32 @rpng_set_buf_ptr(i32*, i32*) #1

declare dso_local i32 @rpng_start(i32*) #1

declare dso_local i64 @rpng_iterate_image(i32*) #1

declare dso_local i32 @rpng_is_valid(i32*) #1

declare dso_local i32 @rpng_process_image(i32*, i8**, i64, i32*, i32*) #1

declare dso_local i32 @nbio_free(%struct.nbio_t*) #1

declare dso_local i32 @rpng_free(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
