; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_in.c_vcil_in_use_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_in.c_vcil_in_use_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_12__*, i32**, i32, i32, i32, i32*)*, i64 (%struct.TYPE_12__*, i32, %struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i32, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_15__, i32*, i32 }
%struct.TYPE_15__ = type { i32*, i32* }

@.str = private unnamed_addr constant [20 x i8] c"vcin mapping buffer\00", align 1
@OMX_ErrorInsufficientResources = common dso_local global i64 0, align 8
@IL_USE_BUFFER = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i64 0, align 8
@OMX_VERSION = common dso_local global i32 0, align 4
@OMX_IndexParamPortDefinition = common dso_local global i32 0, align 4
@OMX_DirInput = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcil_in_use_buffer(i32* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %12, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %13, align 8
  %25 = load i32*, i32** %10, align 8
  store i32 40, i32* %25, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @vcos_malloc_aligned(i32 %28, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %5
  %33 = load i64, i64* @OMX_ErrorInsufficientResources, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %107

36:                                               ; preds = %5
  %37 = load i32, i32* @IL_USE_BUFFER, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64 (%struct.TYPE_12__*, i32**, i32, i32, i32, i32*)*, i64 (%struct.TYPE_12__*, i32**, i32, i32, i32, i32*)** %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = call i64 %42(%struct.TYPE_12__* %43, i32** %15, i32 %46, i32 %49, i32 %52, i32* %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OMX_ErrorNone, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %104

62:                                               ; preds = %36
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32 24, i32* %63, align 8
  %64 = load i32, i32* @OMX_VERSION, align 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i64 (%struct.TYPE_12__*, i32, %struct.TYPE_11__*)*, i64 (%struct.TYPE_12__*, i32, %struct.TYPE_11__*)** %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %75 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %76 = call i64 %73(%struct.TYPE_12__* %74, i32 %75, %struct.TYPE_11__* %16)
  store i64 %76, i64* %17, align 8
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* @OMX_ErrorNone, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @vc_assert(i32 %80)
  %82 = load i32*, i32** %15, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @memcpy(%struct.TYPE_15__* %86, i32* %87, i32 4)
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @OMX_DirInput, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %62
  %94 = load i32*, i32** %15, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  store i32* %94, i32** %97, align 8
  br label %103

98:                                               ; preds = %62
  %99 = load i32*, i32** %15, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i32* %99, i32** %102, align 8
  br label %103

103:                                              ; preds = %98, %93
  br label %107

104:                                              ; preds = %36
  %105 = load i32*, i32** %14, align 8
  %106 = call i32 @vcos_free(i32* %105)
  br label %107

107:                                              ; preds = %32, %104, %103
  ret void
}

declare dso_local i32* @vcos_malloc_aligned(i32, i32, i8*) #1

declare dso_local i32 @vc_assert(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @vcos_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
