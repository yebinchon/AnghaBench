; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__initial_pcmoffset.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__initial_pcmoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32*)* @_initial_pcmoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_initial_pcmoffset(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %6, align 8
  store i64 -1, i64* %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %2, %29, %65
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = call i64 @_get_next_page(%struct.TYPE_6__* %17, i32* %5, i32 -1)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %66

21:                                               ; preds = %16
  %22 = call i64 @ogg_page_bos(i32* %5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %66

25:                                               ; preds = %21
  %26 = call i32 @ogg_page_serialno(i32* %5)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %16

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @ogg_stream_pagein(%struct.TYPE_7__* %32, i32* %5)
  br label %34

34:                                               ; preds = %56, %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @ogg_stream_packetout(%struct.TYPE_7__* %36, i32* %10)
  store i32 %37, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @vorbis_packet_blocksize(i32* %43, i32* %10)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, -1
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = add nsw i64 %48, %49
  %51 = ashr i64 %50, 2
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %47, %42
  %55 = load i64, i64* %11, align 8
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %54, %39
  br label %34

57:                                               ; preds = %34
  %58 = call i32 @ogg_page_granulepos(i32* %5)
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = call i32 @ogg_page_granulepos(i32* %5)
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %6, align 8
  %64 = sub nsw i64 %62, %63
  store i64 %64, i64* %6, align 8
  br label %66

65:                                               ; preds = %57
  br label %16

66:                                               ; preds = %60, %24, %20
  %67 = load i64, i64* %6, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i64 0, i64* %6, align 8
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i64, i64* %6, align 8
  ret i64 %71
}

declare dso_local i64 @_get_next_page(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @ogg_page_bos(i32*) #1

declare dso_local i32 @ogg_page_serialno(i32*) #1

declare dso_local i32 @ogg_stream_pagein(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ogg_stream_packetout(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @vorbis_packet_blocksize(i32*, i32*) #1

declare dso_local i32 @ogg_page_granulepos(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
