; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native_layer_pad.c_dnn_load_layer_pad.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native_layer_pad.c_dnn_load_layer_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i8*, i8** }
%struct.TYPE_5__ = type { i8***, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnn_load_layer_pad(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = call %struct.TYPE_5__* @av_malloc(i32 16)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %68

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @avio_rl32(i32* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 4
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %48, %15
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @avio_rl32(i32* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8***, i8**** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8**, i8*** %30, i64 %32
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  store i8* %27, i8** %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i8* @avio_rl32(i32* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8***, i8**** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8**, i8*** %40, i64 %42
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %37, i8** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 8
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %25
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %22

51:                                               ; preds = %22
  %52 = load i32*, i32** %6, align 8
  %53 = call i8* @avio_rl32(i32* %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %53, i8** %57, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i8* @avio_rl32(i32* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 8
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %66, align 8
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %51, %14
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_5__* @av_malloc(i32) #1

declare dso_local i8* @avio_rl32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
