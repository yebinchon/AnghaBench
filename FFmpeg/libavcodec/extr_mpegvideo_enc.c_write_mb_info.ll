; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_write_mb_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_write_mb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@CONFIG_H263_ENCODER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @write_mb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_mb_info(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 7
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = getelementptr inbounds i32, i32* %16, i64 -12
  store i32* %17, i32** %3, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 6
  %20 = call i32 @put_bits_count(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = srem i32 %29, %32
  %34 = mul nsw i32 %26, %33
  %35 = add nsw i32 %23, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %38, %41
  store i32 %42, i32* %6, align 4
  %43 = load i64, i64* @CONFIG_H263_ENCODER, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = call i32 @ff_h263_pred_motion(%struct.TYPE_4__* %46, i32 0, i32 0, i32* %7, i32* %8)
  br label %48

48:                                               ; preds = %45, %1
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @bytestream_put_le32(i32** %3, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bytestream_put_byte(i32** %3, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @bytestream_put_byte(i32** %3, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @bytestream_put_le16(i32** %3, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @bytestream_put_byte(i32** %3, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @bytestream_put_byte(i32** %3, i32 %61)
  %63 = call i32 @bytestream_put_byte(i32** %3, i32 0)
  %64 = call i32 @bytestream_put_byte(i32** %3, i32 0)
  ret void
}

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @ff_h263_pred_motion(%struct.TYPE_4__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @bytestream_put_le32(i32**, i32) #1

declare dso_local i32 @bytestream_put_byte(i32**, i32) #1

declare dso_local i32 @bytestream_put_le16(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
