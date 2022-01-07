; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegenc.c_put_pack_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegenc.c_put_pack_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }

@PACK_START_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32)* @put_pack_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_pack_header(%struct.TYPE_12__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @init_put_bits(%struct.TYPE_10__* %8, i32* %12, i32 128)
  %14 = load i32, i32* @PACK_START_CODE, align 4
  %15 = call i32 @put_bits32(%struct.TYPE_10__* %8, i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 2, i32 1)
  br label %24

22:                                               ; preds = %3
  %23 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 4, i32 2)
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 30
  %27 = and i32 %26, 7
  %28 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 3, i32 %27)
  %29 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 1, i32 1)
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 15
  %32 = and i32 %31, 32767
  %33 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 15, i32 %32)
  %34 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 1, i32 1)
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 32767
  %37 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 15, i32 %36)
  %38 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 1, i32 1)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 9, i32 0)
  br label %45

45:                                               ; preds = %43, %24
  %46 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 1, i32 1)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 22, i32 %49)
  %51 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 1, i32 1)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 1, i32 1)
  %58 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 5, i32 31)
  %59 = call i32 @put_bits(%struct.TYPE_10__* %8, i32 3, i32 0)
  br label %60

60:                                               ; preds = %56, %45
  %61 = call i32 @flush_put_bits(%struct.TYPE_10__* %8)
  %62 = call i32 @put_bits_ptr(%struct.TYPE_10__* %8)
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %62, %64
  ret i32 %65
}

declare dso_local i32 @init_put_bits(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @put_bits32(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @put_bits(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @flush_put_bits(%struct.TYPE_10__*) #1

declare dso_local i32 @put_bits_ptr(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
