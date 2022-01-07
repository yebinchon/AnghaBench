; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_h263_rfc2190.c_send_mode_a.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_h263_rfc2190.c_send_mode_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.H263Info = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.H263Info*, i32*, i32, i32, i32)* @send_mode_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_mode_a(%struct.TYPE_6__* %0, %struct.H263Info* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.H263Info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.H263Info* %1, %struct.H263Info** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %13, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @init_put_bits(i32* %14, i64 %20, i32 32)
  %22 = call i32 @put_bits(i32* %14, i32 1, i32 0)
  %23 = call i32 @put_bits(i32* %14, i32 1, i32 0)
  %24 = call i32 @put_bits(i32* %14, i32 3, i32 0)
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @put_bits(i32* %14, i32 3, i32 %25)
  %27 = load %struct.H263Info*, %struct.H263Info** %8, align 8
  %28 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @put_bits(i32* %14, i32 3, i32 %29)
  %31 = load %struct.H263Info*, %struct.H263Info** %8, align 8
  %32 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @put_bits(i32* %14, i32 1, i32 %33)
  %35 = load %struct.H263Info*, %struct.H263Info** %8, align 8
  %36 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @put_bits(i32* %14, i32 1, i32 %37)
  %39 = load %struct.H263Info*, %struct.H263Info** %8, align 8
  %40 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @put_bits(i32* %14, i32 1, i32 %41)
  %43 = load %struct.H263Info*, %struct.H263Info** %8, align 8
  %44 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @put_bits(i32* %14, i32 1, i32 %45)
  %47 = call i32 @put_bits(i32* %14, i32 4, i32 0)
  %48 = call i32 @put_bits(i32* %14, i32 2, i32 0)
  %49 = call i32 @put_bits(i32* %14, i32 3, i32 0)
  %50 = load %struct.H263Info*, %struct.H263Info** %8, align 8
  %51 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @put_bits(i32* %14, i32 8, i32 %52)
  %54 = call i32 @flush_put_bits(i32* %14)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @memcpy(i64 %58, i32* %59, i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @ff_rtp_send_data(%struct.TYPE_6__* %62, i64 %65, i32 %67, i32 %68)
  ret void
}

declare dso_local i32 @init_put_bits(i32*, i64, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @ff_rtp_send_data(%struct.TYPE_6__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
