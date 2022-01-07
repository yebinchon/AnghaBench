; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_allformats.c_av_format_init_next.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_allformats.c_av_format_init_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@avpriv_register_devices_mutex = common dso_local global i32 0, align 4
@muxer_list = common dso_local global i64* null, align 8
@outdev_list = common dso_local global i64* null, align 8
@demuxer_list = common dso_local global i64* null, align 8
@indev_list = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @av_format_init_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @av_format_init_next() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %1, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  %9 = call i32 @ff_mutex_lock(i32* @avpriv_register_devices_mutex)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %27, %0
  %11 = load i64*, i64** @muxer_list, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %2, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %10
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %24, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %1, align 8
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load i64*, i64** @outdev_list, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i64*, i64** @outdev_list, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %2, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %48, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %1, align 8
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %34

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %30
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %73, %55
  %57 = load i64*, i64** @demuxer_list, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %4, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = icmp ne %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %70, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %3, align 8
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %56

76:                                               ; preds = %56
  %77 = load i64*, i64** @indev_list, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %97, %79
  %81 = load i64*, i64** @indev_list, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %86, %struct.TYPE_4__** %4, align 8
  %87 = icmp ne %struct.TYPE_4__* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %94, align 8
  br label %95

95:                                               ; preds = %91, %88
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %96, %struct.TYPE_4__** %3, align 8
  br label %97

97:                                               ; preds = %95
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %80

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100, %76
  %102 = call i32 @ff_mutex_unlock(i32* @avpriv_register_devices_mutex)
  ret void
}

declare dso_local i32 @ff_mutex_lock(i32*) #1

declare dso_local i32 @ff_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
