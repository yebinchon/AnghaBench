; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__parse_zlib.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__parse_zlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@stbi__zdefault_length = common dso_local global i32 0, align 4
@stbi__zdefault_distance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @stbi__parse_zlib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__parse_zlib(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i32 @stbi__parse_zlib_header(%struct.TYPE_8__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %75

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %70, %16
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = call i32 @stbi__zreceive(%struct.TYPE_8__* %22, i32 1)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = call i32 @stbi__zreceive(%struct.TYPE_8__* %24, i32 2)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = call i32 @stbi__parse_uncompressed_block(%struct.TYPE_8__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %75

33:                                               ; preds = %28
  br label %69

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %75

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* @stbi__zdefault_length, align 4
  %45 = call i32 @stbi__zbuild_huffman(i32* %43, i32 %44, i32 288)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %75

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* @stbi__zdefault_distance, align 4
  %52 = call i32 @stbi__zbuild_huffman(i32* %50, i32 %51, i32 32)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %75

55:                                               ; preds = %48
  br label %62

56:                                               ; preds = %38
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = call i32 @stbi__compute_huffman_codes(%struct.TYPE_8__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %75

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %55
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = call i32 @stbi__parse_huffman_block(%struct.TYPE_8__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %75

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %33
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br i1 %73, label %21, label %74

74:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %66, %60, %54, %47, %37, %32, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @stbi__parse_zlib_header(%struct.TYPE_8__*) #1

declare dso_local i32 @stbi__zreceive(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @stbi__parse_uncompressed_block(%struct.TYPE_8__*) #1

declare dso_local i32 @stbi__zbuild_huffman(i32*, i32, i32) #1

declare dso_local i32 @stbi__compute_huffman_codes(%struct.TYPE_8__*) #1

declare dso_local i32 @stbi__parse_huffman_block(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
