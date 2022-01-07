; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsedirac.c_old_dirac_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsedirac.c_old_dirac_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__**, %struct.ogg* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i8*, i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_DIRAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @old_dirac_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @old_dirac_header(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.ogg*, %struct.ogg** %11, align 8
  store %struct.ogg* %12, %struct.ogg** %6, align 8
  %13 = load %struct.ogg*, %struct.ogg** %6, align 8
  %14 = getelementptr inbounds %struct.ogg, %struct.ogg* %13, i32 0, i32 0
  %15 = load %struct.ogg_stream*, %struct.ogg_stream** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %15, i64 %17
  store %struct.ogg_stream* %18, %struct.ogg_stream** %7, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %21, i64 %23
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %8, align 8
  %26 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %27 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %30 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 75
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

40:                                               ; preds = %2
  %41 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @AV_CODEC_ID_DIRAC, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 12
  %54 = call i32 @AV_RB32(i8* %53)
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  %57 = call i32 @AV_RB32(i8* %56)
  %58 = call i32 @avpriv_set_pts_info(%struct.TYPE_7__* %51, i32 64, i32 %54, i32 %57)
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %40, %39
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @AV_RB32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
