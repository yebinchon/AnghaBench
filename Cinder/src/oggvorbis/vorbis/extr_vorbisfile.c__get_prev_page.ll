; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__get_prev_page.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__get_prev_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@CHUNKSIZE = common dso_local global i32 0, align 4
@OV_EREAD = common dso_local global i32 0, align 4
@OV_EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @_get_prev_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_prev_page(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  br label %14

14:                                               ; preds = %62, %2
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %63

17:                                               ; preds = %14
  %18 = load i32, i32* @CHUNKSIZE, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @_seek_helper(%struct.TYPE_10__* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %88

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %61, %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %33
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = call i32 @memset(%struct.TYPE_9__* %40, i32 0, i32 8)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = call i32 @_get_next_page(%struct.TYPE_10__* %42, %struct.TYPE_9__* %43, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @OV_EREAD, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @OV_EREAD, align 4
  store i32 %54, i32* %3, align 4
  br label %88

55:                                               ; preds = %39
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59
  br label %33

62:                                               ; preds = %58, %33
  br label %14

63:                                               ; preds = %14
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @_seek_helper(%struct.TYPE_10__* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %88

76:                                               ; preds = %68
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = load i32, i32* @CHUNKSIZE, align 4
  %80 = call i32 @_get_next_page(%struct.TYPE_10__* %77, %struct.TYPE_9__* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @OV_EFAULT, align 4
  store i32 %84, i32* %3, align 4
  br label %88

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %63
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %83, %74, %53, %30
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @_seek_helper(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @_get_next_page(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
