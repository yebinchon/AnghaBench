; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_in.c_vcil_in_free_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_in.c_vcil_in_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_13__*, i32, %struct.TYPE_12__*)*, i64 (%struct.TYPE_13__*, i32, %struct.TYPE_14__*)* }
%struct.TYPE_12__ = type { i32, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32 }

@OMX_VERSION = common dso_local global i32 0, align 4
@OMX_IndexParamPortDefinition = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i64 0, align 8
@OMX_DirInput = common dso_local global i64 0, align 8
@IL_FREE_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcil_in_free_buffer(i32* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %12, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32 24, i32* %25, align 8
  %26 = load i32, i32* @OMX_VERSION, align 4
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64 (%struct.TYPE_13__*, i32, %struct.TYPE_12__*)*, i64 (%struct.TYPE_13__*, i32, %struct.TYPE_12__*)** %34, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %37 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %38 = call i64 %35(%struct.TYPE_13__* %36, i32 %37, %struct.TYPE_12__* %16)
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* @OMX_ErrorNone, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @vc_assert(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OMX_DirInput, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %5
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %14, align 8
  br label %56

52:                                               ; preds = %5
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %14, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %15, align 8
  %60 = load i32*, i32** %10, align 8
  store i32 16, i32* %60, align 4
  %61 = load i32, i32* @IL_FREE_BUFFER, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i64 (%struct.TYPE_13__*, i32, %struct.TYPE_14__*)*, i64 (%struct.TYPE_13__*, i32, %struct.TYPE_14__*)** %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %72 = call i64 %66(%struct.TYPE_13__* %67, i32 %70, %struct.TYPE_14__* %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @OMX_ErrorNone, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %56
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @vcos_free(i32* %81)
  br label %83

83:                                               ; preds = %80, %56
  ret void
}

declare dso_local i32 @vc_assert(i32) #1

declare dso_local i32 @vcos_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
