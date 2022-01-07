; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_set_bin.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_set_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@AV_OPT_TYPE_BINARY = common dso_local global i64 0, align 8
@AV_OPT_FLAG_READONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_opt_set_bin(i8* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.TYPE_3__* @av_opt_find2(i8* %17, i8* %18, i32* null, i32 0, i32 %19, i8** %12)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %13, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %5
  %27 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %27, i32* %6, align 4
  br label %88

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AV_OPT_TYPE_BINARY, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AV_OPT_FLAG_READONLY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34, %28
  %42 = load i32, i32* @EINVAL, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %6, align 4
  br label %88

44:                                               ; preds = %34
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = call i32* @av_malloc(i32 %48)
  br label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32* [ %49, %47 ], [ null, %50 ]
  store i32* %52, i32** %14, align 8
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32*, i32** %14, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %6, align 4
  br label %88

61:                                               ; preds = %55, %51
  %62 = load i8*, i8** %12, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = bitcast i32* %68 to i32**
  store i32** %69, i32*** %15, align 8
  %70 = load i32**, i32*** %15, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 1
  %72 = bitcast i32** %71 to i32*
  store i32* %72, i32** %16, align 8
  %73 = load i32**, i32*** %15, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @av_free(i32* %74)
  %76 = load i32*, i32** %14, align 8
  %77 = load i32**, i32*** %15, align 8
  store i32* %76, i32** %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32*, i32** %16, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %61
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @memcpy(i32* %83, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %61
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %58, %41, %26
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_3__* @av_opt_find2(i8*, i8*, i32*, i32, i32, i8**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
