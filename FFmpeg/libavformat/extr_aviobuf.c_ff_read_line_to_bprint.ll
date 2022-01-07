; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_ff_read_line_to_bprint.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_ff_read_line_to_bprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@AVERROR_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ff_read_line_to_bprint(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %56, %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %45, %11
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = call signext i8 @avio_r8(%struct.TYPE_6__* %13)
  store i8 %14, i8* %10, align 1
  %15 = load i8, i8* %10, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 13
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load i8, i8* %10, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* %10, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %22, %18, %12
  %27 = phi i1 [ true, %18 ], [ true, %12 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load i8, i8* %10, align 1
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %35
  store i8 %32, i8* %36, align 1
  br label %37

37:                                               ; preds = %31, %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 1024
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  br i1 %46, label %12, label %47

47:                                               ; preds = %45
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @av_bprint_append_data(i32* %48, i8* %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %11, label %60

60:                                               ; preds = %56
  %61 = load i8, i8* %10, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 13
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = call signext i8 @avio_r8(%struct.TYPE_6__* %65)
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 10
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = call i64 @avio_feof(%struct.TYPE_6__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = call i32 @avio_skip(%struct.TYPE_6__* %74, i32 -1)
  br label %76

76:                                               ; preds = %73, %69, %64, %60
  %77 = load i8, i8* %10, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %3, align 8
  br label %102

88:                                               ; preds = %79, %76
  %89 = load i8, i8* %10, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = call i64 @avio_feof(%struct.TYPE_6__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i64, i64* @AVERROR_EOF, align 8
  store i64 %99, i64* %3, align 8
  br label %102

100:                                              ; preds = %94, %91, %88
  %101 = load i64, i64* %8, align 8
  store i64 %101, i64* %3, align 8
  br label %102

102:                                              ; preds = %100, %98, %84
  %103 = load i64, i64* %3, align 8
  ret i64 %103
}

declare dso_local signext i8 @avio_r8(%struct.TYPE_6__*) #1

declare dso_local i32 @av_bprint_append_data(i32*, i8*, i32) #1

declare dso_local i64 @avio_feof(%struct.TYPE_6__*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
