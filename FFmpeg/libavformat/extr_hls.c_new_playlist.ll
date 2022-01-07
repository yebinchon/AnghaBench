; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_new_playlist.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_new_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { i32, i8*, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.playlist* (%struct.TYPE_3__*, i8*, i8*)* @new_playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.playlist* @new_playlist(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.playlist*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.playlist*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call %struct.playlist* @av_mallocz(i32 32)
  store %struct.playlist* %9, %struct.playlist** %8, align 8
  %10 = load %struct.playlist*, %struct.playlist** %8, align 8
  %11 = icmp ne %struct.playlist* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.playlist* null, %struct.playlist** %4, align 8
  br label %38

13:                                               ; preds = %3
  %14 = load %struct.playlist*, %struct.playlist** %8, align 8
  %15 = getelementptr inbounds %struct.playlist, %struct.playlist* %14, i32 0, i32 4
  %16 = call i32 @reset_packet(i32* %15)
  %17 = load %struct.playlist*, %struct.playlist** %8, align 8
  %18 = getelementptr inbounds %struct.playlist, %struct.playlist* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @ff_make_absolute_url(i32 %19, i32 4, i8* %20, i8* %21)
  %23 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %24 = load %struct.playlist*, %struct.playlist** %8, align 8
  %25 = getelementptr inbounds %struct.playlist, %struct.playlist* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.playlist*, %struct.playlist** %8, align 8
  %27 = getelementptr inbounds %struct.playlist, %struct.playlist* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %29 = load %struct.playlist*, %struct.playlist** %8, align 8
  %30 = getelementptr inbounds %struct.playlist, %struct.playlist* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.playlist*, %struct.playlist** %8, align 8
  %36 = call i32 @dynarray_add(i32* %32, i32* %34, %struct.playlist* %35)
  %37 = load %struct.playlist*, %struct.playlist** %8, align 8
  store %struct.playlist* %37, %struct.playlist** %4, align 8
  br label %38

38:                                               ; preds = %13, %12
  %39 = load %struct.playlist*, %struct.playlist** %4, align 8
  ret %struct.playlist* %39
}

declare dso_local %struct.playlist* @av_mallocz(i32) #1

declare dso_local i32 @reset_packet(i32*) #1

declare dso_local i32 @ff_make_absolute_url(i32, i32, i8*, i8*) #1

declare dso_local i32 @dynarray_add(i32*, i32*, %struct.playlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
