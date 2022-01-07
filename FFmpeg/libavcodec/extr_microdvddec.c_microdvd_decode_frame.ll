; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_microdvddec.c_microdvd_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_microdvddec.c_microdvd_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.microdvd_tag = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_17__*)* @microdvd_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microdvd_decode_frame(%struct.TYPE_18__* %0, i8* %1, i32* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca [3 x %struct.microdvd_tag], align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %10, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %12, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8* %29, i8** %13, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %14, align 8
  %33 = bitcast [3 x %struct.microdvd_tag]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 12, i1 false)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %5, align 4
  br label %128

42:                                               ; preds = %4
  %43 = call i32 @av_bprint_init(%struct.TYPE_19__* %11, i32 0, i32 2048)
  br label %44

44:                                               ; preds = %98, %42
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ult i8* %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i1 [ false, %44 ], [ %52, %48 ]
  br i1 %54, label %55, label %99

55:                                               ; preds = %53
  %56 = getelementptr inbounds [3 x %struct.microdvd_tag], [3 x %struct.microdvd_tag]* %15, i64 0, i64 0
  %57 = load i8*, i8** %12, align 8
  %58 = call i8* @microdvd_load_tags(%struct.microdvd_tag* %56, i8* %57)
  store i8* %58, i8** %12, align 8
  %59 = getelementptr inbounds [3 x %struct.microdvd_tag], [3 x %struct.microdvd_tag]* %15, i64 0, i64 0
  %60 = call i32 @microdvd_open_tags(%struct.TYPE_19__* %11, %struct.microdvd_tag* %59)
  br label %61

61:                                               ; preds = %77, %55
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i8*, i8** %12, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 124
  br label %75

75:                                               ; preds = %70, %65, %61
  %76 = phi i1 [ false, %65 ], [ false, %61 ], [ %74, %70 ]
  br i1 %76, label %77, label %83

77:                                               ; preds = %75
  %78 = load i8*, i8** %12, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i32 @av_bprint_chars(%struct.TYPE_19__* %11, i8 signext %79, i32 1)
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %12, align 8
  br label %61

83:                                               ; preds = %75
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = icmp ult i8* %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8*, i8** %12, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 124
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = getelementptr inbounds [3 x %struct.microdvd_tag], [3 x %struct.microdvd_tag]* %15, i64 0, i64 0
  %94 = call i32 @microdvd_close_no_persistent_tags(%struct.TYPE_19__* %11, %struct.microdvd_tag* %93)
  %95 = call i32 @av_bprintf(%struct.TYPE_19__* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %12, align 8
  br label %98

98:                                               ; preds = %92, %87, %83
  br label %44

99:                                               ; preds = %53
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = call i32 @ff_ass_add_rect(%struct.TYPE_16__* %104, i32 %106, i32 %109, i32 0, i32* null, i32* null)
  store i32 %111, i32* %16, align 4
  %112 = call i32 @av_bprint_finalize(%struct.TYPE_19__* %11, i32* null)
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %5, align 4
  br label %128

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %99
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = load i32*, i32** %8, align 8
  store i32 %123, i32* %124, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %118, %115, %38
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i8* @microdvd_load_tags(%struct.microdvd_tag*, i8*) #2

declare dso_local i32 @microdvd_open_tags(%struct.TYPE_19__*, %struct.microdvd_tag*) #2

declare dso_local i32 @av_bprint_chars(%struct.TYPE_19__*, i8 signext, i32) #2

declare dso_local i32 @microdvd_close_no_persistent_tags(%struct.TYPE_19__*, %struct.microdvd_tag*) #2

declare dso_local i32 @av_bprintf(%struct.TYPE_19__*, i8*) #2

declare dso_local i32 @ff_ass_add_rect(%struct.TYPE_16__*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_19__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
