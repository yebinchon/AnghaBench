; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ass_split.c_ff_ass_split_dialog.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ass_split.c_ff_ass_split_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }

@ass_sections = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"Events\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ff_ass_split_dialog(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ass_sections, align 8
  %18 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_11__* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ass_sections, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcmp(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %20
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ass_sections, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 %33
  %35 = call i32 @free_section(%struct.TYPE_10__* %30, %struct.TYPE_11__* %34)
  br label %40

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %15

40:                                               ; preds = %29, %15
  br label %41

41:                                               ; preds = %40, %4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @ass_split(%struct.TYPE_10__* %46, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32* %57, i32** %9, align 8
  br label %58

58:                                               ; preds = %50, %41
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %61, %58
  %70 = load i32*, i32** %9, align 8
  ret i32* %70
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_11__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @free_section(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i64 @ass_split(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
