; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsetheora.c_theora_gptopts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsetheora.c_theora_gptopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.ogg* }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32*)* @theora_gptopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @theora_gptopts(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ogg*, align 8
  %11 = alloca %struct.ogg_stream*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.ogg*, %struct.ogg** %16, align 8
  store %struct.ogg* %17, %struct.ogg** %10, align 8
  %18 = load %struct.ogg*, %struct.ogg** %10, align 8
  %19 = getelementptr inbounds %struct.ogg, %struct.ogg* %18, i32 0, i32 0
  %20 = load %struct.ogg_stream*, %struct.ogg_stream** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %20, i64 %22
  store %struct.ogg_stream* %23, %struct.ogg_stream** %11, align 8
  %24 = load %struct.ogg_stream*, %struct.ogg_stream** %11, align 8
  %25 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %12, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @AV_NOPTS_VALUE, align 4
  store i32 %30, i32* %5, align 4
  br label %70

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %32, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  store i32 %41, i32* %14, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 197121
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %46, %31
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %54 = load %struct.ogg_stream*, %struct.ogg_stream** %11, align 8
  %55 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %29
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
