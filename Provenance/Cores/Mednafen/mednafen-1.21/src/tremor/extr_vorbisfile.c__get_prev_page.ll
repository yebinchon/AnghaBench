; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c__get_prev_page.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c__get_prev_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@CHUNKSIZE = common dso_local global i32 0, align 4
@OV_EREAD = common dso_local global i32 0, align 4
@OV_EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, %struct.TYPE_9__*)* @_get_prev_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_prev_page(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  br label %12

12:                                               ; preds = %60, %3
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load i32, i32* @CHUNKSIZE, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @_seek_helper(%struct.TYPE_10__* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %86

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %59, %30
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = call i32 @memset(%struct.TYPE_9__* %38, i32 0, i32 8)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  %47 = call i32 @_get_next_page(%struct.TYPE_10__* %40, %struct.TYPE_9__* %41, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @OV_EREAD, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* @OV_EREAD, align 4
  store i32 %52, i32* %4, align 4
  br label %86

53:                                               ; preds = %37
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %57
  br label %31

60:                                               ; preds = %56, %31
  br label %12

61:                                               ; preds = %12
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %61
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @_seek_helper(%struct.TYPE_10__* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %86

74:                                               ; preds = %66
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = load i32, i32* @CHUNKSIZE, align 4
  %78 = call i32 @_get_next_page(%struct.TYPE_10__* %75, %struct.TYPE_9__* %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @OV_EFAULT, align 4
  store i32 %82, i32* %4, align 4
  br label %86

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %61
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %81, %72, %51, %28
  %87 = load i32, i32* %4, align 4
  ret i32 %87
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
