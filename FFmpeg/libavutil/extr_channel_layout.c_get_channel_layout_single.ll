; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_channel_layout.c_get_channel_layout_single.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_channel_layout.c_get_channel_layout_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@channel_layout_map = common dso_local global %struct.TYPE_4__* null, align 8
@channel_names = common dso_local global %struct.TYPE_4__* null, align 8
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @get_channel_layout_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_channel_layout_single(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %43, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @channel_layout_map, align 8
  %12 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_4__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %9
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @channel_layout_map, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @strlen(i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %14
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @channel_layout_map, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @memcmp(i64 %30, i8* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %24
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @channel_layout_map, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %3, align 4
  br label %129

42:                                               ; preds = %24, %14
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %9

46:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %85, %46
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @channel_names, align 8
  %50 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_4__* %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %47
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @channel_names, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %52
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @channel_names, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @strlen(i64 %66)
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %60
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @channel_names, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @memcmp(i64 %76, i8* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %6, align 4
  %83 = shl i32 1, %82
  store i32 %83, i32* %3, align 4
  br label %129

84:                                               ; preds = %70, %60, %52
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %47

88:                                               ; preds = %47
  store i64 0, i64* @errno, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @strtol(i8* %89, i8** %7, i32 10)
  store i32 %90, i32* %6, align 4
  %91 = load i64, i64* @errno, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %111, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8*, i8** %4, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %93
  %104 = load i8*, i8** %7, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 99
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @av_get_default_channel_layout(i32 %109)
  store i32 %110, i32* %3, align 4
  br label %129

111:                                              ; preds = %103, %93, %88
  store i64 0, i64* @errno, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 @strtoll(i8* %112, i8** %7, i32 0)
  store i32 %113, i32* %8, align 4
  %114 = load i64, i64* @errno, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %111
  %117 = load i8*, i8** %7, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp eq i64 %121, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @FFMAX(i32 %126, i32 0)
  store i32 %127, i32* %3, align 4
  br label %129

128:                                              ; preds = %116, %111
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %125, %108, %81, %35
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_4__*) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @memcmp(i64, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @av_get_default_channel_layout(i32) #1

declare dso_local i32 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
