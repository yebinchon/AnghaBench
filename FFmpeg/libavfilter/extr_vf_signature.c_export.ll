; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signature.c_export.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signature.c_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FORMAT_XML = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca [1024 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @av_get_frame_filename(i8* %18, i32 1024, i32 %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @av_assert0(i32 %25)
  br label %39

27:                                               ; preds = %3
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @av_strlcpy(i8* %28, i32 %31, i32 1024)
  %33 = sext i32 %32 to i64
  %34 = icmp uge i64 %33, 1024
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %55

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %17
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FORMAT_XML, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %49 = call i32 @xml_export(%struct.TYPE_7__* %46, i32* %47, i8* %48)
  store i32 %49, i32* %4, align 4
  br label %55

50:                                               ; preds = %39
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %54 = call i32 @binary_export(%struct.TYPE_7__* %51, i32* %52, i8* %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %45, %35
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @av_get_frame_filename(i8*, i32, i32, i32) #1

declare dso_local i32 @av_strlcpy(i8*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @xml_export(%struct.TYPE_7__*, i32*, i8*) #1

declare dso_local i32 @binary_export(%struct.TYPE_7__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
