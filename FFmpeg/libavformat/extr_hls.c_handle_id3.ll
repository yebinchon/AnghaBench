; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_handle_id3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_handle_id3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { i32, i32, i32*, i32, i32*, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Changing ID3 metadata in HLS audio elementary stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.playlist*)* @handle_id3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_id3(i32* %0, %struct.playlist* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.playlist*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.playlist* %1, %struct.playlist** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.playlist*, %struct.playlist** %4, align 8
  %11 = getelementptr inbounds %struct.playlist, %struct.playlist* %10, i32 0, i32 5
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @parse_id3(%struct.TYPE_3__* %12, i32* %13, i32** %5, i64* %8, i32** %6, i32** %7)
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.playlist*, %struct.playlist** %4, align 8
  %21 = getelementptr inbounds %struct.playlist, %struct.playlist* %20, i32 0, i32 7
  store i64 %19, i64* %21, align 8
  %22 = load %struct.playlist*, %struct.playlist** %4, align 8
  %23 = getelementptr inbounds %struct.playlist, %struct.playlist* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.playlist*, %struct.playlist** %4, align 8
  %26 = getelementptr inbounds %struct.playlist, %struct.playlist* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %65, label %29

29:                                               ; preds = %24
  %30 = load %struct.playlist*, %struct.playlist** %4, align 8
  %31 = getelementptr inbounds %struct.playlist, %struct.playlist* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @av_assert0(i32 %35)
  %37 = load %struct.playlist*, %struct.playlist** %4, align 8
  %38 = getelementptr inbounds %struct.playlist, %struct.playlist* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.playlist*, %struct.playlist** %4, align 8
  %40 = getelementptr inbounds %struct.playlist, %struct.playlist* %39, i32 0, i32 5
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.playlist*, %struct.playlist** %4, align 8
  %47 = getelementptr inbounds %struct.playlist, %struct.playlist* %46, i32 0, i32 5
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = call i32 @ff_id3v2_parse_apic(%struct.TYPE_3__* %48, i32** %7)
  br label %54

50:                                               ; preds = %29
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.playlist*, %struct.playlist** %4, align 8
  %53 = getelementptr inbounds %struct.playlist, %struct.playlist* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  %55 = call i32 @ff_id3v2_parse_priv_dict(i32** %5, i32** %7)
  %56 = load %struct.playlist*, %struct.playlist** %4, align 8
  %57 = getelementptr inbounds %struct.playlist, %struct.playlist* %56, i32 0, i32 5
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @av_dict_copy(i32* %59, i32* %60, i32 0)
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.playlist*, %struct.playlist** %4, align 8
  %64 = getelementptr inbounds %struct.playlist, %struct.playlist* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  br label %85

65:                                               ; preds = %24
  %66 = load %struct.playlist*, %struct.playlist** %4, align 8
  %67 = getelementptr inbounds %struct.playlist, %struct.playlist* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %65
  %71 = load %struct.playlist*, %struct.playlist** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i64 @id3_has_changed_values(%struct.playlist* %71, i32* %72, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.playlist*, %struct.playlist** %4, align 8
  %78 = getelementptr inbounds %struct.playlist, %struct.playlist* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @avpriv_report_missing_feature(i32 %79, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.playlist*, %struct.playlist** %4, align 8
  %82 = getelementptr inbounds %struct.playlist, %struct.playlist* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %70, %65
  %84 = call i32 @av_dict_free(i32** %5)
  br label %85

85:                                               ; preds = %83, %54
  %86 = load %struct.playlist*, %struct.playlist** %4, align 8
  %87 = getelementptr inbounds %struct.playlist, %struct.playlist* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = call i32 @ff_id3v2_free_extra_meta(i32** %7)
  br label %92

92:                                               ; preds = %90, %85
  ret void
}

declare dso_local i32 @parse_id3(%struct.TYPE_3__*, i32*, i32**, i64*, i32**, i32**) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ff_id3v2_parse_apic(%struct.TYPE_3__*, i32**) #1

declare dso_local i32 @ff_id3v2_parse_priv_dict(i32**, i32**) #1

declare dso_local i32 @av_dict_copy(i32*, i32*, i32) #1

declare dso_local i64 @id3_has_changed_values(%struct.playlist*, i32*, i32*) #1

declare dso_local i32 @avpriv_report_missing_feature(i32, i8*) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @ff_id3v2_free_extra_meta(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
