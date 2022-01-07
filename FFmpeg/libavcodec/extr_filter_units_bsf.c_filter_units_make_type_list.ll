; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_filter_units_bsf.c_filter_units_make_type_list.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_filter_units_bsf.c_filter_units_make_type_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64**, i32*)* @filter_units_make_type_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_units_make_type_list(i8* %0, i64** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* null, i64** %8, align 8
  store i32 1, i32* %9, align 4
  br label %16

16:                                               ; preds = %104, %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp sle i32 %17, 2
  br i1 %18, label %19, label %107

19:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %14, align 8
  br label %21

21:                                               ; preds = %90, %19
  %22 = load i8*, i8** %14, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %91

25:                                               ; preds = %21
  %26 = load i8*, i8** %14, align 8
  %27 = call i64 @strtol(i8* %26, i8** %15, i32 0)
  store i64 %27, i64* %11, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %112

32:                                               ; preds = %25
  %33 = load i8*, i8** %15, align 8
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %38, label %70

38:                                               ; preds = %32
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %14, align 8
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* %12, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = call i64 @strtol(i8* %42, i8** %15, i32 0)
  store i64 %43, i64* %13, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %112

48:                                               ; preds = %38
  %49 = load i64, i64* %12, align 8
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %66, %48
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i64, i64* %11, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %58, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %11, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %11, align 8
  br label %50

69:                                               ; preds = %50
  br label %82

70:                                               ; preds = %32
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i64, i64* %11, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 %74, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %70
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %79, %69
  %83 = load i8*, i8** %14, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 124
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %14, align 8
  br label %90

90:                                               ; preds = %87, %82
  br label %21

91:                                               ; preds = %21
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = call i64* @av_malloc_array(i32 %95, i32 8)
  store i64* %96, i64** %8, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = icmp ne i64* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = call i32 @AVERROR(i32 %100)
  store i32 %101, i32* %4, align 4
  br label %116

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %91
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %16

107:                                              ; preds = %16
  %108 = load i64*, i64** %8, align 8
  %109 = load i64**, i64*** %6, align 8
  store i64* %108, i64** %109, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32*, i32** %7, align 8
  store i32 %110, i32* %111, align 4
  store i32 0, i32* %4, align 4
  br label %116

112:                                              ; preds = %47, %31
  %113 = call i32 @av_freep(i64** %8)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = call i32 @AVERROR(i32 %114)
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %112, %107, %99
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_freep(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
