; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_latmenc.c_latm_write_frame_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_latmenc.c_latm_write_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__**, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }

@AOT_ALS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*)* @latm_write_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @latm_write_frame_header(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %15, i64 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %6, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @put_bits(i32* %20, i32 1, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %113, label %33

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @put_bits(i32* %34, i32 1, i32 0)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @put_bits(i32* %36, i32 1, i32 1)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @put_bits(i32* %38, i32 6, i32 0)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @put_bits(i32* %40, i32 4, i32 0)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @put_bits(i32* %42, i32 3, i32 0)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AOT_ALS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %33
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 3
  %57 = sub nsw i32 %52, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = ashr i32 %64, 3
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @avpriv_copy_bits(i32* %58, i32* %67, i32 %68)
  br label %104

70:                                               ; preds = %33
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 3
  %79 = call i32 @avpriv_copy_bits(i32* %71, i32* %74, i32 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %70
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @init_get_bits8(i32* %8, i32* %87, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp sge i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @av_assert0(i32 %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 3
  %100 = call i32 @skip_bits_long(i32* %8, i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @ff_copy_pce_data(i32* %101, i32* %8)
  br label %103

103:                                              ; preds = %84, %70
  br label %104

104:                                              ; preds = %103, %49
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @put_bits(i32* %105, i32 3, i32 0)
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @put_bits(i32* %107, i32 8, i32 255)
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @put_bits(i32* %109, i32 1, i32 0)
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @put_bits(i32* %111, i32 1, i32 0)
  br label %113

113:                                              ; preds = %104, %2
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = srem i32 %123, %120
  store i32 %124, i32* %122, align 8
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @avpriv_copy_bits(i32*, i32*, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @ff_copy_pce_data(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
