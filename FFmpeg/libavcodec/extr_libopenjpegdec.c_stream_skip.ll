; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopenjpegdec.c_stream_skip.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopenjpegdec.c_stream_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*)* @stream_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stream_skip(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i64 -1, i64* %3, align 8
  br label %66

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 0, %28
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %25, %18
  br label %57

31:                                               ; preds = %2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i64 -1, i64* %3, align 8
  br label %66

40:                                               ; preds = %31
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i64, i64* %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp sgt i64 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %53, %40
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i64, i64* %4, align 8
  %59 = trunc i64 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i64, i64* %4, align 8
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %57, %39, %17
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
