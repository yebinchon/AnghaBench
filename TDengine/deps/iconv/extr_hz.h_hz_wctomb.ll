; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_hz.h_hz_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_hz.h_hz_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32, i32)* @hz_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hz_wctomb(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ascii_wctomb(%struct.TYPE_5__* %18, i8* %19, i32 %20, i32 1)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @RET_ILUNI, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @abort() #3
  unreachable

30:                                               ; preds = %25
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp slt i32 %33, 128
  br i1 %34, label %35, label %64

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 3, i32 1
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %44, i32* %5, align 4
  br label %124

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 126, i8* %50, align 1
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 125, i8* %52, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %48, %45
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 %57, i8* %59, align 1
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %124

64:                                               ; preds = %30
  br label %65

65:                                               ; preds = %64, %4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @gb2312_wctomb(%struct.TYPE_5__* %66, i8* %67, i32 %68, i32 2)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @RET_ILUNI, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %122

73:                                               ; preds = %65
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 2
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 (...) @abort() #3
  unreachable

78:                                               ; preds = %73
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp slt i32 %81, 128
  br i1 %82, label %83, label %121

83:                                               ; preds = %78
  %84 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp slt i32 %86, 128
  br i1 %87, label %88, label %121

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 2, i32 4
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %97, i32* %5, align 4
  br label %124

98:                                               ; preds = %88
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  store i8 126, i8* %103, align 1
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  store i8 123, i8* %105, align 1
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  store i8* %107, i8** %7, align 8
  store i32 1, i32* %10, align 4
  br label %108

108:                                              ; preds = %101, %98
  %109 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  store i8 %110, i8* %112, align 1
  %113 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8 %114, i8* %116, align 1
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %5, align 4
  br label %124

121:                                              ; preds = %83, %78
  br label %122

122:                                              ; preds = %121, %65
  %123 = load i32, i32* @RET_ILUNI, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %108, %96, %55, %43
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @ascii_wctomb(%struct.TYPE_5__*, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @gb2312_wctomb(%struct.TYPE_5__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
