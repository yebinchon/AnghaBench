; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_tExtMemBufferCreate.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_tExtMemBufferCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i8*, i64, i64 }
%struct.TYPE_7__ = type { i32, i32*, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@DEFAULT_PAGE_SIZE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tExtMemBufferCreate(%struct.TYPE_9__** %0, i32 %1, i32 %2, i8* %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %10, align 8
  %12 = call i64 @calloc(i32 1, i32 80)
  %13 = inttoptr i64 %12 to %struct.TYPE_9__*
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %14, align 8
  %15 = load i8*, i8** @DEFAULT_PAGE_SIZE, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ALIGN8(i32 %20)
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %21, %25
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 4
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %39, %44
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @strcpy(i32 %53, i8* %54)
  %56 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 5
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %11, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load i8*, i8** @DEFAULT_PAGE_SIZE, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 4, i32* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = call i64 @calloc(i32 4, i32 4)
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32* %73, i32** %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @tColModelCreate(i32 %79, i32 %82, i32 %86)
  %88 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  store i32 %87, i32* %90, align 8
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ALIGN8(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @tColModelCreate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
