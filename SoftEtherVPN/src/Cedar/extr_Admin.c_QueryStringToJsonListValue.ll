; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_QueryStringToJsonListValue.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_QueryStringToJsonListValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8** }

@.str = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@INFINITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @QueryStringToJsonListValue(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %97

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call %struct.TYPE_4__* @ParseTokenWithoutNullStr(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = icmp eq %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32* null, i32** %2, align 8
  br label %97

24:                                               ; preds = %18
  %25 = call i32* (...) @NewStrList()
  store i32* %25, i32** %6, align 8
  %26 = call i32* (...) @JsonNewObject()
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @JsonValueGetObject(i32* %27)
  store i32* %28, i32** %8, align 8
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %88, %24
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %91

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i8**, i8*** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @SearchStr(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @INFINITE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %35
  %48 = load i8*, i8** %9, align 8
  %49 = call i8* @CopyStr(i8* %48)
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i8* @CopyStr(i8* %53)
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %13, align 8
  %59 = call i8* @UrlDecode(i8* %58)
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = call i8* @UrlDecode(i8* %60)
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %47
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load i32*, i32** %6, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i64 @AddStrToStrListDistinct(i32* %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32*, i32** %8, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @JsonSetStr(i32* %73, i8* %74, i8* %75)
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77, %64, %47
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @Free(i8* %79)
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @Free(i8* %81)
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @Free(i8* %83)
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 @Free(i8* %85)
  br label %87

87:                                               ; preds = %78, %35
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %5, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %5, align 8
  br label %29

91:                                               ; preds = %29
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = call i32 @FreeToken(%struct.TYPE_4__* %92)
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @FreeStrList(i32* %94)
  %96 = load i32*, i32** %7, align 8
  store i32* %96, i32** %2, align 8
  br label %97

97:                                               ; preds = %91, %23, %17
  %98 = load i32*, i32** %2, align 8
  ret i32* %98
}

declare dso_local %struct.TYPE_4__* @ParseTokenWithoutNullStr(i8*, i8*) #1

declare dso_local i32* @NewStrList(...) #1

declare dso_local i32* @JsonNewObject(...) #1

declare dso_local i32* @JsonValueGetObject(i32*) #1

declare dso_local i64 @SearchStr(i8*, i8*, i32) #1

declare dso_local i8* @CopyStr(i8*) #1

declare dso_local i8* @UrlDecode(i8*) #1

declare dso_local i64 @AddStrToStrListDistinct(i32*, i8*) #1

declare dso_local i32 @JsonSetStr(i32*, i8*, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #1

declare dso_local i32 @FreeStrList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
