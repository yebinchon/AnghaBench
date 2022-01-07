; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_FindShaderInShaderText.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_FindShaderInShaderText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SHADERTEXT_HASH = common dso_local global i32 0, align 4
@shaderTextHashTable = common dso_local global i8*** null, align 8
@qtrue = common dso_local global i32 0, align 4
@s_shaderText = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @FindShaderInShaderText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @FindShaderInShaderText(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @MAX_SHADERTEXT_HASH, align 4
  %10 = call i32 @generateHashValue(i8* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %41, %1
  %12 = load i8***, i8**** @shaderTextHashTable, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8**, i8*** %12, i64 %14
  %16 = load i8**, i8*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %11
  %23 = load i8***, i8**** @shaderTextHashTable, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8**, i8*** %23, i64 %25
  %27 = load i8**, i8*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %5, align 8
  %32 = load i32, i32* @qtrue, align 4
  %33 = call i8* @COM_ParseExt(i8** %5, i32 %32)
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @Q_stricmp(i8* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %22
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %2, align 8
  br label %70

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %11

44:                                               ; preds = %11
  %45 = load i8*, i8** @s_shaderText, align 8
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i8* null, i8** %2, align 8
  br label %70

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %68
  %51 = load i32, i32* @qtrue, align 4
  %52 = call i8* @COM_ParseExt(i8** %5, i32 %51)
  store i8* %52, i8** %4, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %69

59:                                               ; preds = %50
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @Q_stricmp(i8* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %2, align 8
  br label %70

66:                                               ; preds = %59
  %67 = call i32 @SkipBracedSection(i8** %5)
  br label %68

68:                                               ; preds = %66
  br label %50

69:                                               ; preds = %58
  store i8* null, i8** %2, align 8
  br label %70

70:                                               ; preds = %69, %64, %48, %38
  %71 = load i8*, i8** %2, align 8
  ret i8* %71
}

declare dso_local i32 @generateHashValue(i8*, i32) #1

declare dso_local i8* @COM_ParseExt(i8**, i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @SkipBracedSection(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
