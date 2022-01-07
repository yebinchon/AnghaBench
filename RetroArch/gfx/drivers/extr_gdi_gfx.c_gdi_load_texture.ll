; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gdi_gfx.c_gdi_load_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gdi_gfx.c_gdi_load_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64 }
%struct.texture_image = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i32)* @gdi_load_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gdi_load_texture(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.texture_image*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.texture_image*
  store %struct.texture_image* %14, %struct.texture_image** %12, align 8
  %15 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %16 = icmp ne %struct.texture_image* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %19 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 2048
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %24 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 2048
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %17, %4
  store i64 0, i64* %5, align 8
  br label %98

28:                                               ; preds = %22
  %29 = call i64 @calloc(i32 1, i32 32)
  %30 = inttoptr i64 %29 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %11, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i64 0, i64* %5, align 8
  br label %98

34:                                               ; preds = %28
  %35 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %36 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %41 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %46 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %51 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = call i64 @calloc(i32 1, i32 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %34
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %77 = call i32 @free(%struct.TYPE_3__* %76)
  store i64 0, i64* %5, align 8
  br label %98

78:                                               ; preds = %34
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %83 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i64 %81, i32 %84, i32 %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %97 = ptrtoint %struct.TYPE_3__* %96 to i64
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %78, %75, %33, %27
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
