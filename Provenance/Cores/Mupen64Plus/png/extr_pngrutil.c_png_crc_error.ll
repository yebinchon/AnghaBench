; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_crc_error.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_crc_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32 }

@PNG_FLAG_CRC_ANCILLARY_MASK = common dso_local global i32 0, align 4
@PNG_FLAG_CRC_ANCILLARY_USE = common dso_local global i32 0, align 4
@PNG_FLAG_CRC_ANCILLARY_NOWARN = common dso_local global i32 0, align 4
@PNG_FLAG_CRC_CRITICAL_IGNORE = common dso_local global i32 0, align 4
@PNG_IO_CHUNK_CRC = common dso_local global i32 0, align 4
@PNG_IO_READING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @png_crc_error(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @PNG_CHUNK_ANCILLARY(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PNG_FLAG_CRC_ANCILLARY_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @PNG_FLAG_CRC_ANCILLARY_USE, align 4
  %19 = load i32, i32* @PNG_FLAG_CRC_ANCILLARY_NOWARN, align 4
  %20 = or i32 %18, %19
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %12
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PNG_FLAG_CRC_CRITICAL_IGNORE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %24
  br label %33

33:                                               ; preds = %32, %23
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %36 = call i32 @png_read_data(%struct.TYPE_4__* %34, i32* %35, i32 4)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %41 = call i64 @png_get_uint_32(i32* %40)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @PNG_CHUNK_ANCILLARY(i32) #1

declare dso_local i32 @png_read_data(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @png_get_uint_32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
