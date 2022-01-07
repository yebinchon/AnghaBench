; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__get_prev_page_serial.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__get_prev_page_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@CHUNKSIZE = common dso_local global i32 0, align 4
@OV_EREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64*, i32, i32*, i32*)* @_get_prev_page_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_prev_page_serial(%struct.TYPE_5__* %0, i64* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %14, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  br label %24

24:                                               ; preds = %87, %5
  %25 = load i32, i32* %17, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %88

27:                                               ; preds = %24
  %28 = load i32, i32* @CHUNKSIZE, align 4
  %29 = load i32, i32* %13, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @_seek_helper(%struct.TYPE_5__* %35, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %6, align 4
  br label %99

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %86, %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %43
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %51, %54
  %56 = call i32 @_get_next_page(%struct.TYPE_5__* %50, i32* %12, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @OV_EREAD, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @OV_EREAD, align 4
  store i32 %61, i32* %6, align 4
  br label %99

62:                                               ; preds = %49
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %87

66:                                               ; preds = %62
  %67 = call i32 @ogg_page_serialno(i32* %12)
  store i32 %67, i32* %18, align 4
  %68 = call i32 @ogg_page_granulepos(i32* %12)
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %66
  %79 = load i32, i32* %18, align 4
  %80 = load i64*, i64** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @_lookup_serialno(i32 %79, i64* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  store i32 -1, i32* %16, align 4
  br label %85

85:                                               ; preds = %84, %78
  br label %86

86:                                               ; preds = %85
  br label %43

87:                                               ; preds = %65, %43
  br label %24

88:                                               ; preds = %24
  %89 = load i32, i32* %16, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %6, align 4
  br label %99

93:                                               ; preds = %88
  %94 = load i32, i32* %18, align 4
  %95 = load i32*, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i32*, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %93, %91, %60, %40
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @_seek_helper(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @_get_next_page(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @ogg_page_serialno(i32*) #1

declare dso_local i32 @ogg_page_granulepos(i32*) #1

declare dso_local i32 @_lookup_serialno(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
