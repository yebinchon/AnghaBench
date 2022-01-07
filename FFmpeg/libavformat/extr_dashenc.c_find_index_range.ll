; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_find_index_range.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_find_index_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32**, i8*, i32, i32*)* }

@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i32, i32*)* @find_index_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_index_range(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_5__*, i32**, i8*, i32, i32*)*, i32 (%struct.TYPE_5__*, i32**, i8*, i32, i32*)** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @AVIO_FLAG_READ, align 4
  %18 = call i32 %14(%struct.TYPE_5__* %15, i32** %10, i8* %16, i32 %17, i32* null)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %51

22:                                               ; preds = %4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SEEK_SET, align 4
  %26 = call i32 @avio_seek(i32* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = call i32 @ff_format_io_close(%struct.TYPE_5__* %30, i32** %10)
  br label %51

32:                                               ; preds = %22
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %35 = call i32 @avio_read(i32* %33, i32* %34, i32 8)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = call i32 @ff_format_io_close(%struct.TYPE_5__* %36, i32** %10)
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %51

41:                                               ; preds = %32
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  %43 = call i64 @AV_RL32(i32* %42)
  %44 = call i64 @MKTAG(i8 signext 115, i8 signext 105, i8 signext 100, i8 signext 120)
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %51

47:                                               ; preds = %41
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %49 = call i32 @AV_RB32(i32* %48)
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %46, %40, %29, %21
  ret void
}

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @ff_format_io_close(%struct.TYPE_5__*, i32**) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i64 @AV_RL32(i32*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @AV_RB32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
