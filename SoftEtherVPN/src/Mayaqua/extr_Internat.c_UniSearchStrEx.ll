; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniSearchStrEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniSearchStrEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UniSearchStrEx(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %4
  %22 = load i32, i32* @INFINITE, align 4
  store i32 %22, i32* %5, align 4
  br label %144

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @UniStrLen(i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @INFINITE, align 4
  store i32 %30, i32* %5, align 4
  br label %144

31:                                               ; preds = %23
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @UniStrLen(i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @INFINITE, align 4
  store i32 %37, i32* %5, align 4
  br label %144

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @INFINITE, align 4
  store i32 %43, i32* %5, align 4
  br label %144

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @UniStrCmp(i32* %52, i32* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %144

57:                                               ; preds = %51
  %58 = load i32, i32* @INFINITE, align 4
  store i32 %58, i32* %5, align 4
  br label %144

59:                                               ; preds = %48
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @UniStrCmpi(i32* %60, i32* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %144

65:                                               ; preds = %59
  %66 = load i32, i32* @INFINITE, align 4
  store i32 %66, i32* %5, align 4
  br label %144

67:                                               ; preds = %44
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32*, i32** %6, align 8
  store i32* %71, i32** %13, align 8
  %72 = load i32*, i32** %7, align 8
  store i32* %72, i32** %14, align 8
  br label %106

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32* @Malloc(i32 %78)
  store i32* %79, i32** %13, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @UniStrCpy(i32* %80, i32 %85, i32* %86)
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32* @Malloc(i32 %92)
  store i32* %93, i32** %14, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @UniStrCpy(i32* %94, i32 %99, i32* %100)
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @UniStrUpper(i32* %102)
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @UniStrUpper(i32* %104)
  br label %106

106:                                              ; preds = %73, %70
  store i32 0, i32* %15, align 4
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %126, %106
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 %110, %111
  %113 = add nsw i32 %112, 1
  %114 = icmp slt i32 %109, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %108
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @wcsncmp(i32* %119, i32* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %115
  store i32 1, i32* %15, align 4
  br label %129

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %108

129:                                              ; preds = %124, %108
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32*, i32** %14, align 8
  %134 = call i32 @Free(i32* %133)
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @Free(i32* %135)
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i32, i32* %15, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @INFINITE, align 4
  store i32 %141, i32* %5, align 4
  br label %144

142:                                              ; preds = %137
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %142, %140, %65, %64, %57, %56, %42, %36, %29, %21
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @UniStrLen(i32*) #1

declare dso_local i64 @UniStrCmp(i32*, i32*) #1

declare dso_local i64 @UniStrCmpi(i32*, i32*) #1

declare dso_local i32* @Malloc(i32) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #1

declare dso_local i32 @UniStrUpper(i32*) #1

declare dso_local i32 @wcsncmp(i32*, i32*, i32) #1

declare dso_local i32 @Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
