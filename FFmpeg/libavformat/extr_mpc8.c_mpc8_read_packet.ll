; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc8.c_mpc8_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc8.c_mpc8_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@TAG_AUDIOPACKET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TAG_STREAMEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @mpc8_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8_read_packet(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  br label %13

13:                                               ; preds = %71, %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @avio_feof(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %77

20:                                               ; preds = %13
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @avio_tell(i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %36, i32* %3, align 4
  br label %79

37:                                               ; preds = %29, %20
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mpc8_get_chunk_header(i32 %40, i32* %7, i64* %9)
  %42 = load i64, i64* %9, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %79

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @TAG_AUDIOPACKET, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @av_get_packet(i32 %52, %struct.TYPE_9__* %53, i64 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %79

60:                                               ; preds = %49
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  store i32 0, i32* %3, align 4
  br label %79

65:                                               ; preds = %45
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @TAG_STREAMEND, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %70, i32* %3, align 4
  br label %79

71:                                               ; preds = %65
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @mpc8_handle_chunk(%struct.TYPE_10__* %72, i32 %73, i64 %74, i64 %75)
  br label %13

77:                                               ; preds = %13
  %78 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %69, %60, %57, %44, %35
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @avio_feof(i32) #1

declare dso_local i64 @avio_tell(i32) #1

declare dso_local i32 @mpc8_get_chunk_header(i32, i32*, i64*) #1

declare dso_local i64 @av_get_packet(i32, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @mpc8_handle_chunk(%struct.TYPE_10__*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
