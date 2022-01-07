; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_ReadMovieInState.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_ReadMovieInState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.MovieBufferStruct = type { i8, i8* }

@Movie = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@Recording = common dso_local global i64 0, align 8
@Playback = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReadMovieInState(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.MovieBufferStruct, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), align 8
  %7 = load i64, i64* @Recording, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), align 8
  %11 = load i64, i64* @Playback, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 1), align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %13, %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @ftell(i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %3, i32 0, i32 0
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @fread(i8* %19, i32 4, i32 1, i32* %20)
  store i64 %21, i64* %5, align 8
  %22 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %3, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = call i64 @malloc(i8 signext %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %3, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = icmp eq i8* %25, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %52

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %3, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %3, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = sext i8 %33 to i32
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @fread(i8* %31, i32 1, i32 %34, i32* %35)
  store i64 %36, i64* %5, align 8
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SEEK_SET, align 4
  %40 = call i32 @fseek(i32* %37, i32 %38, i32 %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 2), align 8
  %42 = call i32 @rewind(i32 %41)
  %43 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %3, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %3, i32 0, i32 0
  %46 = load i8, i8* %45, align 8
  %47 = sext i8 %46 to i32
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 2), align 8
  %49 = call i32 @fwrite(i8* %44, i32 1, i32 %47, i32 %48)
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 2), align 8
  %51 = call i32 @rewind(i32 %50)
  br label %52

52:                                               ; preds = %28, %29, %13, %9
  ret void
}

declare dso_local i32 @ftell(i32*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @malloc(i8 signext) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @rewind(i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
