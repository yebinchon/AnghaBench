; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_udta_sdp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_udta_sdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"a=control:streamid=%d\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"udta\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hnti\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sdp \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @mov_write_udta_sdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_udta_sdp(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca [1000 x i8], align 16
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = bitcast [1000 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 1000, i1 false)
  %12 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = call i32 @ff_sdp_write_media(i8* %12, i32 1000, i32 %17, i32 %20, i32* null, i32* null, i32 0, i32 0, %struct.TYPE_6__* %21)
  %23 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @av_strlcatf(i8* %23, i32 1000, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 24
  %33 = call i32 @avio_wb32(i32* %30, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @ffio_wfourcc(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 16
  %39 = call i32 @avio_wb32(i32* %36, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @ffio_wfourcc(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 8
  %45 = call i32 @avio_wb32(i32* %42, i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @ffio_wfourcc(i32* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @avio_write(i32* %48, i8* %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 24
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_sdp_write_media(i8*, i32, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @avio_wb32(i32*, i32) #2

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #2

declare dso_local i32 @avio_write(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
