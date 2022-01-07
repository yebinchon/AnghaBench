; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_reader.c_read_yuv4mpeg2_option.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_reader.c_read_yuv4mpeg2_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }

@VC_CONTAINER_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @read_yuv4mpeg2_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_yuv4mpeg2_option(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  br label %14

14:                                               ; preds = %24, %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = call i32 @PEEK_U8(%struct.TYPE_10__* %19)
  %21 = icmp eq i32 %20, 32
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = call i32 @_SKIP_U8(%struct.TYPE_10__* %28)
  br label %14

30:                                               ; preds = %22
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MIN(i32 8, i32 %36)
  %38 = call i32 @PEEK_BYTES(%struct.TYPE_10__* %31, i8* %34, i32 %37)
  store i32 %38, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %71, %30
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %39
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %63, label %53

53:                                               ; preds = %43
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %63, label %70

63:                                               ; preds = %53, %43
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 0, i8* %69, align 1
  br label %74

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %39

74:                                               ; preds = %63, %39
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @VC_CONTAINER_ERROR_NOT_FOUND, align 4
  store i32 %78, i32* %3, align 4
  br label %115

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %81, align 4
  %83 = sub i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @SKIP_BYTES(%struct.TYPE_10__* %84, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %105, %90
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = call i32 @PEEK_U8(%struct.TYPE_10__* %96)
  %98 = icmp ne i32 %97, 32
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = call i32 @PEEK_U8(%struct.TYPE_10__* %100)
  %102 = icmp ne i32 %101, 10
  br label %103

103:                                              ; preds = %99, %95, %91
  %104 = phi i1 [ false, %95 ], [ false, %91 ], [ %102, %99 ]
  br i1 %104, label %105, label %111

105:                                              ; preds = %103
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = call i32 @_SKIP_U8(%struct.TYPE_10__* %109)
  br label %91

111:                                              ; preds = %103
  %112 = load i32, i32* @VC_CONTAINER_ERROR_NOT_FOUND, align 4
  store i32 %112, i32* %3, align 4
  br label %115

113:                                              ; preds = %79
  %114 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %111, %77
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @PEEK_U8(%struct.TYPE_10__*) #1

declare dso_local i32 @_SKIP_U8(%struct.TYPE_10__*) #1

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @SKIP_BYTES(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
