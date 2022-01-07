; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libspeexenc.c_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libspeexenc.c_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*)* @encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_frame(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %10, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %18
  %27 = phi i32* [ %24, %18 ], [ null, %25 ]
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32*, i32** %11, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = call i32 @speex_encode_stereo_int(i32* %36, i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  %51 = call i32 @speex_encode_int(i32 %47, i32* %48, i32* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = call i32 @ff_af_queue_add(i32* %57, %struct.TYPE_15__* %58)
  store i32 %59, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %44
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %140

63:                                               ; preds = %44
  br label %88

64:                                               ; preds = %26
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %140

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %79, %70
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  %82 = call i32 @speex_bits_pack(i32* %81, i32 15, i32 5)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %71

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87, %63
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %139

96:                                               ; preds = %88
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = call i32 @speex_bits_nbytes(i32* %102)
  %104 = call i32 @ff_alloc_packet2(%struct.TYPE_16__* %99, %struct.TYPE_14__* %100, i32 %103, i32 0)
  store i32 %104, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %5, align 4
  br label %140

108:                                              ; preds = %96
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @speex_bits_write(i32* %110, i32 %113, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 3
  %120 = call i32 @speex_bits_reset(i32* %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %125, %128
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = call i32 @ff_af_queue_remove(i32* %122, i32 %129, i32* %131, i32* %133)
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load i32*, i32** %9, align 8
  store i32 1, i32* %138, align 4
  store i32 0, i32* %5, align 4
  br label %140

139:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %108, %106, %69, %61
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @speex_encode_stereo_int(i32*, i32, i32*) #1

declare dso_local i32 @speex_encode_int(i32, i32*, i32*) #1

declare dso_local i32 @ff_af_queue_add(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @speex_bits_pack(i32*, i32, i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_16__*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @speex_bits_nbytes(i32*) #1

declare dso_local i32 @speex_bits_write(i32*, i32, i32) #1

declare dso_local i32 @speex_bits_reset(i32*) #1

declare dso_local i32 @ff_af_queue_remove(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
