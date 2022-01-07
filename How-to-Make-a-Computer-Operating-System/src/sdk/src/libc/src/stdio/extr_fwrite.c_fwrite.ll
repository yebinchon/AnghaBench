; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_fwrite.c_fwrite.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_fwrite.c_fwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32 }

@__FILE_CAN_WRITE = common dso_local global i32 0, align 4
@__FILE_ERROR = common dso_local global i32 0, align 4
@__FILE_NOBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fwrite(i8* %0, i64 %1, i64 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @__FILE_CAN_WRITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* @__FILE_ERROR, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  store i64 0, i64* %5, align 8
  br label %108

29:                                               ; preds = %4
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %8, align 8
  %35 = udiv i64 %33, %34
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %29
  store i64 0, i64* %5, align 8
  br label %108

39:                                               ; preds = %32
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ugt i64 %40, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @__FILE_NOBUF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45, %39
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = call i64 @fflush(%struct.TYPE_5__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i64 0, i64* %5, align 8
  br label %108

57:                                               ; preds = %52
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @write(i32 %60, i8* %61, i64 %62)
  store i64 %63, i64* %10, align 8
  br label %88

64:                                               ; preds = %45
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %13, align 8
  %66 = load i64, i64* %11, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %81, %64
  %68 = load i64, i64* %12, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load i8*, i8** %13, align 8
  %72 = load i8, i8* %71, align 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = call i64 @fputc(i8 zeroext %72, %struct.TYPE_5__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = sub i64 %77, %78
  store i64 %79, i64* %10, align 8
  br label %98

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %12, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %12, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %13, align 8
  br label %67

86:                                               ; preds = %67
  %87 = load i64, i64* %11, align 8
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %86, %57
  %89 = load i64, i64* %10, align 8
  %90 = icmp ult i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* @__FILE_ERROR, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  store i64 0, i64* %5, align 8
  br label %108

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %76
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %7, align 8
  %104 = udiv i64 %102, %103
  br label %106

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %101
  %107 = phi i64 [ %104, %101 ], [ 0, %105 ]
  store i64 %107, i64* %5, align 8
  br label %108

108:                                              ; preds = %106, %91, %56, %38, %23
  %109 = load i64, i64* %5, align 8
  ret i64 %109
}

declare dso_local i64 @fflush(%struct.TYPE_5__*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i64 @fputc(i8 zeroext, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
