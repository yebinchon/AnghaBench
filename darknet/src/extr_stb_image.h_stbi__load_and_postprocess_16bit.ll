; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__load_and_postprocess_16bit.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__load_and_postprocess_16bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@stbi__vertically_flip_on_load = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32)* @stbi__load_and_postprocess_16bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stbi__load_and_postprocess_16bit(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i8* @stbi__load_main(i32* %15, i32* %16, i32* %17, i32* %18, i32 %19, %struct.TYPE_3__* %12, i32 16)
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %77

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 16
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 8
  %32 = zext i1 %31 to i32
  %33 = call i32 @STBI_ASSERT(i32 %32)
  %34 = load i8*, i8** %13, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  br label %47

45:                                               ; preds = %28
  %46 = load i32, i32* %11, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i32 [ %44, %42 ], [ %46, %45 ]
  %49 = call i8* @stbi__convert_8_to_16(i32* %35, i32 %37, i32 %39, i32 %48)
  store i8* %49, i8** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 16, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %24
  %52 = load i64, i64* @stbi__vertically_flip_on_load, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %61, %59 ]
  store i32 %63, i32* %14, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 @stbi__vertical_flip(i8* %64, i32 %66, i32 %68, i32 %72)
  br label %74

74:                                               ; preds = %62, %51
  %75 = load i8*, i8** %13, align 8
  %76 = bitcast i8* %75 to i32*
  store i32* %76, i32** %6, align 8
  br label %77

77:                                               ; preds = %74, %23
  %78 = load i32*, i32** %6, align 8
  ret i32* %78
}

declare dso_local i8* @stbi__load_main(i32*, i32*, i32*, i32*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @STBI_ASSERT(i32) #1

declare dso_local i8* @stbi__convert_8_to_16(i32*, i32, i32, i32) #1

declare dso_local i32 @stbi__vertical_flip(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
