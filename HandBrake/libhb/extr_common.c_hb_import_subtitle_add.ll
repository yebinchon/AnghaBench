; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_import_subtitle_add.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_import_subtitle_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64*, i64* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__, i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"hb_srt_add: malloc failed\00", align 1
@HB_SUBTITLE_IMPORT_TAG = common dso_local global i32 0, align 4
@TEXTSUB = common dso_local global i32 0, align 4
@IMPORTSRT = common dso_local global i32 0, align 4
@WORK_DECSRTSUB = common dso_local global i32 0, align 4
@WORK_DECSSASUB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"hb_srt_add: unknown language code (%s)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"und\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s [%s]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_import_subtitle_add(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %11, align 8
  %12 = call %struct.TYPE_13__* @calloc(i32 1, i32 48)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %10, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %14 = icmp eq %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 @hb_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %132

17:                                               ; preds = %4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hb_list_count(i32 %20)
  %22 = shl i32 %21, 8
  %23 = load i32, i32* @HB_SUBTITLE_IMPORT_TAG, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @TEXTSUB, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @IMPORTSRT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %17
  %37 = load i32, i32* @WORK_DECSRTSUB, align 4
  br label %40

38:                                               ; preds = %17
  %39 = load i32, i32* @WORK_DECSSASUB, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  store i32 90000, i32* %49, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call %struct.TYPE_12__* @lang_for_code2(i8* %50)
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %11, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %53 = icmp eq %struct.TYPE_12__* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %40
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @hb_log(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = call %struct.TYPE_12__* @lang_for_code2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %11, align 8
  br label %58

58:                                               ; preds = %54, %40
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  br label %75

71:                                               ; preds = %58
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i8* [ %70, %67 ], [ %74, %71 ]
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @hb_subsource_name(i32 %79)
  %81 = call i32 @snprintf(i32 %61, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %76, i8* %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @strcpy(i32 %84, i32 %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = bitcast %struct.TYPE_14__* %90 to i8*
  %93 = bitcast %struct.TYPE_14__* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = icmp ne i64* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %75
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = call i8* @strdup(i64* %108)
  %110 = bitcast i8* %109 to i64*
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  store i64* %110, i64** %113, align 8
  br label %118

114:                                              ; preds = %98, %75
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  store i64* null, i64** %117, align 8
  br label %118

118:                                              ; preds = %114, %105
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = call i8* @strdup(i64* %121)
  %123 = bitcast i8* %122 to i64*
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  store i64* %123, i64** %126, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %131 = call i32 @hb_list_add(i32 %129, %struct.TYPE_13__* %130)
  store i32 1, i32* %5, align 4
  br label %132

132:                                              ; preds = %118, %15
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_12__* @lang_for_code2(i8*) #1

declare dso_local i32 @hb_log(i8*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @hb_subsource_name(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @strdup(i64*) #1

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
