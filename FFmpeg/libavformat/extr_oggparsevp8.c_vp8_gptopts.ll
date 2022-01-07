; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevp8.c_vp8_gptopts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevp8.c_vp8_gptopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ogg* }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32 }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*)* @vp8_gptopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp8_gptopts(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ogg*, align 8
  %10 = alloca %struct.ogg_stream*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.ogg*, %struct.ogg** %15, align 8
  store %struct.ogg* %16, %struct.ogg** %9, align 8
  %17 = load %struct.ogg*, %struct.ogg** %9, align 8
  %18 = getelementptr inbounds %struct.ogg, %struct.ogg* %17, i32 0, i32 0
  %19 = load %struct.ogg_stream*, %struct.ogg_stream** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %19, i64 %21
  store %struct.ogg_stream* %22, %struct.ogg_stream** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 30
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 32
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 3
  %35 = and i32 %34, 134217727
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %40 = load %struct.ogg_stream*, %struct.ogg_stream** %10, align 8
  %41 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %4
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %12, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
