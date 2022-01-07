; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_h263_rfc2190.c_send_mode_b.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_h263_rfc2190.c_send_mode_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.H263Info = type { i32, i32, i32, i32, i32 }
%struct.H263State = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.H263Info*, %struct.H263State*, i32*, i32, i32, i32, i32)* @send_mode_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_mode_b(%struct.TYPE_6__* %0, %struct.H263Info* %1, %struct.H263State* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.H263Info*, align 8
  %11 = alloca %struct.H263State*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store %struct.H263Info* %1, %struct.H263Info** %10, align 8
  store %struct.H263State* %2, %struct.H263State** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %17, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @init_put_bits(i32* %18, i64 %24, i32 64)
  %26 = call i32 @put_bits(i32* %18, i32 1, i32 1)
  %27 = call i32 @put_bits(i32* %18, i32 1, i32 0)
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @put_bits(i32* %18, i32 3, i32 %28)
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @put_bits(i32* %18, i32 3, i32 %30)
  %32 = load %struct.H263Info*, %struct.H263Info** %10, align 8
  %33 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @put_bits(i32* %18, i32 3, i32 %34)
  %36 = load %struct.H263State*, %struct.H263State** %11, align 8
  %37 = getelementptr inbounds %struct.H263State, %struct.H263State* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @put_bits(i32* %18, i32 5, i32 %38)
  %40 = load %struct.H263State*, %struct.H263State** %11, align 8
  %41 = getelementptr inbounds %struct.H263State, %struct.H263State* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @put_bits(i32* %18, i32 5, i32 %42)
  %44 = load %struct.H263State*, %struct.H263State** %11, align 8
  %45 = getelementptr inbounds %struct.H263State, %struct.H263State* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @put_bits(i32* %18, i32 9, i32 %46)
  %48 = call i32 @put_bits(i32* %18, i32 2, i32 0)
  %49 = load %struct.H263Info*, %struct.H263Info** %10, align 8
  %50 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @put_bits(i32* %18, i32 1, i32 %51)
  %53 = load %struct.H263Info*, %struct.H263Info** %10, align 8
  %54 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @put_bits(i32* %18, i32 1, i32 %55)
  %57 = load %struct.H263Info*, %struct.H263Info** %10, align 8
  %58 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @put_bits(i32* %18, i32 1, i32 %59)
  %61 = load %struct.H263Info*, %struct.H263Info** %10, align 8
  %62 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @put_bits(i32* %18, i32 1, i32 %63)
  %65 = load %struct.H263State*, %struct.H263State** %11, align 8
  %66 = getelementptr inbounds %struct.H263State, %struct.H263State* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @put_bits(i32* %18, i32 7, i32 %67)
  %69 = load %struct.H263State*, %struct.H263State** %11, align 8
  %70 = getelementptr inbounds %struct.H263State, %struct.H263State* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @put_bits(i32* %18, i32 7, i32 %71)
  %73 = load %struct.H263State*, %struct.H263State** %11, align 8
  %74 = getelementptr inbounds %struct.H263State, %struct.H263State* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @put_bits(i32* %18, i32 7, i32 %75)
  %77 = load %struct.H263State*, %struct.H263State** %11, align 8
  %78 = getelementptr inbounds %struct.H263State, %struct.H263State* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @put_bits(i32* %18, i32 7, i32 %79)
  %81 = call i32 @flush_put_bits(i32* %18)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @memcpy(i64 %85, i32* %86, i32 %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 8
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @ff_rtp_send_data(%struct.TYPE_6__* %89, i64 %92, i32 %94, i32 %95)
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
