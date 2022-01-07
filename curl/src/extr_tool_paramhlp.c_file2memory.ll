; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_file2memory.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_file2memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARAM_NO_MEM = common dso_local global i32 0, align 4
@PARAM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file2memory(i8** %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %88

15:                                               ; preds = %3
  store i64 512, i64* %12, align 8
  br label %16

16:                                               ; preds = %58, %15
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19, %16
  %24 = load i64, i64* %12, align 8
  %25 = add i64 %24, 1
  %26 = icmp ugt i64 %25, 9223372036854775807
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @Curl_safefree(i8* %28)
  %30 = load i32, i32* @PARAM_NO_MEM, align 4
  store i32 %30, i32* %4, align 4
  br label %94

31:                                               ; preds = %23
  %32 = load i64, i64* %12, align 8
  %33 = mul i64 %32, 2
  store i64 %33, i64* %12, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %12, align 8
  %36 = add i64 %35, 1
  %37 = call i8* @realloc(i8* %34, i64 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @Curl_safefree(i8* %41)
  %43 = load i32, i32* @PARAM_NO_MEM, align 4
  store i32 %43, i32* %4, align 4
  br label %94

44:                                               ; preds = %31
  %45 = load i8*, i8** %8, align 8
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %44, %19
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub i64 %50, %51
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @fread(i8* %49, i32 1, i64 %52, i32* %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %46
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %16, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  %72 = call i8* @realloc(i8* %69, i64 %71)
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @Curl_safefree(i8* %76)
  %78 = load i32, i32* @PARAM_NO_MEM, align 4
  store i32 %78, i32* %4, align 4
  br label %94

79:                                               ; preds = %68
  %80 = load i8*, i8** %8, align 8
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %79, %61
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @Curl_safefree(i8* %85)
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %3
  %89 = load i64, i64* %10, align 8
  %90 = load i64*, i64** %6, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i8**, i8*** %5, align 8
  store i8* %91, i8** %92, align 8
  %93 = load i32, i32* @PARAM_OK, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %75, %40, %27
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
