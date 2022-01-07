; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_locate_option.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_locate_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@HAS_ARG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @locate_option(i32 %0, i8** %1, %struct.TYPE_5__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 1, i32* %11, align 4
  br label %13

13:                                               ; preds = %94, %4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %97

17:                                               ; preds = %13
  %18 = load i8**, i8*** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %12, align 8
  %25 = load i8, i8* %23, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %94

29:                                               ; preds = %17
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call %struct.TYPE_5__* @find_option(%struct.TYPE_5__* %30, i8* %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %10, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %54, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 110
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 111
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = call %struct.TYPE_5__* @find_option(%struct.TYPE_5__* %50, i8* %52)
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %10, align 8
  br label %54

54:                                               ; preds = %49, %43, %37, %29
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @strcmp(i8* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59, %54
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcmp(i8* %70, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69, %59
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %98

78:                                               ; preds = %69, %64
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @HAS_ARG, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83, %78
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %90, %83
  br label %94

94:                                               ; preds = %93, %28
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %13

97:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %76
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_5__* @find_option(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
