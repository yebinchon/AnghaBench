; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayacm.c_t27.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayacm.c_t27.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Too large b = %d > 124\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@mul_3x5 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @t27 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t27(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32* %15, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %87, %3
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %90

22:                                               ; preds = %16
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @get_bits(i32* %23, i32 7)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ugt i32 %25, 124
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @av_log(i32* null, i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %4, align 4
  br label %91

32:                                               ; preds = %22
  %33 = load i32*, i32** @mul_3x5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  %39 = sub nsw i32 %38, 2
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** @mul_3x5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 4
  %46 = and i32 %45, 15
  %47 = sub nsw i32 %46, 2
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** @mul_3x5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 15
  %55 = sub nsw i32 %54, 2
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @set_pos(%struct.TYPE_4__* %56, i32 %57, i32 %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp uge i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %32
  br label %90

68:                                               ; preds = %32
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @set_pos(%struct.TYPE_4__* %69, i32 %70, i32 %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp uge i32 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %90

81:                                               ; preds = %68
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @set_pos(%struct.TYPE_4__* %82, i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %16

90:                                               ; preds = %80, %67, %16
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %27
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @set_pos(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
