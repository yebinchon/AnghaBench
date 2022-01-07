; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_playlist_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_playlist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i8*, i8*, i32, %struct.playlist_entry*, i32*, i32*, i32, i64 }
%struct.playlist_entry = type { i32 }

@LABEL_DISPLAY_MODE_DEFAULT = common dso_local global i32 0, align 4
@PLAYLIST_THUMBNAIL_MODE_DEFAULT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @playlist_init(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.playlist_entry*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.playlist_entry* null, %struct.playlist_entry** %6, align 8
  %8 = call i64 @malloc(i32 80)
  %9 = inttoptr i64 %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %54

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @calloc(i64 %14, i32 4)
  %16 = inttoptr i64 %15 to %struct.playlist_entry*
  store %struct.playlist_entry* %16, %struct.playlist_entry** %6, align 8
  %17 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %18 = icmp ne %struct.playlist_entry* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = call i32 @free(%struct.TYPE_5__* %20)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %54

22:                                               ; preds = %13
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 9
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strdup(i8* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 7
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 6
  store i32* null, i32** %37, align 8
  %38 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  store %struct.playlist_entry* %38, %struct.playlist_entry** %40, align 8
  %41 = load i32, i32* @LABEL_DISPLAY_MODE_DEFAULT, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** @PLAYLIST_THUMBNAIL_MODE_DEFAULT, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @PLAYLIST_THUMBNAIL_MODE_DEFAULT, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @playlist_read_file(%struct.TYPE_5__* %50, i8* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %3, align 8
  br label %54

54:                                               ; preds = %22, %19, %12
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %55
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @playlist_read_file(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
