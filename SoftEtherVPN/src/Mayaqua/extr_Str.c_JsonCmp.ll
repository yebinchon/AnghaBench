; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_JsonCmp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_JsonCmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @JsonCmp(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @JsonValueGetType(i32* %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @JsonValueGetType(i32* %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %135

28:                                               ; preds = %2
  %29 = load i32, i32* %16, align 4
  switch i32 %29, label %134 [
    i32 134, label %30
    i32 129, label %63
    i32 128, label %99
    i32 133, label %116
    i32 130, label %123
    i32 132, label %132
    i32 131, label %133
  ]

30:                                               ; preds = %28
  %31 = load i32*, i32** %4, align 8
  %32 = call i32* @JsonValueGetArray(i32* %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32* @JsonValueGetArray(i32* %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @JsonArrayGetCount(i32* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @JsonArrayGetCount(i32* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %135

43:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %15, align 4
  %51 = call i32* @JsonArrayGet(i32* %49, i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32* @JsonArrayGet(i32* %52, i32 %53)
  %55 = call i32 @JsonCmp(i32* %51, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %135

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  br label %44

62:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %135

63:                                               ; preds = %28
  %64 = load i32*, i32** %4, align 8
  %65 = call i32* @JsonValueGetObject(i32* %64)
  store i32* %65, i32** %6, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32* @JsonValueGetObject(i32* %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @JsonGetCount(i32* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @JsonGetCount(i32* %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %135

76:                                               ; preds = %63
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %95, %76
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i8* @JsonGetName(i32* %82, i32 %83)
  store i8* %84, i8** %12, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = call i32* @JsonGet(i32* %85, i8* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = call i32* @JsonGet(i32* %88, i8* %89)
  %91 = call i32 @JsonCmp(i32* %87, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %135

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %77

98:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %135

99:                                               ; preds = %28
  %100 = load i32*, i32** %4, align 8
  %101 = call i8* @JsonValueGetStr(i32* %100)
  store i8* %101, i8** %10, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = call i8* @JsonValueGetStr(i32* %102)
  store i8* %103, i8** %11, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i8*, i8** %11, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %99
  store i32 0, i32* %3, align 4
  br label %135

110:                                              ; preds = %106
  %111 = load i8*, i8** %10, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @strcmp(i8* %111, i8* %112)
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %3, align 4
  br label %135

116:                                              ; preds = %28
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @JsonValueGetBool(i32* %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @JsonValueGetBool(i32* %119)
  %121 = icmp eq i32 %118, %120
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %3, align 4
  br label %135

123:                                              ; preds = %28
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @JsonValueGetNumber(i32* %124)
  store i32 %125, i32* %18, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @JsonValueGetNumber(i32* %126)
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %19, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %3, align 4
  br label %135

132:                                              ; preds = %28
  store i32 1, i32* %3, align 4
  br label %135

133:                                              ; preds = %28
  store i32 1, i32* %3, align 4
  br label %135

134:                                              ; preds = %28
  store i32 1, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %133, %132, %123, %116, %110, %109, %98, %93, %75, %62, %57, %42, %27
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @JsonValueGetType(i32*) #1

declare dso_local i32* @JsonValueGetArray(i32*) #1

declare dso_local i32 @JsonArrayGetCount(i32*) #1

declare dso_local i32* @JsonArrayGet(i32*, i32) #1

declare dso_local i32* @JsonValueGetObject(i32*) #1

declare dso_local i32 @JsonGetCount(i32*) #1

declare dso_local i8* @JsonGetName(i32*, i32) #1

declare dso_local i32* @JsonGet(i32*, i8*) #1

declare dso_local i8* @JsonValueGetStr(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @JsonValueGetBool(i32*) #1

declare dso_local i32 @JsonValueGetNumber(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
