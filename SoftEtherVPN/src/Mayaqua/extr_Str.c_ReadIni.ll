; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ReadIni.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ReadIni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ReadIni(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %100

14:                                               ; preds = %1
  %15 = call i32* @NewListFast(i32* null)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @SeekBuf(i32* %16, i32 0, i32 0)
  br label %18

18:                                               ; preds = %14, %95
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @CfgReadNextLine(i32* %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %98

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @Trim(i8* %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @IsEmptyStr(i8* %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %95

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @StartWith(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %94

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @StartWith(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %94

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @StartWith(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %94

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @StrLen(i8* %43)
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @ZeroMalloc(i32 %46)
  store i8* %47, i8** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i8* @ZeroMalloc(i32 %48)
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @GetKeyAndValue(i8* %50, i8* %51, i32 %52, i8* %53, i32 %54, i32* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %42
  %58 = call i8* @ZeroMalloc(i32 24)
  %59 = bitcast i8* %58 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %59, %struct.TYPE_3__** %10, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i8* @CopyStr(i8* %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i8* @CopyStr(i8* %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @StrLen(i8* %70)
  %72 = call i32 @CalcUtf8ToUni(i32* %69, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @ZeroMalloc(i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @StrLen(i8* %83)
  %85 = call i32 @Utf8ToUni(i8* %79, i32 %80, i32* %82, i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %88 = call i32 @Add(i32* %86, %struct.TYPE_3__* %87)
  br label %89

89:                                               ; preds = %57, %42
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @Free(i8* %90)
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @Free(i8* %92)
  br label %94

94:                                               ; preds = %89, %38, %34, %30
  br label %95

95:                                               ; preds = %94, %24
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @Free(i8* %96)
  br label %18

98:                                               ; preds = %23
  %99 = load i32*, i32** %4, align 8
  store i32* %99, i32** %2, align 8
  br label %100

100:                                              ; preds = %98, %13
  %101 = load i32*, i32** %2, align 8
  ret i32* %101
}

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

declare dso_local i8* @CfgReadNextLine(i32*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @StartWith(i8*, i8*) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i64 @GetKeyAndValue(i8*, i8*, i32, i8*, i32, i32*) #1

declare dso_local i8* @CopyStr(i8*) #1

declare dso_local i32 @CalcUtf8ToUni(i32*, i32) #1

declare dso_local i32 @Utf8ToUni(i8*, i32, i32*, i32) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
