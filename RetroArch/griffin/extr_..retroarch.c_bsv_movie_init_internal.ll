; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_bsv_movie_init_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_bsv_movie_init_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64, i32 }

@RARCH_MOVIE_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*, i32)* @bsv_movie_init_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @bsv_movie_init_internal(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* null, i64** %6, align 8
  %8 = call i64 @calloc(i32 1, i32 24)
  %9 = inttoptr i64 %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %53

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @RARCH_MOVIE_PLAYBACK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @bsv_movie_init_playback(%struct.TYPE_6__* %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %50

23:                                               ; preds = %17
  br label %31

24:                                               ; preds = %13
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @bsv_movie_init_record(%struct.TYPE_6__* %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %50

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %23
  %32 = call i64 @calloc(i32 1048576, i32 8)
  %33 = inttoptr i64 %32 to i64*
  store i64* %33, i64** %6, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %50

36:                                               ; preds = %31
  %37 = load i64*, i64** %6, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i64* %37, i64** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %42, i64* %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 1048575, i32* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %3, align 8
  br label %53

50:                                               ; preds = %35, %29, %22
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = call i32 @bsv_movie_free(%struct.TYPE_6__* %51)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %53

53:                                               ; preds = %50, %36, %12
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %54
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @bsv_movie_init_playback(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @bsv_movie_init_record(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @bsv_movie_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
