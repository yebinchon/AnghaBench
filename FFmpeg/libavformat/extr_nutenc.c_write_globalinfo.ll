; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_write_globalinfo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_write_globalinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @write_globalinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_globalinfo(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = call i32 @avio_open_dyn_buf(i32** %8)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %3, align 4
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = call i32 @ff_standardize_creation_time(%struct.TYPE_9__* %22)
  br label %24

24:                                               ; preds = %32, %21
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %30 = call %struct.TYPE_10__* @av_dict_get(i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %28, i32 %29)
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %7, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @add_info(i32* %33, i32 %36, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  br label %24

45:                                               ; preds = %24
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @ff_put_v(i32* %46, i32 0)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @ff_put_v(i32* %48, i32 0)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @ff_put_v(i32* %50, i32 0)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @ff_put_v(i32* %52, i32 0)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @ff_put_v(i32* %54, i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @avio_close_dyn_buf(i32* %57, i32** %9)
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @avio_write(i32* %59, i32* %60, i32 %61)
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @av_free(i32* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %45, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @ff_standardize_creation_time(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @av_dict_get(i32, i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @add_info(i32*, i32, i32) #1

declare dso_local i32 @ff_put_v(i32*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
