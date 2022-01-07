; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpHandle.c_httpParseChunkedBody.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpHandle.c_httpParseChunkedBody.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpParseChunkedBody(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  store i8* %20, i8** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @strtoul(i8* %29, i32* null, i32 16)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ule i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %91

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %82, %34
  %36 = load i64, i64* %11, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = call i8* @strstr(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp uge i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %38
  store i32 0, i32* %4, align 4
  br label %91

48:                                               ; preds = %43
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i8* @strstr(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp uge i8* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %48
  store i32 0, i32* %4, align 4
  br label %91

60:                                               ; preds = %55
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %91

69:                                               ; preds = %60
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  store i8* %71, i8** %10, align 8
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @memmove(i8* %75, i8* %76, i64 %77)
  %79 = load i64, i64* %11, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %74, %69
  %83 = load i8*, i8** %10, align 8
  %84 = call i64 @strtoul(i8* %83, i32* null, i32 16)
  store i64 %84, i64* %11, align 8
  br label %35

85:                                               ; preds = %35
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %9, align 8
  store i8 0, i8* %89, align 1
  br label %90

90:                                               ; preds = %88, %85
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %68, %59, %47, %33
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
