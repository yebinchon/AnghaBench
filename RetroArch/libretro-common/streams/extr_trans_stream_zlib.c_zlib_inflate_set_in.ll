; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_trans_stream_zlib.c_zlib_inflate_set_in.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_trans_stream_zlib.c_zlib_inflate_set_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib_trans_stream = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @zlib_inflate_set_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zlib_inflate_set_in(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zlib_trans_stream*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.zlib_trans_stream*
  store %struct.zlib_trans_stream* %9, %struct.zlib_trans_stream** %7, align 8
  %10 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %7, align 8
  %11 = icmp ne %struct.zlib_trans_stream* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %35

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %7, align 8
  %16 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32* %14, i32** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %7, align 8
  %20 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %7, align 8
  %23 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %13
  %27 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %7, align 8
  %28 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %27, i32 0, i32 2
  %29 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %7, align 8
  %30 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @inflateInit2(%struct.TYPE_2__* %28, i32 %31)
  %33 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %7, align 8
  %34 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %12, %26, %13
  ret void
}

declare dso_local i32 @inflateInit2(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
