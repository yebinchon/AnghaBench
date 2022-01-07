; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ffmetadec.c_read_line_to_bprint_escaped.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ffmetadec.c_read_line_to_bprint_escaped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@AVERROR_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32*)* @read_line_to_bprint_escaped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_line_to_bprint_escaped(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %8, align 8
  store i8 32, i8* %11, align 1
  br label %12

12:                                               ; preds = %64, %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %53, %12
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = call signext i8 @avio_r8(%struct.TYPE_6__* %14)
  store i8 %15, i8* %10, align 1
  %16 = load i8, i8* %11, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 92
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load i8, i8* %10, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 13
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i8, i8* %10, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8, i8* %10, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br label %31

31:                                               ; preds = %27, %23, %19
  %32 = phi i1 [ true, %23 ], [ true, %19 ], [ %30, %27 ]
  br label %33

33:                                               ; preds = %31, %13
  %34 = phi i1 [ false, %13 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load i8, i8* %10, align 1
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %42
  store i8 %39, i8* %43, align 1
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i8, i8* %10, align 1
  store i8 %45, i8* %11, align 1
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 1024
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %13, label %55

55:                                               ; preds = %53
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @av_bprint_append_data(i32* %56, i8* %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br i1 %67, label %12, label %68

68:                                               ; preds = %64
  %69 = load i8, i8* %10, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 13
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = call signext i8 @avio_r8(%struct.TYPE_6__* %73)
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 10
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = call i64 @avio_feof(%struct.TYPE_6__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = call i32 @avio_skip(%struct.TYPE_6__* %82, i32 -1)
  br label %84

84:                                               ; preds = %81, %77, %72, %68
  %85 = load i8, i8* %10, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %3, align 8
  br label %110

96:                                               ; preds = %87, %84
  %97 = load i8, i8* %10, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %8, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = call i64 @avio_feof(%struct.TYPE_6__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i64, i64* @AVERROR_EOF, align 8
  store i64 %107, i64* %3, align 8
  br label %110

108:                                              ; preds = %102, %99, %96
  %109 = load i64, i64* %8, align 8
  store i64 %109, i64* %3, align 8
  br label %110

110:                                              ; preds = %108, %106, %92
  %111 = load i64, i64* %3, align 8
  ret i64 %111
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
