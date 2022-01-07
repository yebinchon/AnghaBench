; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_parse_object_value.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_parse_object_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSON_RET_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32)* @parse_object_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_object_value(i8** %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32* (...) @JsonNewObject()
  store i32* %10, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32* @JsonValueGetObject(i32* %11)
  store i32* %12, i32** %8, align 8
  store i8* null, i8** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 123
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  store i32* null, i32** %3, align 8
  br label %129

22:                                               ; preds = %15
  %23 = load i8**, i8*** %4, align 8
  %24 = call i32 @SKIP_CHAR(i8** %23)
  %25 = load i8**, i8*** %4, align 8
  %26 = call i32 @SKIP_WHITESPACES(i8** %25)
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 125
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i8**, i8*** %4, align 8
  %34 = call i32 @SKIP_CHAR(i8** %33)
  %35 = load i32*, i32** %6, align 8
  store i32* %35, i32** %3, align 8
  br label %129

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %102, %36
  %38 = load i8**, i8*** %4, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %107

43:                                               ; preds = %37
  %44 = load i8**, i8*** %4, align 8
  %45 = call i8* @get_quoted_string(i8** %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @JsonFree(i32* %49)
  store i32* null, i32** %3, align 8
  br label %129

51:                                               ; preds = %43
  %52 = load i8**, i8*** %4, align 8
  %53 = call i32 @SKIP_WHITESPACES(i8** %52)
  %54 = load i8**, i8*** %4, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 58
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @parson_free(i8* %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @JsonFree(i32* %62)
  store i32* null, i32** %3, align 8
  br label %129

64:                                               ; preds = %51
  %65 = load i8**, i8*** %4, align 8
  %66 = call i32 @SKIP_CHAR(i8** %65)
  %67 = load i8**, i8*** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32* @parse_value(i8** %67, i32 %68)
  store i32* %69, i32** %7, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @parson_free(i8* %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @JsonFree(i32* %75)
  store i32* null, i32** %3, align 8
  br label %129

77:                                               ; preds = %64
  %78 = load i32*, i32** %8, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i64 @json_object_add(i32* %78, i8* %79, i32* %80)
  %82 = load i64, i64* @JSON_RET_ERROR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @parson_free(i8* %85)
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @JsonFree(i32* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @JsonFree(i32* %89)
  store i32* null, i32** %3, align 8
  br label %129

91:                                               ; preds = %77
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @parson_free(i8* %92)
  %94 = load i8**, i8*** %4, align 8
  %95 = call i32 @SKIP_WHITESPACES(i8** %94)
  %96 = load i8**, i8*** %4, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 44
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %107

102:                                              ; preds = %91
  %103 = load i8**, i8*** %4, align 8
  %104 = call i32 @SKIP_CHAR(i8** %103)
  %105 = load i8**, i8*** %4, align 8
  %106 = call i32 @SKIP_WHITESPACES(i8** %105)
  br label %37

107:                                              ; preds = %101, %37
  %108 = load i8**, i8*** %4, align 8
  %109 = call i32 @SKIP_WHITESPACES(i8** %108)
  %110 = load i8**, i8*** %4, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 125
  br i1 %114, label %122, label %115

115:                                              ; preds = %107
  %116 = load i32*, i32** %8, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @JsonGetCount(i32* %117)
  %119 = call i64 @json_object_resize(i32* %116, i32 %118)
  %120 = load i64, i64* @JSON_RET_ERROR, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %115, %107
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @JsonFree(i32* %123)
  store i32* null, i32** %3, align 8
  br label %129

125:                                              ; preds = %115
  %126 = load i8**, i8*** %4, align 8
  %127 = call i32 @SKIP_CHAR(i8** %126)
  %128 = load i32*, i32** %6, align 8
  store i32* %128, i32** %3, align 8
  br label %129

129:                                              ; preds = %125, %122, %84, %72, %59, %48, %32, %21
  %130 = load i32*, i32** %3, align 8
  ret i32* %130
}

declare dso_local i32* @JsonNewObject(...) #1

declare dso_local i32* @JsonValueGetObject(i32*) #1

declare dso_local i32 @SKIP_CHAR(i8**) #1

declare dso_local i32 @SKIP_WHITESPACES(i8**) #1

declare dso_local i8* @get_quoted_string(i8**) #1

declare dso_local i32 @JsonFree(i32*) #1

declare dso_local i32 @parson_free(i8*) #1

declare dso_local i32* @parse_value(i8**, i32) #1

declare dso_local i64 @json_object_add(i32*, i8*, i32*) #1

declare dso_local i64 @json_object_resize(i32*, i32) #1

declare dso_local i32 @JsonGetCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
