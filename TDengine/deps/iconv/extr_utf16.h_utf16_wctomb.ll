; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf16.h_utf16_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf16.h_utf16_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RET_TOOSMALL = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32, i32)* @utf16_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf16_wctomb(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 65534
  br i1 %14, label %15, label %106

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 55296
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 57344
  br i1 %20, label %106, label %21

21:                                               ; preds = %18, %15
  store i32 0, i32* %10, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %27, 2
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 -2, i8* %31, align 1
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 -1, i8* %33, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %35, i8** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 2
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %10, align 4
  br label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %41, i32* %5, align 4
  br label %108

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 65536
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %47, 2
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 8
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 %52, i8* %54, align 1
  %55 = load i32, i32* %8, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 %56, i8* %58, align 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %5, align 4
  br label %108

63:                                               ; preds = %46
  %64 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %64, i32* %5, align 4
  br label %108

65:                                               ; preds = %43
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 1114112
  br i1 %67, label %68, label %104

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = icmp sge i32 %69, 4
  br i1 %70, label %71, label %102

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, 65536
  %74 = ashr i32 %73, 10
  %75 = add nsw i32 55296, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, 65536
  %78 = and i32 %77, 1023
  %79 = add nsw i32 56320, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = ashr i32 %80, 8
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 %82, i8* %84, align 1
  %85 = load i32, i32* %11, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %86, i8* %88, align 1
  %89 = load i32, i32* %12, align 4
  %90 = ashr i32 %89, 8
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8 %91, i8* %93, align 1
  %94 = load i32, i32* %12, align 4
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 3
  store i8 %95, i8* %97, align 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 4
  store i32 %101, i32* %5, align 4
  br label %108

102:                                              ; preds = %68
  %103 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %103, i32* %5, align 4
  br label %108

104:                                              ; preds = %65
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %18, %4
  %107 = load i32, i32* @RET_ILUNI, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %102, %71, %63, %49, %40
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
