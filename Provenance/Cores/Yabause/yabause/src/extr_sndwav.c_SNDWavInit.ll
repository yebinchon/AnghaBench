; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sndwav.c_SNDWavInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sndwav.c_SNDWavInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@wavefilename = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@wavefp = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"scsp.wav\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"WAVE\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fmt \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @SNDWavInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SNDWavInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load i8*, i8** @wavefilename, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i8*, i8** @wavefilename, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** @wavefp, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 -1, i32* %1, align 4
  br label %66

14:                                               ; preds = %9
  br label %20

15:                                               ; preds = %0
  %16 = call i32* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** @wavefp, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -1, i32* %1, align 4
  br label %66

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memcpy(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @memcpy(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %30 = bitcast %struct.TYPE_10__* %2 to i8*
  %31 = load i32*, i32** @wavefp, align 8
  %32 = call i32 @ywrite(%struct.TYPE_13__* %5, i8* %30, i32 1, i32 24, i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 16, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  store i32 2, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  store i32 44100, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 3
  store i32 16, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %45, %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 4
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %51, %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = bitcast %struct.TYPE_11__* %3 to i8*
  %57 = load i32*, i32** @wavefp, align 8
  %58 = call i32 @ywrite(%struct.TYPE_13__* %5, i8* %56, i32 1, i32 32, i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @memcpy(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = bitcast %struct.TYPE_12__* %4 to i8*
  %64 = load i32*, i32** @wavefp, align 8
  %65 = call i32 @ywrite(%struct.TYPE_13__* %5, i8* %63, i32 1, i32 16, i32* %64)
  store i32 0, i32* %1, align 4
  br label %66

66:                                               ; preds = %20, %18, %13
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @ywrite(%struct.TYPE_13__*, i8*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
