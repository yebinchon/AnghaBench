; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_packet_queue_get.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_packet_queue_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_9__*, i32, i32*)* @packet_queue_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_queue_get(%struct.TYPE_7__* %0, %struct.TYPE_9__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @SDL_LockMutex(i32 %13)
  br label %15

15:                                               ; preds = %94, %4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 -1, i32* %10, align 4
  br label %95

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %9, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %81

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %37, %27
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 32
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = bitcast %struct.TYPE_9__* %66 to i8*
  %70 = bitcast %struct.TYPE_9__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false)
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %40
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %40
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = call i32 @av_free(%struct.TYPE_8__* %79)
  store i32 1, i32* %10, align 4
  br label %95

81:                                               ; preds = %21
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  br label %95

85:                                               ; preds = %81
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @SDL_CondWait(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93
  br label %15

95:                                               ; preds = %84, %78, %20
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @SDL_UnlockMutex(i32 %98)
  %100 = load i32, i32* %10, align 4
  ret i32 %100
}

declare dso_local i32 @SDL_LockMutex(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_free(%struct.TYPE_8__*) #1

declare dso_local i32 @SDL_CondWait(i32, i32) #1

declare dso_local i32 @SDL_UnlockMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
