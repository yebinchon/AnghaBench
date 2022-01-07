; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_png.c_png_colorspace_set_sRGB.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_png.c_png_colorspace_set_sRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_7__, i32 }

@png_colorspace_set_sRGB.sRGB_XYZ = internal constant %struct.TYPE_7__ { i32 41239, i32 21264, i32 1933, i32 35758, i32 71517, i32 11919, i32 18048, i32 7219, i32 95053 }, align 4
@PNG_COLORSPACE_INVALID = common dso_local global i32 0, align 4
@PNG_sRGB_INTENT_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sRGB\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid sRGB rendering intent\00", align 1
@PNG_COLORSPACE_HAVE_INTENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"inconsistent rendering intents\00", align 1
@PNG_COLORSPACE_FROM_sRGB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"duplicate sRGB information ignored\00", align 1
@PNG_COLORSPACE_HAVE_ENDPOINTS = common dso_local global i32 0, align 4
@sRGB_xy = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"cHRM chunk does not match sRGB\00", align 1
@PNG_CHUNK_ERROR = common dso_local global i32 0, align 4
@PNG_GAMMA_sRGB_INVERSE = common dso_local global i32 0, align 4
@PNG_COLORSPACE_ENDPOINTS_MATCH_sRGB = common dso_local global i32 0, align 4
@PNG_COLORSPACE_HAVE_GAMMA = common dso_local global i32 0, align 4
@PNG_COLORSPACE_MATCHES_sRGB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @png_colorspace_set_sRGB(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PNG_COLORSPACE_INVALID, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %112

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PNG_sRGB_INTENT_LAST, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @png_icc_profile_error(i32 %23, %struct.TYPE_6__* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %112

27:                                               ; preds = %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PNG_COLORSPACE_HAVE_INTENT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @png_icc_profile_error(i32 %41, %struct.TYPE_6__* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 %44, i32* %4, align 4
  br label %112

45:                                               ; preds = %34, %27
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PNG_COLORSPACE_FROM_sRGB, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @png_benign_error(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %112

55:                                               ; preds = %45
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PNG_COLORSPACE_HAVE_ENDPOINTS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = call i32 @png_colorspace_endpoints_match(i32* @sRGB_xy, i32* %64, i32 100)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PNG_CHUNK_ERROR, align 4
  %70 = call i32 @png_chunk_report(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %62, %55
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = load i32, i32* @PNG_GAMMA_sRGB_INVERSE, align 4
  %75 = call i32 @png_colorspace_check_gamma(i32 %72, %struct.TYPE_6__* %73, i32 %74, i32 2)
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @PNG_COLORSPACE_HAVE_INTENT, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @sRGB_xy, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = bitcast %struct.TYPE_7__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 bitcast (%struct.TYPE_7__* @png_colorspace_set_sRGB.sRGB_XYZ to i8*), i64 36, i1 false)
  %90 = load i32, i32* @PNG_COLORSPACE_HAVE_ENDPOINTS, align 4
  %91 = load i32, i32* @PNG_COLORSPACE_ENDPOINTS_MATCH_sRGB, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @PNG_GAMMA_sRGB_INVERSE, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @PNG_COLORSPACE_HAVE_GAMMA, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* @PNG_COLORSPACE_MATCHES_sRGB, align 4
  %106 = load i32, i32* @PNG_COLORSPACE_FROM_sRGB, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  store i32 1, i32* %4, align 4
  br label %112

112:                                              ; preds = %71, %52, %40, %22, %14
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @png_icc_profile_error(i32, %struct.TYPE_6__*, i8*, i32, i8*) #1

declare dso_local i32 @png_benign_error(i32, i8*) #1

declare dso_local i32 @png_colorspace_endpoints_match(i32*, i32*, i32) #1

declare dso_local i32 @png_chunk_report(i32, i8*, i32) #1

declare dso_local i32 @png_colorspace_check_gamma(i32, %struct.TYPE_6__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
