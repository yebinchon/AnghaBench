; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspSlotDebugAudioSaveWav.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspSlotDebugAudioSaveWav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@scsp = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"WAVE\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fmt \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@debugslot = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScspSlotDebugAudioSaveWav(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2048 x i32], align 16
  %7 = alloca [1024 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca %struct.TYPE_16__, align 4
  %12 = alloca %struct.TYPE_17__, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = bitcast %struct.TYPE_18__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @scsp, i32 0, i32 0), align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %117

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %8, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %117

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memcpy(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memcpy(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %38 = bitcast %struct.TYPE_15__* %10 to i8*
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @ywrite(%struct.TYPE_18__* %14, i8* %38, i32 1, i32 24, i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  store i32 16, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  store i32 2, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  store i32 44100, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  store i32 16, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %52, 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %53, %55
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 4
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %59, %61
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 5
  store i32 %62, i32* %63, align 4
  %64 = bitcast %struct.TYPE_16__* %11 to i8*
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @ywrite(%struct.TYPE_18__* %14, i8* %64, i32 1, i32 32, i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memcpy(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = bitcast %struct.TYPE_17__* %12 to i8*
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @ywrite(%struct.TYPE_18__* %14, i8* %71, i32 1, i32 16, i32* %72)
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @ScspSlotResetDebug(i64 %74)
  br label %76

76:                                               ; preds = %95, %28
  %77 = getelementptr inbounds [2048 x i32], [2048 x i32]* %6, i64 0, i64 0
  %78 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  %79 = call i64 @ScspSlotDebugAudio(i32* %77, i32* %78, i32 512)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %96

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 512
  store i32 %84, i32* %9, align 4
  %85 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  %86 = bitcast i32* %85 to i8*
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @ywrite(%struct.TYPE_18__* %14, i8* %86, i32 2, i32 1024, i32* %87)
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @debugslot, i32 0, i32 0), align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  %93 = icmp sge i32 %92, 441000
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %96

95:                                               ; preds = %91, %82
  br label %76

96:                                               ; preds = %94, %81
  %97 = load i32*, i32** %8, align 8
  %98 = call i64 @ftell(i32* %97)
  store i64 %98, i64* %13, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* @SEEK_SET, align 4
  %101 = call i32 @fseek(i32* %99, i32 16, i32 %100)
  %102 = load i64, i64* %13, align 8
  %103 = sub nsw i64 %102, 4
  store i64 %103, i64* %13, align 8
  %104 = bitcast i64* %13 to i8*
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @ywrite(%struct.TYPE_18__* %14, i8* %104, i32 1, i32 4, i32* %105)
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* @SEEK_SET, align 4
  %109 = call i32 @fseek(i32* %107, i32 60, i32 %108)
  %110 = load i64, i64* %13, align 8
  %111 = sub i64 %110, 56
  store i64 %111, i64* %13, align 8
  %112 = bitcast i64* %13 to i8*
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @ywrite(%struct.TYPE_18__* %14, i8* %112, i32 1, i32 4, i32* %113)
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @fclose(i32* %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %96, %27, %22
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @ywrite(%struct.TYPE_18__*, i8*, i32, i32, i32*) #2

declare dso_local i32 @ScspSlotResetDebug(i64) #2

declare dso_local i64 @ScspSlotDebugAudio(i32*, i32*, i32) #2

declare dso_local i64 @ftell(i32*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
