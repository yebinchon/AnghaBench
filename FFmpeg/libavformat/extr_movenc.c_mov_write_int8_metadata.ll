; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_int8_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_int8_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i8*, i8*, i32)* @mov_write_int8_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_int8_metadata(%struct.TYPE_5__* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %12, align 8
  %15 = load i32, i32* %11, align 4
  %16 = add nsw i32 24, %15
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %64

23:                                               ; preds = %19, %5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = call %struct.TYPE_6__* @av_dict_get(i32 %26, i8* %27, i32* null, i32 0)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %12, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %64

31:                                               ; preds = %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @atoi(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @avio_wb32(i32* %36, i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @ffio_wfourcc(i32* %39, i8* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sub nsw i32 %43, 8
  %45 = call i32 @avio_wb32(i32* %42, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @ffio_wfourcc(i32* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @avio_wb32(i32* %48, i32 21)
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @avio_wb32(i32* %50, i32 0)
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %58

54:                                               ; preds = %31
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @avio_wb32(i32* %55, i32 %56)
  br label %62

58:                                               ; preds = %31
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @avio_w8(i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %30, %22
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_6__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
