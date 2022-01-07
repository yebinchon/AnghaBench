; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_encryption_info.c_av_encryption_init_info_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_encryption_info.c_av_encryption_init_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i8**, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @av_encryption_init_info_alloc(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call i8* @av_mallocz(i64 56)
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %110

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = call i8* @av_mallocz(i64 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i64, i64* %7, align 8
  %29 = call i8** @av_mallocz_array(i64 %28, i32 8)
  br label %31

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i8** [ %29, %27 ], [ null, %30 ]
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  store i8** %32, i8*** %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i8* @av_mallocz(i64 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 6
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %31
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %52, %31
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load i8**, i8*** %65, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %60, %52
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = call i32 @av_encryption_init_info_free(%struct.TYPE_4__* %75)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %110

77:                                               ; preds = %71, %68, %63
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %108

80:                                               ; preds = %77
  store i64 0, i64* %11, align 8
  br label %81

81:                                               ; preds = %104, %80
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load i64, i64* %8, align 8
  %87 = call i8* @av_mallocz(i64 %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = load i8**, i8*** %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  store i8* %87, i8** %92, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i8**, i8*** %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i8*, i8** %95, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %85
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = call i32 @av_encryption_init_info_free(%struct.TYPE_4__* %101)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %110

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %11, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %11, align 8
  br label %81

107:                                              ; preds = %81
  br label %108

108:                                              ; preds = %107, %77
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %109, %struct.TYPE_4__** %5, align 8
  br label %110

110:                                              ; preds = %108, %100, %74, %16
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %111
}

declare dso_local i8* @av_mallocz(i64) #1

declare dso_local i8** @av_mallocz_array(i64, i32) #1

declare dso_local i32 @av_encryption_init_info_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
