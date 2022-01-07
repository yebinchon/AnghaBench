; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_ReadMovieIntoABuffer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_ReadMovieIntoABuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MovieBufferStruct = type { i32, i8* }

@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, i8* } @ReadMovieIntoABuffer(i32* %0) #0 {
  %2 = alloca %struct.MovieBufferStruct, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i8* @ftell(i32* %6)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @SEEK_END, align 4
  %11 = call i32 @fseek(i32* %9, i32 0, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @ftell(i32* %12)
  %14 = ptrtoint i8* %13 to i32
  %15 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %2, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @rewind(i32* %16)
  %18 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 1, %20
  %22 = trunc i64 %21 to i32
  %23 = call i64 @malloc(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %2, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %2, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.MovieBufferStruct, %struct.MovieBufferStruct* %2, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @fread(i8* %27, i32 1, i32 %29, i32* %30)
  store i64 %31, i64* %5, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SEEK_SET, align 4
  %35 = call i32 @fseek(i32* %32, i32 %33, i32 %34)
  %36 = bitcast %struct.MovieBufferStruct* %2 to { i32, i8* }*
  %37 = load { i32, i8* }, { i32, i8* }* %36, align 8
  ret { i32, i8* } %37
}

declare dso_local i8* @ftell(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
