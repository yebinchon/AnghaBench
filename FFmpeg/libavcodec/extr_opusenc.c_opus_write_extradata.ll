; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc.c_opus_write_extradata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc.c_opus_write_extradata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"OpusHead\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @opus_write_extradata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opus_write_extradata(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = call i32 @bytestream_put_buffer(i32** %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %8 = call i32 @bytestream_put_byte(i32** %3, i32 1)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @bytestream_put_byte(i32** %3, i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bytestream_put_le16(i32** %3, i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bytestream_put_le32(i32** %3, i32 %19)
  %21 = call i32 @bytestream_put_le16(i32** %3, i32 0)
  %22 = call i32 @bytestream_put_byte(i32** %3, i32 0)
  ret void
}

declare dso_local i32 @bytestream_put_buffer(i32**, i8*, i32) #1

declare dso_local i32 @bytestream_put_byte(i32**, i32) #1

declare dso_local i32 @bytestream_put_le16(i32**, i32) #1

declare dso_local i32 @bytestream_put_le32(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
