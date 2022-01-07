; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaCodecProfile_getProfileFromAVCodecContext.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaCodecProfile_getProfileFromAVCodecContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__**, i32, i64)* }
%struct.JNIAMediaCodecListFields = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@jni_amediacodeclist_mapping = common dso_local global i32 0, align 4
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AV_CODEC_ID_HEVC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_AMediaCodecProfile_getProfileFromAVCodecContext(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__**, align 8
  %5 = alloca %struct.JNIAMediaCodecListFields, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 -1, i32* %3, align 4
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %4, align 8
  %7 = bitcast %struct.JNIAMediaCodecListFields* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 88, i1 false)
  store i64 0, i64* %6, align 8
  %8 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = call i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_13__** %8, %struct.TYPE_14__* %9, i32 -1)
  %11 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %12 = load i32, i32* @jni_amediacodeclist_mapping, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = call i64 @ff_jni_init_jfields(%struct.TYPE_13__** %11, %struct.JNIAMediaCodecListFields* %5, i32 %12, i32 0, %struct.TYPE_14__* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %87

17:                                               ; preds = %1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %48 [
    i32 142, label %27
    i32 141, label %27
    i32 131, label %30
    i32 140, label %33
    i32 139, label %36
    i32 138, label %39
    i32 137, label %39
    i32 136, label %42
    i32 135, label %42
    i32 134, label %45
    i32 133, label %45
    i32 132, label %45
  ]

27:                                               ; preds = %23, %23
  %28 = getelementptr inbounds %struct.JNIAMediaCodecListFields, %struct.JNIAMediaCodecListFields* %5, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  br label %48

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.JNIAMediaCodecListFields, %struct.JNIAMediaCodecListFields* %5, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  br label %48

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.JNIAMediaCodecListFields, %struct.JNIAMediaCodecListFields* %5, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  br label %48

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.JNIAMediaCodecListFields, %struct.JNIAMediaCodecListFields* %5, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  br label %48

39:                                               ; preds = %23, %23
  %40 = getelementptr inbounds %struct.JNIAMediaCodecListFields, %struct.JNIAMediaCodecListFields* %5, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  br label %48

42:                                               ; preds = %23, %23
  %43 = getelementptr inbounds %struct.JNIAMediaCodecListFields, %struct.JNIAMediaCodecListFields* %5, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %6, align 8
  br label %48

45:                                               ; preds = %23, %23, %23
  %46 = getelementptr inbounds %struct.JNIAMediaCodecListFields, %struct.JNIAMediaCodecListFields* %5, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %23, %45, %42, %39, %36, %33, %30, %27
  br label %67

49:                                               ; preds = %17
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AV_CODEC_ID_HEVC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %65 [
    i32 130, label %59
    i32 128, label %59
    i32 129, label %62
  ]

59:                                               ; preds = %55, %55
  %60 = getelementptr inbounds %struct.JNIAMediaCodecListFields, %struct.JNIAMediaCodecListFields* %5, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %6, align 8
  br label %65

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.JNIAMediaCodecListFields, %struct.JNIAMediaCodecListFields* %5, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %55, %62, %59
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %48
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_13__**, i32, i64)*, i32 (%struct.TYPE_13__**, i32, i64)** %73, align 8
  %75 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %76 = getelementptr inbounds %struct.JNIAMediaCodecListFields, %struct.JNIAMediaCodecListFields* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i32 %74(%struct.TYPE_13__** %75, i32 %77, i64 %78)
  store i32 %79, i32* %3, align 4
  %80 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %82 = call i64 @ff_jni_exception_check(%struct.TYPE_13__** %80, i32 1, %struct.TYPE_14__* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %87

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %67
  br label %87

87:                                               ; preds = %86, %84, %16
  %88 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %89 = load i32, i32* @jni_amediacodeclist_mapping, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %91 = call i32 @ff_jni_reset_jfields(%struct.TYPE_13__** %88, %struct.JNIAMediaCodecListFields* %5, i32 %89, i32 0, %struct.TYPE_14__* %90)
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_13__**, %struct.TYPE_14__*, i32) #2

declare dso_local i64 @ff_jni_init_jfields(%struct.TYPE_13__**, %struct.JNIAMediaCodecListFields*, i32, i32, %struct.TYPE_14__*) #2

declare dso_local i64 @ff_jni_exception_check(%struct.TYPE_13__**, i32, %struct.TYPE_14__*) #2

declare dso_local i32 @ff_jni_reset_jfields(%struct.TYPE_13__**, %struct.JNIAMediaCodecListFields*, i32, i32, %struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
