; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__load_main.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__load_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32 }

@STBI_ORDER_RGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unknown image type\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Image not of any known type, or corrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__*, i32)* @stbi__load_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stbi__load_main(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, %struct.TYPE_13__* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %18 = call i32 @memset(%struct.TYPE_13__* %17, i32 0, i32 24)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 8, i32* %20, align 8
  %21 = load i32, i32* @STBI_ORDER_RGB, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @stbi__jpeg_test(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %7
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %36 = call i8* @stbi__jpeg_load(i32* %30, i32* %31, i32* %32, i32* %33, i32 %34, %struct.TYPE_13__* %35)
  store i8* %36, i8** %8, align 8
  br label %151

37:                                               ; preds = %7
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @stbi__png_test(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %48 = call i8* @stbi__png_load(i32* %42, i32* %43, i32* %44, i32* %45, i32 %46, %struct.TYPE_13__* %47)
  store i8* %48, i8** %8, align 8
  br label %151

49:                                               ; preds = %37
  %50 = load i32*, i32** %9, align 8
  %51 = call i64 @stbi__bmp_test(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %60 = call i8* @stbi__bmp_load(i32* %54, i32* %55, i32* %56, i32* %57, i32 %58, %struct.TYPE_13__* %59)
  store i8* %60, i8** %8, align 8
  br label %151

61:                                               ; preds = %49
  %62 = load i32*, i32** %9, align 8
  %63 = call i64 @stbi__gif_test(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %72 = call i8* @stbi__gif_load(i32* %66, i32* %67, i32* %68, i32* %69, i32 %70, %struct.TYPE_13__* %71)
  store i8* %72, i8** %8, align 8
  br label %151

73:                                               ; preds = %61
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @stbi__psd_test(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i8* @stbi__psd_load(i32* %78, i32* %79, i32* %80, i32* %81, i32 %82, %struct.TYPE_13__* %83, i32 %84)
  store i8* %85, i8** %8, align 8
  br label %151

86:                                               ; preds = %73
  %87 = load i32*, i32** %9, align 8
  %88 = call i64 @stbi__pic_test(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %97 = call i8* @stbi__pic_load(i32* %91, i32* %92, i32* %93, i32* %94, i32 %95, %struct.TYPE_13__* %96)
  store i8* %97, i8** %8, align 8
  br label %151

98:                                               ; preds = %86
  %99 = load i32*, i32** %9, align 8
  %100 = call i64 @stbi__pnm_test(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32*, i32** %9, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %109 = call i8* @stbi__pnm_load(i32* %103, i32* %104, i32* %105, i32* %106, i32 %107, %struct.TYPE_13__* %108)
  store i8* %109, i8** %8, align 8
  br label %151

110:                                              ; preds = %98
  %111 = load i32*, i32** %9, align 8
  %112 = call i64 @stbi__hdr_test(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %110
  %115 = load i32*, i32** %9, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %121 = call float* @stbi__hdr_load(i32* %115, i32* %116, i32* %117, i32* %118, i32 %119, %struct.TYPE_13__* %120)
  store float* %121, float** %16, align 8
  %122 = load float*, float** %16, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %114
  %130 = load i32, i32* %13, align 4
  br label %134

131:                                              ; preds = %114
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %132, align 4
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi i32 [ %130, %129 ], [ %133, %131 ]
  %136 = call i8* @stbi__hdr_to_ldr(float* %122, i32 %124, i32 %126, i32 %135)
  store i8* %136, i8** %8, align 8
  br label %151

137:                                              ; preds = %110
  %138 = load i32*, i32** %9, align 8
  %139 = call i64 @stbi__tga_test(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i32*, i32** %9, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %148 = call i8* @stbi__tga_load(i32* %142, i32* %143, i32* %144, i32* %145, i32 %146, %struct.TYPE_13__* %147)
  store i8* %148, i8** %8, align 8
  br label %151

149:                                              ; preds = %137
  %150 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i8* %150, i8** %8, align 8
  br label %151

151:                                              ; preds = %149, %141, %134, %102, %90, %77, %65, %53, %41, %29
  %152 = load i8*, i8** %8, align 8
  ret i8* %152
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @stbi__jpeg_test(i32*) #1

declare dso_local i8* @stbi__jpeg_load(i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @stbi__png_test(i32*) #1

declare dso_local i8* @stbi__png_load(i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @stbi__bmp_test(i32*) #1

declare dso_local i8* @stbi__bmp_load(i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @stbi__gif_test(i32*) #1

declare dso_local i8* @stbi__gif_load(i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @stbi__psd_test(i32*) #1

declare dso_local i8* @stbi__psd_load(i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @stbi__pic_test(i32*) #1

declare dso_local i8* @stbi__pic_load(i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @stbi__pnm_test(i32*) #1

declare dso_local i8* @stbi__pnm_load(i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @stbi__hdr_test(i32*) #1

declare dso_local float* @stbi__hdr_load(i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i8* @stbi__hdr_to_ldr(float*, i32, i32, i32) #1

declare dso_local i64 @stbi__tga_test(i32*) #1

declare dso_local i8* @stbi__tga_load(i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i8* @stbi__errpuc(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
