; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_read_priv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_read_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ID3v2_ENCODING_ISO8859 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PRIV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8*, %struct.TYPE_7__**, i32)* @read_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_priv(i32* %0, i32* %1, i32 %2, i8* %3, %struct.TYPE_7__** %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_7__** %4, %struct.TYPE_7__*** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = call i8* @av_mallocz(i32 24)
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %13, align 8
  %17 = call i8* @av_mallocz(i32 12)
  %18 = bitcast i8* %17 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %14, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %6
  br label %73

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @ID3v2_ENCODING_ISO8859, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = call i64 @decode_str(i32* %26, i32* %27, i32 %28, i32* %30, i32* %9)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %73

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @av_malloc(i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %73

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @avio_read(i32* %48, i32 %51, i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %73

61:                                               ; preds = %44
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %66, align 8
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %72 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %72, align 8
  br label %81

73:                                               ; preds = %60, %43, %33, %24
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %78 = call i32 @free_priv(%struct.TYPE_6__* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = call i32 @av_freep(%struct.TYPE_7__** %13)
  br label %81

81:                                               ; preds = %79, %61
  ret void
}

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i64 @decode_str(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @av_malloc(i32) #1

declare dso_local i32 @avio_read(i32*, i32, i32) #1

declare dso_local i32 @free_priv(%struct.TYPE_6__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
