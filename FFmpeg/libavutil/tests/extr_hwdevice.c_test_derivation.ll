; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_hwdevice.c_test_derivation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_hwdevice.c_test_derivation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@AV_HWDEVICE_TYPE_NONE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to derive %s -> %s: %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Device derived as type %d has type %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Derivation of %s from itself succeeded but did not return the same device.\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Derivation %s to %s succeeded, but derivation back again failed: %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [94 x i8] c"Derivation %s to %s succeeded, but derivation back again did not return the original device.\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Successfully tested derivation %s -> %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*)* @test_derivation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_derivation(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %10, align 8
  %17 = load i32, i32* @AV_HWDEVICE_TYPE_NONE, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %2, %33, %70, %99
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @av_hwdevice_iterate_types(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @AV_HWDEVICE_TYPE_NONE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %106

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @av_hwdevice_get_type_name(i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = call i32 @av_hwdevice_ctx_create_derived(%struct.TYPE_8__** %8, i32 %28, %struct.TYPE_8__* %29, i32 0)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36, i32 %37)
  br label %18

39:                                               ; preds = %25
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %11, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load i32, i32* @stderr, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  br label %107

56:                                               ; preds = %39
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = icmp ne %struct.TYPE_7__* %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  br label %107

70:                                               ; preds = %62
  %71 = call i32 @av_buffer_unref(%struct.TYPE_8__** %8)
  br label %18

72:                                               ; preds = %56
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = call i32 @av_hwdevice_ctx_create_derived(%struct.TYPE_8__** %9, i32 %75, %struct.TYPE_8__* %76, i32 0)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load i32, i32* @stderr, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i8* %82, i8* %83, i32 %84)
  br label %107

86:                                               ; preds = %72
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.4, i64 0, i64 0), i8* %96, i8* %97)
  br label %107

99:                                               ; preds = %86
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %101, i8* %102)
  %104 = call i32 @av_buffer_unref(%struct.TYPE_8__** %8)
  %105 = call i32 @av_buffer_unref(%struct.TYPE_8__** %9)
  br label %18

106:                                              ; preds = %24
  store i32 0, i32* %3, align 4
  br label %110

107:                                              ; preds = %94, %80, %66, %49
  %108 = call i32 @av_buffer_unref(%struct.TYPE_8__** %8)
  %109 = call i32 @av_buffer_unref(%struct.TYPE_8__** %9)
  store i32 -1, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %106
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @av_hwdevice_iterate_types(i32) #1

declare dso_local i8* @av_hwdevice_get_type_name(i32) #1

declare dso_local i32 @av_hwdevice_ctx_create_derived(%struct.TYPE_8__**, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
