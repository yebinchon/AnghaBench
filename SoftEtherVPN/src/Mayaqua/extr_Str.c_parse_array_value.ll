; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_parse_array_value.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_parse_array_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSON_RET_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32)* @parse_array_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_array_value(i8** %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32* (...) @JsonNewArray()
  store i32* %9, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32* @JsonValueGetArray(i32* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 91
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  store i32* null, i32** %3, align 8
  br label %98

21:                                               ; preds = %14
  %22 = load i8**, i8*** %4, align 8
  %23 = call i32 @SKIP_CHAR(i8** %22)
  %24 = load i8**, i8*** %4, align 8
  %25 = call i32 @SKIP_WHITESPACES(i8** %24)
  %26 = load i8**, i8*** %4, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 93
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i8**, i8*** %4, align 8
  %33 = call i32 @SKIP_CHAR(i8** %32)
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %3, align 8
  br label %98

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %71, %35
  %37 = load i8**, i8*** %4, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %36
  %43 = load i8**, i8*** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32* @parse_value(i8** %43, i32 %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @JsonFree(i32* %49)
  store i32* null, i32** %3, align 8
  br label %98

51:                                               ; preds = %42
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @json_array_add(i32* %52, i32* %53)
  %55 = load i64, i64* @JSON_RET_ERROR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @JsonFree(i32* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @JsonFree(i32* %60)
  store i32* null, i32** %3, align 8
  br label %98

62:                                               ; preds = %51
  %63 = load i8**, i8*** %4, align 8
  %64 = call i32 @SKIP_WHITESPACES(i8** %63)
  %65 = load i8**, i8*** %4, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 44
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %76

71:                                               ; preds = %62
  %72 = load i8**, i8*** %4, align 8
  %73 = call i32 @SKIP_CHAR(i8** %72)
  %74 = load i8**, i8*** %4, align 8
  %75 = call i32 @SKIP_WHITESPACES(i8** %74)
  br label %36

76:                                               ; preds = %70, %36
  %77 = load i8**, i8*** %4, align 8
  %78 = call i32 @SKIP_WHITESPACES(i8** %77)
  %79 = load i8**, i8*** %4, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 93
  br i1 %83, label %91, label %84

84:                                               ; preds = %76
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @JsonArrayGetCount(i32* %86)
  %88 = call i64 @json_array_resize(i32* %85, i32 %87)
  %89 = load i64, i64* @JSON_RET_ERROR, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84, %76
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @JsonFree(i32* %92)
  store i32* null, i32** %3, align 8
  br label %98

94:                                               ; preds = %84
  %95 = load i8**, i8*** %4, align 8
  %96 = call i32 @SKIP_CHAR(i8** %95)
  %97 = load i32*, i32** %6, align 8
  store i32* %97, i32** %3, align 8
  br label %98

98:                                               ; preds = %94, %91, %57, %48, %31, %20
  %99 = load i32*, i32** %3, align 8
  ret i32* %99
}

declare dso_local i32* @JsonNewArray(...) #1

declare dso_local i32* @JsonValueGetArray(i32*) #1

declare dso_local i32 @SKIP_CHAR(i8**) #1

declare dso_local i32 @SKIP_WHITESPACES(i8**) #1

declare dso_local i32* @parse_value(i8**, i32) #1

declare dso_local i32 @JsonFree(i32*) #1

declare dso_local i64 @json_array_add(i32*, i32*) #1

declare dso_local i64 @json_array_resize(i32*, i32) #1

declare dso_local i32 @JsonArrayGetCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
