; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_hvcc_parse_ptl.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_hvcc_parse_ptl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i8*, i8*, i8* }

@HEVC_MAX_SUB_LAYERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @hvcc_parse_ptl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvcc_parse_ptl(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @HEVC_MAX_SUB_LAYERS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8*, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @HEVC_MAX_SUB_LAYERS, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8*, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @get_bits(i32* %19, i32 2)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i8* %20, i8** %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @get_bits1(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i8* %23, i8** %24, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @get_bits(i32* %25, i32 5)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @get_bits_long(i32* %28, i32 32)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @get_bits64(i32* %31, i32 48)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i8* @get_bits(i32* %34, i32 8)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @hvcc_update_ptl(i32* %37, %struct.TYPE_3__* %8)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %54, %3
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @get_bits1(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %15, i64 %47
  store i8* %45, i8** %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i8* @get_bits1(i32* %49)
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %18, i64 %52
  store i8* %50, i8** %53, align 8
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %39

57:                                               ; preds = %39
  %58 = load i32, i32* %6, align 4
  %59 = icmp ugt i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %68, %60
  %63 = load i32, i32* %7, align 4
  %64 = icmp ult i32 %63, 8
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @skip_bits(i32* %66, i32 2)
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %62

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %57
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %100, %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %15, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @skip_bits_long(i32* %84, i32 32)
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @skip_bits_long(i32* %86, i32 32)
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @skip_bits(i32* %88, i32 24)
  br label %90

90:                                               ; preds = %83, %77
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %18, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @skip_bits(i32* %97, i32 8)
  br label %99

99:                                               ; preds = %96, %90
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %73

103:                                              ; preds = %73
  %104 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %104)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @get_bits(i32*, i32) #2

declare dso_local i8* @get_bits1(i32*) #2

declare dso_local i32 @get_bits_long(i32*, i32) #2

declare dso_local i32 @get_bits64(i32*, i32) #2

declare dso_local i32 @hvcc_update_ptl(i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @skip_bits(i32*, i32) #2

declare dso_local i32 @skip_bits_long(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
