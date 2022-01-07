; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_JsonDeepCopy.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_JsonDeepCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSON_RET_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @JsonDeepCopy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @JsonValueGetType(i32* %15)
  switch i32 %16, label %140 [
    i32 134, label %17
    i32 129, label %60
    i32 133, label %107
    i32 130, label %111
    i32 128, label %115
    i32 131, label %137
    i32 132, label %139
  ]

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @JsonValueGetArray(i32* %18)
  store i32* %19, i32** %11, align 8
  %20 = call i32* (...) @JsonNewArray()
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  br label %141

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @JsonValueGetArray(i32* %25)
  store i32* %26, i32** %12, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %55, %24
  %28 = load i32, i32* %4, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @JsonArrayGetCount(i32* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32* @JsonArrayGet(i32* %33, i32 %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32* @JsonDeepCopy(i32* %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @JsonFree(i32* %41)
  store i32* null, i32** %2, align 8
  br label %141

43:                                               ; preds = %32
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @json_array_add(i32* %44, i32* %45)
  %47 = load i32, i32* @JSON_RET_ERROR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @JsonFree(i32* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @JsonFree(i32* %52)
  store i32* null, i32** %2, align 8
  br label %141

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %27

58:                                               ; preds = %27
  %59 = load i32*, i32** %5, align 8
  store i32* %59, i32** %2, align 8
  br label %141

60:                                               ; preds = %1
  %61 = load i32*, i32** %3, align 8
  %62 = call i32* @JsonValueGetObject(i32* %61)
  store i32* %62, i32** %13, align 8
  %63 = call i32* (...) @JsonNewObject()
  store i32* %63, i32** %5, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32* null, i32** %2, align 8
  br label %141

67:                                               ; preds = %60
  %68 = load i32*, i32** %5, align 8
  %69 = call i32* @JsonValueGetObject(i32* %68)
  store i32* %69, i32** %14, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %102, %67
  %71 = load i32, i32* %4, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @JsonGetCount(i32* %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %70
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i8* @JsonGetName(i32* %76, i32 %77)
  store i8* %78, i8** %9, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32* @JsonGet(i32* %79, i8* %80)
  store i32* %81, i32** %7, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32* @JsonDeepCopy(i32* %82)
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @JsonFree(i32* %87)
  store i32* null, i32** %2, align 8
  br label %141

89:                                               ; preds = %75
  %90 = load i32*, i32** %14, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @json_object_add(i32* %90, i8* %91, i32* %92)
  %94 = load i32, i32* @JSON_RET_ERROR, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @JsonFree(i32* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @JsonFree(i32* %99)
  store i32* null, i32** %2, align 8
  br label %141

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %70

105:                                              ; preds = %70
  %106 = load i32*, i32** %5, align 8
  store i32* %106, i32** %2, align 8
  br label %141

107:                                              ; preds = %1
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @JsonValueGetBool(i32* %108)
  %110 = call i32* @JsonNewBool(i32 %109)
  store i32* %110, i32** %2, align 8
  br label %141

111:                                              ; preds = %1
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @JsonValueGetNumber(i32* %112)
  %114 = call i32* @JsonNewNumber(i32 %113)
  store i32* %114, i32** %2, align 8
  br label %141

115:                                              ; preds = %1
  %116 = load i32*, i32** %3, align 8
  %117 = call i8* @JsonValueGetStr(i32* %116)
  store i8* %117, i8** %8, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32* null, i32** %2, align 8
  br label %141

121:                                              ; preds = %115
  %122 = load i8*, i8** %8, align 8
  %123 = call i8* @parson_strdup(i8* %122)
  store i8* %123, i8** %10, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32* null, i32** %2, align 8
  br label %141

127:                                              ; preds = %121
  %128 = load i8*, i8** %10, align 8
  %129 = call i32* @json_value_init_string_no_copy(i8* %128)
  store i32* %129, i32** %5, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @parson_free(i8* %133)
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i32*, i32** %5, align 8
  store i32* %136, i32** %2, align 8
  br label %141

137:                                              ; preds = %1
  %138 = call i32* (...) @JsonNewNull()
  store i32* %138, i32** %2, align 8
  br label %141

139:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %141

140:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %141

141:                                              ; preds = %140, %139, %137, %135, %126, %120, %111, %107, %105, %96, %86, %66, %58, %49, %40, %23
  %142 = load i32*, i32** %2, align 8
  ret i32* %142
}

declare dso_local i32 @JsonValueGetType(i32*) #1

declare dso_local i32* @JsonValueGetArray(i32*) #1

declare dso_local i32* @JsonNewArray(...) #1

declare dso_local i32 @JsonArrayGetCount(i32*) #1

declare dso_local i32* @JsonArrayGet(i32*, i32) #1

declare dso_local i32 @JsonFree(i32*) #1

declare dso_local i32 @json_array_add(i32*, i32*) #1

declare dso_local i32* @JsonValueGetObject(i32*) #1

declare dso_local i32* @JsonNewObject(...) #1

declare dso_local i32 @JsonGetCount(i32*) #1

declare dso_local i8* @JsonGetName(i32*, i32) #1

declare dso_local i32* @JsonGet(i32*, i8*) #1

declare dso_local i32 @json_object_add(i32*, i8*, i32*) #1

declare dso_local i32* @JsonNewBool(i32) #1

declare dso_local i32 @JsonValueGetBool(i32*) #1

declare dso_local i32* @JsonNewNumber(i32) #1

declare dso_local i32 @JsonValueGetNumber(i32*) #1

declare dso_local i8* @JsonValueGetStr(i32*) #1

declare dso_local i8* @parson_strdup(i8*) #1

declare dso_local i32* @json_value_init_string_no_copy(i8*) #1

declare dso_local i32 @parson_free(i8*) #1

declare dso_local i32* @JsonNewNull(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
