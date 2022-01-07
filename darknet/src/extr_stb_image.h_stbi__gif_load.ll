; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__gif_load.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__gif_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32*, i32*, i32, i32*)* @stbi__gif_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stbi__gif_load(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i8* null, i8** %13, align 8
  %15 = call i32 @memset(%struct.TYPE_4__* %14, i32 0, i32 16)
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i8* @stbi__gif_load_next(i32* %16, %struct.TYPE_4__* %14, i32* %17, i32 %18, i32 0)
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = icmp eq i8* %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i8* null, i8** %13, align 8
  br label %25

25:                                               ; preds = %24, %6
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 4
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* %11, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @stbi__convert_format(i8* %41, i32 4, i32 %42, i32 %44, i32 %46)
  store i8* %47, i8** %13, align 8
  br label %48

48:                                               ; preds = %40, %37, %28
  br label %49

49:                                               ; preds = %48, %25
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @STBI_FREE(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @STBI_FREE(i32 %54)
  %56 = load i8*, i8** %13, align 8
  ret i8* %56
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @stbi__gif_load_next(i32*, %struct.TYPE_4__*, i32*, i32, i32) #1

declare dso_local i8* @stbi__convert_format(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @STBI_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
