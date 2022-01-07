; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ass_split.c_ass_split.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ass_split.c_ass_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"[%15[0-9A-Za-z+ ]]%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ass_sections = common dso_local global %struct.TYPE_7__* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @ass_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ass_split(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @ass_split_section(%struct.TYPE_6__* %13, i8* %14)
  store i8* %15, i8** %4, align 8
  br label %16

16:                                               ; preds = %12, %2
  br label %17

17:                                               ; preds = %89, %16
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %90

27:                                               ; preds = %25
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %30 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %5)
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %74

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strcspn(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %4, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i8*, i8** %4, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %70, %32
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ass_sections, align 8
  %50 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_7__* %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ass_sections, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strcmp(i8* %53, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = call i8* @ass_split_section(%struct.TYPE_6__* %66, i8* %67)
  store i8* %68, i8** %4, align 8
  br label %69

69:                                               ; preds = %62, %52
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %47

73:                                               ; preds = %47
  br label %89

74:                                               ; preds = %27
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @strcspn(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i8*, i8** %4, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %4, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i8*, i8** %4, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %4, align 8
  br label %89

89:                                               ; preds = %74, %73
  br label %17

90:                                               ; preds = %25
  %91 = load i8*, i8** %4, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi i32 [ 0, %93 ], [ %95, %94 ]
  ret i32 %97
}

declare dso_local i8* @ass_split_section(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_7__*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
