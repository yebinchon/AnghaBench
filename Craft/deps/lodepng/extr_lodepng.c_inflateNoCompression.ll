; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_inflateNoCompression.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_inflateNoCompression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64*, i64*, i64)* @inflateNoCompression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inflateNoCompression(%struct.TYPE_4__* %0, i8* %1, i64* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %22, %5
  %18 = load i64*, i64** %9, align 8
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, 7
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %23, align 8
  br label %17

26:                                               ; preds = %17
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %27, align 8
  %29 = udiv i64 %28, 8
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %11, align 8
  %32 = sub i64 %31, 4
  %33 = icmp uge i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 52, i32* %6, align 4
  br label %126

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %12, align 8
  %43 = add i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = mul nsw i32 256, %46
  %48 = add nsw i32 %40, %47
  store i32 %48, i32* %13, align 4
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 2
  store i64 %50, i64* %12, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, 1
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = mul nsw i32 256, %61
  %63 = add nsw i32 %55, %62
  store i32 %63, i32* %14, align 4
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 2
  store i64 %65, i64* %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = add i32 %66, %67
  %69 = icmp ne i32 %68, 65535
  br i1 %69, label %70, label %71

70:                                               ; preds = %35
  store i32 21, i32* %6, align 4
  br label %126

71:                                               ; preds = %35
  %72 = load i64*, i64** %10, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = zext i32 %74 to i64
  %76 = add i64 %73, %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp uge i64 %76, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = load i64*, i64** %10, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = add i64 %84, %86
  %88 = call i32 @ucvector_resize(%struct.TYPE_4__* %82, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  store i32 83, i32* %6, align 4
  br label %126

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %71
  %93 = load i64, i64* %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = load i64, i64* %11, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 23, i32* %6, align 4
  br label %126

100:                                              ; preds = %92
  store i32 0, i32* %15, align 4
  br label %101

101:                                              ; preds = %118, %100
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load i8*, i8** %8, align 8
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %12, align 8
  %109 = getelementptr inbounds i8, i8* %106, i64 %107
  %110 = load i8, i8* %109, align 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load i64*, i64** %10, align 8
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %114, align 8
  %117 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 %110, i8* %117, align 1
  br label %118

118:                                              ; preds = %105
  %119 = load i32, i32* %15, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %101

121:                                              ; preds = %101
  %122 = load i64, i64* %12, align 8
  %123 = mul i64 %122, 8
  %124 = load i64*, i64** %9, align 8
  store i64 %123, i64* %124, align 8
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %121, %99, %90, %70, %34
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @ucvector_resize(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
