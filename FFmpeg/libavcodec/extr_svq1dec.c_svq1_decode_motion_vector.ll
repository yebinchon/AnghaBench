; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq1dec.c_svq1_decode_motion_vector.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq1dec.c_svq1_decode_motion_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i8* }

@svq1_motion_component = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, %struct.TYPE_5__**)* @svq1_decode_motion_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svq1_decode_motion_vector(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %83, %3
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %86

13:                                               ; preds = %10
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @svq1_motion_component, i32 0, i32 0), align 4
  %16 = call i32 @get_vlc2(i32* %14, i32 %15, i32 7, i32 2)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %20, i32* %4, align 4
  br label %87

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @get_bits1(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %39, i64 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %44, i64 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %49, i64 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @mid_pred(i8* %43, i8* %48, i8* %53)
  %55 = add nsw i64 %38, %54
  %56 = call i8* @sign_extend(i64 %55, i32 6)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %82

59:                                               ; preds = %33
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %62, i64 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %67, i64 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %72, i64 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @mid_pred(i8* %66, i8* %71, i8* %76)
  %78 = add nsw i64 %61, %77
  %79 = call i8* @sign_extend(i64 %78, i32 6)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %59, %36
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %10

86:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %19
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i8* @sign_extend(i64, i32) #1

declare dso_local i64 @mid_pred(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
