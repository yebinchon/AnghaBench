; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfenc.c_put_payload_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfenc.c_put_payload_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@ASF_PL_FLAG_KEY_FRAME = common dso_local global i32 0, align 4
@ASF_PAYLOAD_REPLICATED_DATA_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*, i64, i32, i32, i32, i32)* @put_payload_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_payload_header(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %15, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32* %22, i32** %16, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %7
  %31 = load i32, i32* @ASF_PL_FLAG_KEY_FRAME, align 4
  %32 = load i32, i32* %17, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %17, align 4
  br label %34

34:                                               ; preds = %30, %7
  %35 = load i32*, i32** %16, align 8
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @avio_w8(i32* %35, i32 %36)
  %38 = load i32*, i32** %16, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @avio_w8(i32* %38, i32 %41)
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @avio_wl32(i32* %43, i32 %44)
  %46 = load i32*, i32** %16, align 8
  %47 = load i32, i32* @ASF_PAYLOAD_REPLICATED_DATA_LENGTH, align 4
  %48 = call i32 @avio_w8(i32* %46, i32 %47)
  %49 = load i32*, i32** %16, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @avio_wl32(i32* %49, i32 %50)
  %52 = load i32*, i32** %16, align 8
  %53 = load i64, i64* %10, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @avio_wl32(i32* %52, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %34
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @avio_wl16(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %34
  ret void
}

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @avio_wl16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
