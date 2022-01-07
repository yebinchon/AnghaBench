; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_show_filter_properties.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_show_filter_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@IID_ISpecifyPropertyPages = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"requested filter does not have a property page to show\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failure showing property pages for filter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dshow_show_filter_properties(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32** %5 to i8**
  %14 = call i64 @IBaseFilter_QueryInterface(i32* %12, i32* @IID_ISpecifyPropertyPages, i8** %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @AV_LOG_WARNING, align 4
  %21 = call i32 @av_log(i32* %19, i32 %20, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %61

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @IBaseFilter_QueryFilterInfo(i32* %23, %struct.TYPE_5__* %8)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %57

29:                                               ; preds = %22
  %30 = load i32*, i32** %3, align 8
  %31 = bitcast i32** %6 to i8**
  %32 = call i64 @IBaseFilter_QueryInterface(i32* %30, i32* @IID_IUnknown, i8** %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %57

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @ISpecifyPropertyPages_GetPages(i32* %38, %struct.TYPE_6__* %9)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %57

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @OleCreatePropertyFrame(i32* null, i32 0, i32 0, i32 %46, i32 1, i32** %6, i32 %48, i64 %50, i32 0, i32 0, i32* null)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %57

56:                                               ; preds = %44
  br label %61

57:                                               ; preds = %55, %43, %36, %28
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 @av_log(i32* %58, i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %56, %18
  %62 = load i32*, i32** %5, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @ISpecifyPropertyPages_Release(i32* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32*, i32** %6, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @IUnknown_Release(i32* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @IFilterGraph_Release(i64 %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @CoTaskMemFree(i64 %87)
  br label %89

89:                                               ; preds = %85, %81
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IBaseFilter_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @av_log(i32*, i32, i8*) #2

declare dso_local i64 @IBaseFilter_QueryFilterInfo(i32*, %struct.TYPE_5__*) #2

declare dso_local i64 @ISpecifyPropertyPages_GetPages(i32*, %struct.TYPE_6__*) #2

declare dso_local i64 @OleCreatePropertyFrame(i32*, i32, i32, i32, i32, i32**, i32, i64, i32, i32, i32*) #2

declare dso_local i32 @ISpecifyPropertyPages_Release(i32*) #2

declare dso_local i32 @IUnknown_Release(i32*) #2

declare dso_local i32 @IFilterGraph_Release(i64) #2

declare dso_local i32 @CoTaskMemFree(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
