; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_SaveMovieInState.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_SaveMovieInState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.MovieBufferStruct = type { i32, i32* }

@SEEK_END = common dso_local global i32 0, align 4
@Movie = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@Recording = common dso_local global i64 0, align 8
@Playback = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SaveMovieInState(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.MovieBufferStruct, align 8
  %6 = alloca %struct.MovieBufferStruct, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @SEEK_END, align 4
  %9 = call i32 @fseek(i32* %7, i32 0, i32 %8)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), align 8
  %11 = load i64, i64* @Recording, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), align 8
  %15 = load i64, i64* @Playback, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13, %2
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 1), align 8
  %19 = call { i32, i32* } @ReadMovieIntoABuffer(i32 %18)
  %20 = bitcast %struct.MovieBufferStruct* %6 to { i32, i32* }*
  %21 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %20, i32 0, i32 0
  %22 = extractvalue { i32, i32* } %19, 0
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %20, i32 0, i32 1
  %24 = extractvalue { i32, i32* } %19, 1
  store i32* %24, i32** %23, align 8
  %25 = bitcast %struct.MovieBufferStruct* %5 to i8*
  %26 = bitcast %struct.MovieBufferStruct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %5, i32 0, i32 0
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @fwrite(i32* %27, i32 4, i32 1, i32* %28)
  %30 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %5, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @fwrite(i32* %31, i32 %33, i32 1, i32* %34)
  br label %36

36:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local { i32, i32* } @ReadMovieIntoABuffer(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
