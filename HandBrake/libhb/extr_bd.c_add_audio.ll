; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_bd.c_add_audio.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_bd.c_add_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__, i8*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"HDMV\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"AC3\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DTS\00", align 1
@HB_ACODEC_FF_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"E-AC3\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"DTS-HD HRA\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"DTS-HD MA\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"BD LPCM\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"MPEG1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"MPEG2\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"TrueHD\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Unknown FFmpeg\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@HB_AUDIO_ATTR_NONE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"bd: audio id=0x%x, lang=%s (%s), 3cc=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_18__*, i32, i8*, i8*)* @add_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_audio(i32 %0, i32* %1, %struct.TYPE_18__* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = call %struct.TYPE_17__* @calloc(i32 64, i32 1)
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = shl i32 %17, 16
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %18, %21
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = call i32 @STR4_TO_UINT32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 6
  store i32 %25, i32* %29, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 5
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 4
  store i8* %48, i8** %52, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %60 [
    i32 129, label %58
    i32 128, label %59
  ]

58:                                               ; preds = %6
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %84

59:                                               ; preds = %6
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %84

60:                                               ; preds = %6
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @HB_ACODEC_FF_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %60
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %80 [
    i32 136, label %73
    i32 135, label %74
    i32 134, label %75
    i32 133, label %76
    i32 132, label %77
    i32 131, label %78
    i32 130, label %79
  ]

73:                                               ; preds = %69
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %81

74:                                               ; preds = %69
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %81

75:                                               ; preds = %69
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %81

76:                                               ; preds = %69
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %81

77:                                               ; preds = %69
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %81

78:                                               ; preds = %69
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %81

79:                                               ; preds = %69
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %81

80:                                               ; preds = %69
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %81

81:                                               ; preds = %80, %79, %78, %77, %76, %75, %74, %73
  br label %83

82:                                               ; preds = %60
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %13, align 8
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %59, %58
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = call %struct.TYPE_16__* @lang_for_code2(i8* %88)
  store %struct.TYPE_16__* %89, %struct.TYPE_16__** %15, align 8
  %90 = load i32, i32* @HB_AUDIO_ATTR_NONE, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  store i32 %90, i32* %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strlen(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %84
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  br label %113

109:                                              ; preds = %84
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i8* [ %108, %105 ], [ %112, %109 ]
  %115 = call i32 @snprintf(i32 %99, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %114)
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @snprintf(i32 %120, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %123)
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i8*, i8** %13, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @hb_log(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %127, i32 %132, i8* %133, i32 %138)
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  store i32 %140, i32* %144, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store i32 1, i32* %149, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  store i32 90000, i32* %154, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %157 = call i32 @hb_list_add(i32* %155, %struct.TYPE_17__* %156)
  ret void
}

declare dso_local %struct.TYPE_17__* @calloc(i32, i32) #1

declare dso_local i32 @STR4_TO_UINT32(i8*) #1

declare dso_local %struct.TYPE_16__* @lang_for_code2(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @hb_log(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @hb_list_add(i32*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
