; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_hscale.c_ff_init_desc_chscale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_hscale.c_ff_init_desc_chscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32, i32, i32* }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@chr_h_scale = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_init_desc_chscale(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = call %struct.TYPE_10__* @av_malloc(i32 24)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %8, align 4
  br label %63

23:                                               ; preds = %7
  %24 = load i32*, i32** %12, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 4
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @isALPHA(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %23
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @isALPHA(i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %44, %23
  %51 = phi i1 [ false, %23 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32* @chr_h_scale, i32** %62, align 8
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %50, %20
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_10__* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @isALPHA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
