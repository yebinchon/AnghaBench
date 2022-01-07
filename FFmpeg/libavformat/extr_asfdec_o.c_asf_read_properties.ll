; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_properties.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i8* }
%struct.tm = type { i32 }

@ASF_FLAG_BROADCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"creation_time\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"av_dict_set failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @asf_read_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_properties(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm, align 4
  %9 = alloca %struct.tm*, align 8
  %10 = alloca [64 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @avio_rl64(i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @avio_skip(i32* %19, i32 16)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @avio_skip(i32* %21, i32 8)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @avio_rl64(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ASF_FLAG_BROADCAST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %67, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = sdiv i32 %32, 10000000
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, 11644473600
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = call %struct.tm* @gmtime_r(i32* %7, %struct.tm* %8)
  store %struct.tm* %38, %struct.tm** %9, align 8
  %39 = load %struct.tm*, %struct.tm** %9, align 8
  %40 = icmp ne %struct.tm* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %43 = load %struct.tm*, %struct.tm** %9, align 8
  %44 = call i32 @strftime(i8* %42, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.tm* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %47, align 16
  br label %48

48:                                               ; preds = %46, %41
  br label %51

49:                                               ; preds = %31
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %50, align 16
  br label %51

51:                                               ; preds = %49, %48
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %53 = load i8, i8* %52, align 16
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %59 = call i64 @av_dict_set(i32* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %58, i32 0)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = load i32, i32* @AV_LOG_WARNING, align 4
  %64 = call i32 @av_log(%struct.TYPE_5__* %62, i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %55
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %2
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @avio_rl64(i32* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @avio_rl64(i32* %72)
  %74 = sdiv i32 %73, 10000
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @avio_skip(i32* %77, i32 8)
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @avio_rl64(i32* %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i8* @avio_rl32(i32* %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @avio_skip(i32* %95, i32 4)
  %97 = load i32*, i32** %6, align 8
  %98 = call i8* @avio_rl32(i32* %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @avio_skip(i32* %101, i32 4)
  ret i32 0
}

declare dso_local i32 @avio_rl64(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local %struct.tm* @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i64 @av_dict_set(i32*, i8*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i8* @avio_rl32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
