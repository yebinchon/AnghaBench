; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ParseToken.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ParseToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32 }

@.str = private unnamed_addr constant [6 x i8] c" ,\09\0D\0A\00", align 1
@token_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @ParseToken(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = call i8* @ZeroMalloc(i32 16)
  %16 = bitcast i8* %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %6, align 8
  %17 = call i8* @ZeroMalloc(i32 0)
  %18 = bitcast i8* %17 to i8**
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8** %18, i8*** %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %3, align 8
  br label %106

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @StrLen(i8* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i8* @Malloc(i32 %30)
  store i8* %31, i8** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i8* @Malloc(i32 %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @StrCpy(i8* %35, i32 0, i8* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @StrCpy(i8* %38, i32 0, i8* %39)
  %41 = load i32, i32* @token_lock, align 4
  %42 = call i32 @Lock(i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @strtok(i8* %43, i8* %44)
  store i8* %45, i8** %7, align 8
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %49, %26
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i8* @strtok(i8* null, i8* %52)
  store i8* %53, i8** %7, align 8
  br label %46

54:                                               ; preds = %46
  %55 = call i8* @Malloc(i32 16)
  %56 = bitcast i8* %55 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 8, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @Malloc(i32 %63)
  %65 = bitcast i8* %64 to i8**
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i8** %65, i8*** %67, align 8
  store i32 0, i32* %11, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i8* @strtok(i8* %68, i8* %69)
  store i8* %70, i8** %7, align 8
  br label %71

71:                                               ; preds = %74, %54
  %72 = load i8*, i8** %7, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @StrLen(i8* %75)
  %77 = add nsw i32 %76, 1
  %78 = call i8* @Malloc(i32 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %78, i8** %84, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @StrCpy(i8* %91, i32 0, i8* %92)
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = call i8* @strtok(i8* null, i8* %96)
  store i8* %97, i8** %7, align 8
  br label %71

98:                                               ; preds = %71
  %99 = load i32, i32* @token_lock, align 4
  %100 = call i32 @Unlock(i32 %99)
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @Free(i8* %101)
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @Free(i8* %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %105, %struct.TYPE_3__** %3, align 8
  br label %106

106:                                              ; preds = %98, %14
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %107
}

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
