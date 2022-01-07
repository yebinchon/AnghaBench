; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_fputc.c_fputc.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_fputc.c_fputc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32 }

@__FILE_CAN_WRITE = common dso_local global i32 0, align 4
@__FILE_ERROR = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@__FILE_NOBUF = common dso_local global i32 0, align 4
@__FILE_BUFLINEWISE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fputc(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @__FILE_CAN_WRITE, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = call i64 @__set_stream_flags(%struct.TYPE_5__* %13, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @__FILE_ERROR, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @EOF, align 4
  store i32 %22, i32* %3, align 4
  br label %105

23:                                               ; preds = %12
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = icmp sge i32 %26, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = call i64 @fflush(%struct.TYPE_5__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* @__FILE_ERROR, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @EOF, align 4
  store i32 %42, i32* %3, align 4
  br label %105

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @__FILE_NOBUF, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %44
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @write(i32 %54, i32* %4, i32 1)
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32, i32* @__FILE_ERROR, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @EOF, align 4
  store i32 %63, i32* %3, align 4
  br label %105

64:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %105

65:                                               ; preds = %44
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  store i32 %66, i32* %75, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @__FILE_BUFLINEWISE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %65
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %92, label %85

85:                                               ; preds = %82, %65
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @__FILE_NOBUF, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %85, %82
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = call i64 @fflush(%struct.TYPE_5__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i32, i32* @__FILE_ERROR, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* @EOF, align 4
  store i32 %102, i32* %3, align 4
  br label %105

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %85
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %96, %64, %57, %36, %16
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @__set_stream_flags(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @fflush(%struct.TYPE_5__*) #1

declare dso_local i32 @write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
