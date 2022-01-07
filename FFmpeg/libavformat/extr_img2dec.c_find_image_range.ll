; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2dec.c_find_image_range.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2dec.c_find_image_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, i32, i32)* @find_image_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_image_range(i32* %0, i32* %1, i32* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %18, align 4
  br label %20

20:                                               ; preds = %51, %6
  %21 = load i32, i32* %18, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %18, align 4
  %30 = call i64 @av_get_frame_filename(i8* %27, i32 1024, i8* %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i32*, i32** %10, align 8
  store i32 1, i32* %33, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 1, i32* %34, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %39 = load i32, i32* @AVIO_FLAG_READ, align 4
  %40 = call i64 @avio_check(i8* %38, i32 %39)
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32
  store i32 0, i32* %7, align 4
  br label %106

43:                                               ; preds = %37
  store i32 -1, i32* %7, align 4
  br label %106

44:                                               ; preds = %26
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %46 = load i32, i32* @AVIO_FLAG_READ, align 4
  %47 = call i64 @avio_check(i8* %45, i32 %46)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %54

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %18, align 4
  br label %20

54:                                               ; preds = %49, %20
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %56, %57
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %105

61:                                               ; preds = %54
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %96, %61
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %91, %63
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 1, i32* %17, align 4
  br label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %15, align 4
  %70 = mul nsw i32 2, %69
  store i32 %70, i32* %17, align 4
  br label %71

71:                                               ; preds = %68, %67
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i64 @av_get_frame_filename(i8* %72, i32 1024, i8* %73, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %105

80:                                               ; preds = %71
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %82 = load i32, i32* @AVIO_FLAG_READ, align 4
  %83 = call i64 @avio_check(i8* %81, i32 %82)
  %84 = icmp sle i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %92

86:                                               ; preds = %80
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp sge i32 %88, 1073741824
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %105

91:                                               ; preds = %86
  br label %64

92:                                               ; preds = %85
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  br label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %16, align 4
  br label %63

100:                                              ; preds = %95
  %101 = load i32, i32* %18, align 4
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32*, i32** %10, align 8
  store i32 %103, i32* %104, align 4
  store i32 0, i32* %7, align 4
  br label %106

105:                                              ; preds = %90, %79, %60
  store i32 -1, i32* %7, align 4
  br label %106

106:                                              ; preds = %105, %100, %43, %42
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i64 @av_get_frame_filename(i8*, i32, i8*, i32) #1

declare dso_local i64 @avio_check(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
