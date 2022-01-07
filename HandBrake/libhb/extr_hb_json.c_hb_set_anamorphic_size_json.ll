; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_set_anamorphic_size_json.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_set_anamorphic_size_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [100 x i8] c"{s:{s:i, s:i, s:{s:i, s:i}},s:{s:{s:i, s:i, s:{s:i, s:i}},s:i, s?i, s?b, s:i, s:i, s:i,s?[iiii]  }}\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SourceGeometry\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PAR\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Num\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Den\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"DestSettings\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Geometry\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"AnamorphicMode\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Keep\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ItuPAR\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Modulus\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"MaxWidth\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"MaxHeight\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Crop\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"json unpack failure: %s\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"{s:o, s:o, s:{s:o, s:o}}\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"hb_set_anamorphic_size_json: pack failure: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hb_set_anamorphic_size_json(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__, align 4
  %8 = alloca %struct.TYPE_17__, align 4
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %11 = call i32 @memset(%struct.TYPE_18__* %9, i32 0, i32 48)
  %12 = load i8*, i8** %3, align 8
  %13 = call i32* @hb_value_json(i8* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %16 = call i32 @unpack_i(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %18 = call i32 @unpack_i(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = call i32 @unpack_i(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = call i32 @unpack_i(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = call i32 @unpack_i(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = call i32 @unpack_i(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = call i32 @unpack_i(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = call i32 @unpack_i(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  %40 = call i32 @unpack_i(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 5
  %42 = call i32 @unpack_i(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  %44 = call i32 @unpack_b(i32* %43)
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  %46 = call i32 @unpack_i(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %48 = call i32 @unpack_i(i32* %47)
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %50 = call i32 @unpack_i(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @unpack_i(i32* %53)
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = call i32 @unpack_i(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = call i32 @unpack_i(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = call i32 @unpack_i(i32* %65)
  %67 = call i32 @json_unpack_ex(i32* %14, %struct.TYPE_16__* %5, i32 0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %54, i32 %58, i32 %62, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = call i32 @hb_value_free(i32** %6)
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %1
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @hb_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %73)
  store i8* null, i8** %2, align 8
  br label %103

75:                                               ; preds = %1
  %76 = call i32 @hb_set_anamorphic_size2(%struct.TYPE_17__* %8, %struct.TYPE_18__* %9, %struct.TYPE_17__* %7)
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @hb_value_int(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @hb_value_int(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @hb_value_int(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @hb_value_int(i32 %89)
  %91 = call i32* @json_pack_ex(%struct.TYPE_16__* %5, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  store i32* %91, i32** %6, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %75
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @hb_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 %96)
  store i8* null, i8** %2, align 8
  br label %103

98:                                               ; preds = %75
  %99 = load i32*, i32** %6, align 8
  %100 = call i8* @hb_value_get_json(i32* %99)
  store i8* %100, i8** %10, align 8
  %101 = call i32 @hb_value_free(i32** %6)
  %102 = load i8*, i8** %10, align 8
  store i8* %102, i8** %2, align 8
  br label %103

103:                                              ; preds = %98, %94, %71
  %104 = load i8*, i8** %2, align 8
  ret i8* %104
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32* @hb_value_json(i8*) #1

declare dso_local i32 @json_unpack_ex(i32*, %struct.TYPE_16__*, i32, i8*, i8*, i8*, i32, i8*, i32, i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i8*, i32, i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @unpack_i(i32*) #1

declare dso_local i32 @unpack_b(i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_error(i8*, i32) #1

declare dso_local i32 @hb_set_anamorphic_size2(%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32* @json_pack_ex(%struct.TYPE_16__*, i32, i8*, i8*, i32, i8*, i32, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @hb_value_int(i32) #1

declare dso_local i8* @hb_value_get_json(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
