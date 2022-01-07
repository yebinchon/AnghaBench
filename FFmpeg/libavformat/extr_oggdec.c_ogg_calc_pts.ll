; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_calc_pts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_calc_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.ogg* }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i64, i64, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, i64*)* @ogg_calc_pts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ogg_calc_pts(%struct.TYPE_6__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ogg*, align 8
  %8 = alloca %struct.ogg_stream*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.ogg*, %struct.ogg** %11, align 8
  store %struct.ogg* %12, %struct.ogg** %7, align 8
  %13 = load %struct.ogg*, %struct.ogg** %7, align 8
  %14 = getelementptr inbounds %struct.ogg, %struct.ogg* %13, i32 0, i32 0
  %15 = load %struct.ogg_stream*, %struct.ogg_stream** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %15, i64 %17
  store %struct.ogg_stream* %18, %struct.ogg_stream** %8, align 8
  %19 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %24 = load i64*, i64** %6, align 8
  store i64 %23, i64* %24, align 8
  br label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %27 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %33 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %36 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %37 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %25
  %39 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %40 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i64*, i64** %6, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %49 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %6, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %54 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %55 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %38
  %57 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %58 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %103

61:                                               ; preds = %56
  %62 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %63 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, -1
  br i1 %65, label %66, label %102

66:                                               ; preds = %61
  %67 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %68 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %67, i32 0, i32 3
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = icmp ne %struct.TYPE_5__* %69, null
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %73 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %72, i32 0, i32 3
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %82 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %6, align 8
  %85 = call i8* @ogg_gptopts(%struct.TYPE_6__* %79, i32 %80, i64 %83, i64* %84)
  %86 = ptrtoint i8* %85 to i64
  store i64 %86, i64* %9, align 8
  br label %99

87:                                               ; preds = %71, %66
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %91 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %94 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %93, i32 0, i32 1
  %95 = call i8* @ogg_gptopts(%struct.TYPE_6__* %88, i32 %89, i64 %92, i64* %94)
  %96 = ptrtoint i8* %95 to i64
  %97 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %98 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %87, %78
  %100 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %101 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %100, i32 0, i32 2
  store i64 -1, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %61
  br label %103

103:                                              ; preds = %102, %56
  %104 = load i64, i64* %9, align 8
  ret i64 %104
}

declare dso_local i8* @ogg_gptopts(%struct.TYPE_6__*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
