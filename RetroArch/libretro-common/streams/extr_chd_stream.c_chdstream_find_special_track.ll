; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_chd_stream.c_chdstream_find_special_track.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_chd_stream.c_chdstream_find_special_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@CHDSTREAM_TRACK_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"AUDIO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_4__*)* @chdstream_find_special_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chdstream_find_special_track(i32* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %8, align 4
  br label %12

12:                                               ; preds = %72, %3
  br i1 true, label %13, label %75

13:                                               ; preds = %12
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @chdstream_find_track_number(i32* %14, i32 %15, %struct.TYPE_4__* %9)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @CHDSTREAM_TRACK_LAST, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = bitcast %struct.TYPE_4__* %26 to i8*
  %28 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 12, i1 false)
  store i32 1, i32* %4, align 4
  br label %75

29:                                               ; preds = %22, %18
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = call i32 @chdstream_find_track_number(i32* %36, i32 %37, %struct.TYPE_4__* %38)
  store i32 %39, i32* %4, align 4
  br label %75

40:                                               ; preds = %32, %29
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %13
  %43 = load i32, i32* %6, align 4
  switch i32 %43, label %70 [
    i32 129, label %44
    i32 128, label %54
  ]

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strcmp(i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = bitcast %struct.TYPE_4__* %50 to i8*
  %52 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 12, i1 false)
  store i32 1, i32* %4, align 4
  br label %75

53:                                               ; preds = %44
  br label %71

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strcmp(i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %64, %59, %54
  br label %71

70:                                               ; preds = %42
  br label %71

71:                                               ; preds = %70, %69, %53
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %12

75:                                               ; preds = %25, %35, %49, %12
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @chdstream_find_track_number(i32*, i32, %struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
