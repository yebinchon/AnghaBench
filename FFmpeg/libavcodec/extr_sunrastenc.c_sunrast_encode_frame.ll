; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sunrastenc.c_sunrast_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sunrastenc.c_sunrast_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i32*, i64* }

@RT_BYTE_ENCODED = common dso_local global i64 0, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32*)* @sunrast_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunrast_encode_frame(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %10, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ff_alloc_packet2(%struct.TYPE_15__* %15, %struct.TYPE_13__* %16, i32 %19, i32 0)
  store i32 %20, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %80

24:                                               ; preds = %4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bytestream2_init_writer(i32* %26, i32* %29, i32 %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = call i32 @sunrast_image_write_header(%struct.TYPE_15__* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sunrast_image_write_image(%struct.TYPE_15__* %36, i64 %41, i32* %47, i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RT_BYTE_ENCODED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %24
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 16
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @AV_WB32(i32* %63, i32 %66)
  br label %68

68:                                               ; preds = %59, %24
  %69 = load i32*, i32** %9, align 8
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = call i32 @bytestream2_tell_p(i32* %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %68, %22
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_15__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @bytestream2_init_writer(i32*, i32*, i32) #1

declare dso_local i32 @sunrast_image_write_header(%struct.TYPE_15__*) #1

declare dso_local i32 @sunrast_image_write_image(%struct.TYPE_15__*, i64, i32*, i32) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

declare dso_local i32 @bytestream2_tell_p(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
