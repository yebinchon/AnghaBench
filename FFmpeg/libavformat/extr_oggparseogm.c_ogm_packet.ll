; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseogm.c_ogm_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseogm.c_ogm_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ogg* }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32*, i32, i32, i32, i32 }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @ogm_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogm_packet(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ogg*, %struct.ogg** %11, align 8
  store %struct.ogg* %12, %struct.ogg** %6, align 8
  %13 = load %struct.ogg*, %struct.ogg** %6, align 8
  %14 = getelementptr inbounds %struct.ogg, %struct.ogg* %13, i32 0, i32 0
  %15 = load %struct.ogg_stream*, %struct.ogg_stream** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %15, i64 %17
  store %struct.ogg_stream* %18, %struct.ogg_stream** %7, align 8
  %19 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %20 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %23 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %33 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %34 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %2
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 2
  %41 = shl i32 %40, 1
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 6
  %45 = and i32 %44, 3
  %46 = or i32 %41, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %48 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %3, align 4
  br label %87

55:                                               ; preds = %37
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %59 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %65 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %72, %55
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %9, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 %79, 8
  %81 = shl i32 %78, %80
  %82 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %83 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %68

86:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %53
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
