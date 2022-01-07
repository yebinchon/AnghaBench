; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_write_major_sync.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_write_major_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@SYNC_MAJOR = common dso_local global i32 0, align 4
@AV_CODEC_ID_MLP = common dso_local global i64 0, align 8
@SYNC_MLP = common dso_local global i32 0, align 4
@AV_CODEC_ID_TRUEHD = common dso_local global i64 0, align 8
@SYNC_TRUEHD = common dso_local global i32 0, align 4
@MAJOR_SYNC_INFO_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32)* @write_major_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_major_sync(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @init_put_bits(i32* %7, i32* %8, i32 %9)
  %11 = load i32, i32* @SYNC_MAJOR, align 4
  %12 = call i32 @put_bits(i32* %7, i32 24, i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AV_CODEC_ID_MLP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %3
  %21 = load i32, i32* @SYNC_MLP, align 4
  %22 = call i32 @put_bits(i32* %7, i32 8, i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @put_bits(i32* %7, i32 4, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @put_bits(i32* %7, i32 4, i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @put_bits(i32* %7, i32 4, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @put_bits(i32* %7, i32 4, i32 %45)
  %47 = call i32 @put_bits(i32* %7, i32 4, i32 0)
  %48 = call i32 @put_bits(i32* %7, i32 4, i32 0)
  %49 = call i32 @put_bits(i32* %7, i32 3, i32 0)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @put_bits(i32* %7, i32 5, i32 %52)
  br label %93

54:                                               ; preds = %3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 13
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AV_CODEC_ID_TRUEHD, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %54
  %63 = load i32, i32* @SYNC_TRUEHD, align 4
  %64 = call i32 @put_bits(i32* %7, i32 8, i32 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @put_bits(i32* %7, i32 4, i32 %69)
  %71 = call i32 @put_bits(i32* %7, i32 4, i32 0)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @put_bits(i32* %7, i32 2, i32 %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @put_bits(i32* %7, i32 2, i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @put_bits(i32* %7, i32 5, i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @put_bits(i32* %7, i32 2, i32 %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @put_bits(i32* %7, i32 13, i32 %90)
  br label %92

92:                                               ; preds = %62, %54
  br label %93

93:                                               ; preds = %92, %20
  %94 = load i32, i32* @MAJOR_SYNC_INFO_SIGNATURE, align 4
  %95 = call i32 @put_bits(i32* %7, i32 16, i32 %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @put_bits(i32* %7, i32 16, i32 %98)
  %100 = call i32 @put_bits(i32* %7, i32 16, i32 0)
  %101 = call i32 @put_bits(i32* %7, i32 1, i32 1)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @put_bits(i32* %7, i32 15, i32 %104)
  %106 = call i32 @put_bits(i32* %7, i32 4, i32 1)
  %107 = call i32 @put_bits(i32* %7, i32 4, i32 1)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @put_bits(i32* %7, i32 8, i32 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @put_bits(i32* %7, i32 5, i32 %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @put_bits(i32* %7, i32 5, i32 %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 11
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @put_bits(i32* %7, i32 6, i32 %122)
  %124 = call i32 @put_bits(i32* %7, i32 3, i32 0)
  %125 = call i32 @put_bits(i32* %7, i32 10, i32 0)
  %126 = call i32 @put_bits(i32* %7, i32 3, i32 0)
  %127 = call i32 @put_bits(i32* %7, i32 16, i32 32896)
  %128 = call i32 @put_bits(i32* %7, i32 7, i32 0)
  %129 = call i32 @put_bits(i32* %7, i32 4, i32 0)
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 12
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @put_bits(i32* %7, i32 5, i32 %132)
  %134 = call i32 @flush_put_bits(i32* %7)
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 26
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @ff_mlp_checksum16(i32* %137, i32 26)
  %139 = call i32 @AV_WL16(i32* %136, i32 %138)
  ret void
}

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @AV_WL16(i32*, i32) #1

declare dso_local i32 @ff_mlp_checksum16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
