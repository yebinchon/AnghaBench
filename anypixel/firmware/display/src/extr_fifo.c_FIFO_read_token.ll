; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_fifo.c_FIFO_read_token.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_fifo.c_FIFO_read_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FIFO_read_token(%struct.TYPE_4__* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %15, align 4
  br label %30

30:                                               ; preds = %28, %5
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %104, %30
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %107

38:                                               ; preds = %34
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %83, %38
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %39
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %51, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %43
  store i32 1, i32* %17, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @FIFO_read(%struct.TYPE_4__* %66, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %16, align 4
  %76 = sub nsw i32 %74, %75
  %77 = call i32 @FIFO_read(%struct.TYPE_4__* %71, i32* %72, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %16, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %6, align 4
  br label %118

81:                                               ; preds = %59
  br label %86

82:                                               ; preds = %43
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %39

86:                                               ; preds = %81, %39
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %16, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %92, %89, %86
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %102, %94
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %34

107:                                              ; preds = %34
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @FIFO_read(%struct.TYPE_4__* %112, i32* %113, i32 %114)
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %6, align 4
  br label %118

117:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %111, %70
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @FIFO_read(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
