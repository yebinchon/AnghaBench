; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native_layer_maximum.c_dnn_load_layer_maximum.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native_layer_maximum.c_dnn_load_layer_maximum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8**, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnn_load_layer_maximum(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = call %struct.TYPE_8__* @av_malloc(i32 8)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @avio_rl32(i32* %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %24, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @avio_rl32(i32* %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  store i8* %27, i8** %31, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @avio_rl32(i32* %32)
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 8
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %14, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_8__* @av_malloc(i32) #1

declare dso_local i64 @avio_rl32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
