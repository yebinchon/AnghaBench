; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_iff.c_get_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_iff.c_get_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32)* @get_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_metadata(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = add i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = add i32 %14, 1
  %16 = call i64* @av_malloc(i32 %15)
  br label %17

17:                                               ; preds = %13, %12
  %18 = phi i64* [ null, %12 ], [ %16, %13 ]
  store i64* %18, i64** %8, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %4, align 4
  br label %49

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64*, i64** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @avio_read(i32 %27, i64* %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i64*, i64** %8, align 8
  %35 = call i32 @av_free(i64* %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %24
  %39 = load i64*, i64** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %6, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %48 = call i32 @av_dict_set(i32* %44, i8* %45, i64* %46, i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %38, %33, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_read(i32, i64*, i32) #1

declare dso_local i32 @av_free(i64*) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
