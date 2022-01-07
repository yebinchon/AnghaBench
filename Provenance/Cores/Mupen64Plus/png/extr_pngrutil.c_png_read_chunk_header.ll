; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_read_chunk_header.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_read_chunk_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Reading %lx chunk, length = %lu\00", align 1
@PNG_IO_CHUNK_DATA = common dso_local global i8* null, align 8
@PNG_IO_CHUNK_HDR = common dso_local global i8* null, align 8
@PNG_IO_READING = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @png_read_chunk_header(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca [8 x i32], align 16
  %4 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %7 = call i32 @png_read_data(%struct.TYPE_8__* %5, i32* %6, i32 8)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %10 = call i64 @png_get_uint_31(%struct.TYPE_8__* %8, i32* %9)
  store i64 %10, i64* %4, align 8
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = call i64 @PNG_CHUNK_FROM_STRING(i32* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @png_debug2(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = call i32 @png_reset_crc(%struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = call i32 @png_calculate_crc(%struct.TYPE_8__* %23, i32* %25, i32 4)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @png_check_chunk_name(%struct.TYPE_8__* %27, i64 %30)
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

declare dso_local i32 @png_read_data(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i64 @png_get_uint_31(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @PNG_CHUNK_FROM_STRING(i32*) #1

declare dso_local i32 @png_debug2(i32, i8*, i64, i64) #1

declare dso_local i32 @png_reset_crc(%struct.TYPE_8__*) #1

declare dso_local i32 @png_calculate_crc(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @png_check_chunk_name(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
