; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_bprint.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_bprint.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@__const.main.testtime = private unnamed_addr constant %struct.tm { i32 100, i32 11, i32 20 }, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Short text in unlimited buffer: %u/%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Long text in unlimited buffer: %u/%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Long text in limited buffer: %u/%u\0A\00", align 1
@AV_BPRINT_SIZE_AUTOMATIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Short text in automatic buffer: %u/%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Long text in automatic buffer: %u/%u\0A\00", align 1
@AV_BPRINT_SIZE_COUNT_ONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Long text count only buffer: %u/%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"strftime full: %u/%u \22%s\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"strftime truncated: %u/%u \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.tm, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast %struct.tm* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.tm* @__const.main.testtime to i8*), i64 12, i1 false)
  %6 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %7 = call i32 @av_bprint_init(%struct.TYPE_7__* %2, i32 0, i32 %6)
  %8 = call i32 @bprint_pascal(%struct.TYPE_7__* %2, i32 5)
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = call i32 @av_bprint_finalize(%struct.TYPE_7__* %2, i32* null)
  %20 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %21 = call i32 @av_bprint_init(%struct.TYPE_7__* %2, i32 0, i32 %20)
  %22 = call i32 @bprint_pascal(%struct.TYPE_7__* %2, i32 25)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %28)
  %30 = call i32 @av_bprint_finalize(%struct.TYPE_7__* %2, i32* null)
  %31 = call i32 @av_bprint_init(%struct.TYPE_7__* %2, i32 0, i32 2048)
  %32 = call i32 @bprint_pascal(%struct.TYPE_7__* %2, i32 25)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %36, i32 %38)
  %40 = call i32 @av_bprint_finalize(%struct.TYPE_7__* %2, i32* null)
  %41 = load i32, i32* @AV_BPRINT_SIZE_AUTOMATIC, align 4
  %42 = call i32 @av_bprint_init(%struct.TYPE_7__* %2, i32 0, i32 %41)
  %43 = call i32 @bprint_pascal(%struct.TYPE_7__* %2, i32 5)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %47, i32 %49)
  %51 = load i32, i32* @AV_BPRINT_SIZE_AUTOMATIC, align 4
  %52 = call i32 @av_bprint_init(%struct.TYPE_7__* %2, i32 0, i32 %51)
  %53 = call i32 @bprint_pascal(%struct.TYPE_7__* %2, i32 25)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = trunc i64 %56 to i32
  %58 = udiv i32 %57, 8
  %59 = mul i32 %58, 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %59, i32 %61)
  %63 = load i32, i32* @AV_BPRINT_SIZE_COUNT_ONLY, align 4
  %64 = call i32 @av_bprint_init(%struct.TYPE_7__* %2, i32 0, i32 %63)
  %65 = call i32 @bprint_pascal(%struct.TYPE_7__* %2, i32 25)
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %69, i32 %71)
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %74 = call i32 @av_bprint_init_for_buffer(%struct.TYPE_7__* %2, i8* %73, i32 256)
  %75 = call i32 @bprint_pascal(%struct.TYPE_7__* %2, i32 25)
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %77 = call i64 @strlen(i8* %76)
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %78, i32 %80)
  %82 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %83 = call i32 @av_bprint_init(%struct.TYPE_7__* %2, i32 0, i32 %82)
  %84 = call i32 @av_bprint_strftime(%struct.TYPE_7__* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %struct.tm* %4)
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %86 = call i64 @strlen(i8* %85)
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %87, i32 %89, i8* %91)
  %93 = call i32 @av_bprint_finalize(%struct.TYPE_7__* %2, i32* null)
  %94 = call i32 @av_bprint_init(%struct.TYPE_7__* %2, i32 0, i32 8)
  %95 = call i32 @av_bprint_strftime(%struct.TYPE_7__* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %struct.tm* %4)
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %97 = call i64 @strlen(i8* %96)
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %98, i32 %100, i8* %102)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @bprint_pascal(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @av_bprint_init_for_buffer(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32 @av_bprint_strftime(%struct.TYPE_7__*, i8*, %struct.tm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
