; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_parse_packet_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_parse_packet_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @parse_packet_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_packet_header(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store i32* %7, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @skip_bits(i32* %8, i32 4)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @get_bits1(i32* %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  br label %14

14:                                               ; preds = %21, %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @get_bits(i32* %15, i32 6)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 63
  br i1 %23, label %14, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @get_bits(i32* %25, i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @get_bits_left(i32* %32)
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  br label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  ret i32 %40
}

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i64 @get_bits_left(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
