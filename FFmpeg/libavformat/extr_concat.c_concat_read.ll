; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_concat.c_concat_read.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_concat.c_concat_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.concat_data* }
%struct.concat_data = type { i64, i64, %struct.concat_nodes* }
%struct.concat_nodes = type { i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32)* @concat_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_read(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.concat_data*, align 8
  %11 = alloca %struct.concat_nodes*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.concat_data*, %struct.concat_data** %14, align 8
  store %struct.concat_data* %15, %struct.concat_data** %10, align 8
  %16 = load %struct.concat_data*, %struct.concat_data** %10, align 8
  %17 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %16, i32 0, i32 2
  %18 = load %struct.concat_nodes*, %struct.concat_nodes** %17, align 8
  store %struct.concat_nodes* %18, %struct.concat_nodes** %11, align 8
  %19 = load %struct.concat_data*, %struct.concat_data** %10, align 8
  %20 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  br label %22

22:                                               ; preds = %68, %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %79

25:                                               ; preds = %22
  %26 = load %struct.concat_nodes*, %struct.concat_nodes** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %26, i64 %27
  %29 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ffurl_read(i32 %30, i8* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @AVERROR_EOF, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %25
  %38 = load i64, i64* %12, align 8
  %39 = add i64 %38, 1
  %40 = load %struct.concat_data*, %struct.concat_data** %10, align 8
  %41 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %37
  %45 = load %struct.concat_nodes*, %struct.concat_nodes** %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %12, align 8
  %48 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %45, i64 %47
  %49 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SEEK_SET, align 4
  %52 = call i64 @ffurl_seek(i32 %50, i32 0, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44, %37
  br label %79

55:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  br label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %4, align 4
  br label %91

68:                                               ; preds = %56
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %22

79:                                               ; preds = %54, %22
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.concat_data*, %struct.concat_data** %10, align 8
  %82 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %9, align 4
  br label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %8, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %66
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @ffurl_read(i32, i8*, i32) #1

declare dso_local i64 @ffurl_seek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
