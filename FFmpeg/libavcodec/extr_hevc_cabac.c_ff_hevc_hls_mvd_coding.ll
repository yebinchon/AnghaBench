; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_cabac.c_ff_hevc_hls_mvd_coding.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_cabac.c_ff_hevc_hls_mvd_coding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_hevc_hls_mvd_coding(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %9, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = call i32 @abs_mvd_greater0_flag_decode(%struct.TYPE_13__* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = call i32 @abs_mvd_greater0_flag_decode(%struct.TYPE_13__* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = call i64 @abs_mvd_greater1_flag_decode(%struct.TYPE_13__* %22)
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %21, %4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = call i64 @abs_mvd_greater1_flag_decode(%struct.TYPE_13__* %32)
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %59 [
    i32 2, label %40
    i32 1, label %47
    i32 0, label %54
  ]

40:                                               ; preds = %38
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = call i8* @mvd_decode(%struct.TYPE_13__* %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i8* %42, i8** %46, align 8
  br label %59

47:                                               ; preds = %38
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = call i8* @mvd_sign_flag_decode(%struct.TYPE_13__* %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i8* %49, i8** %53, align 8
  br label %59

54:                                               ; preds = %38
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store i8* null, i8** %58, align 8
  br label %59

59:                                               ; preds = %38, %54, %47, %40
  %60 = load i32, i32* %11, align 4
  switch i32 %60, label %80 [
    i32 2, label %61
    i32 1, label %68
    i32 0, label %75
  ]

61:                                               ; preds = %59
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = call i8* @mvd_decode(%struct.TYPE_13__* %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i8* %63, i8** %67, align 8
  br label %80

68:                                               ; preds = %59
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = call i8* @mvd_sign_flag_decode(%struct.TYPE_13__* %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i8* %70, i8** %74, align 8
  br label %80

75:                                               ; preds = %59
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i8* null, i8** %79, align 8
  br label %80

80:                                               ; preds = %59, %75, %68, %61
  ret void
}

declare dso_local i32 @abs_mvd_greater0_flag_decode(%struct.TYPE_13__*) #1

declare dso_local i64 @abs_mvd_greater1_flag_decode(%struct.TYPE_13__*) #1

declare dso_local i8* @mvd_decode(%struct.TYPE_13__*) #1

declare dso_local i8* @mvd_sign_flag_decode(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
