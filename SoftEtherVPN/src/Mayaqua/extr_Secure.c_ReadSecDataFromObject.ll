; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_ReadSecDataFromObject.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_ReadSecDataFromObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (i32, i32, %struct.TYPE_11__*, i32)* }
%struct.TYPE_11__ = type { i32, i64, i32*, i32 }
%struct.TYPE_9__ = type { i64, i32, i64 }

@MAX_SEC_DATA_SIZE = common dso_local global i32 0, align 4
@CKA_VALUE = common dso_local global i32 0, align 4
@SEC_ERROR_BAD_PARAMETER = common dso_local global i8* null, align 8
@SEC_DATA = common dso_local global i64 0, align 8
@SEC_ERROR_NO_SESSION = common dso_local global i8* null, align 8
@SEC_ERROR_NOT_LOGIN = common dso_local global i8* null, align 8
@CKR_OK = common dso_local global i64 0, align 8
@SEC_ERROR_HARDWARE_ERROR = common dso_local global i8* null, align 8
@SEC_ERROR_DATA_TOO_BIG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadSecDataFromObject(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1 x %struct.TYPE_11__], align 16
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @MAX_SEC_DATA_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* @CKA_VALUE, align 4
  store i32 %21, i32* %20, align 16
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %23 = ptrtoint i32* %18 to i64
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %25 = mul nuw i64 4, %16
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %24, align 16
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = icmp eq %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %119

31:                                               ; preds = %4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = icmp eq %struct.TYPE_9__* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %34, %31
  %41 = load i8*, i8** @SEC_ERROR_BAD_PARAMETER, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %119

44:                                               ; preds = %37
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SEC_DATA, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i8*, i8** @SEC_ERROR_BAD_PARAMETER, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %119

54:                                               ; preds = %44
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i8*, i8** @SEC_ERROR_NO_SESSION, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %119

63:                                               ; preds = %54
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i8*, i8** @SEC_ERROR_NOT_LOGIN, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %119

77:                                               ; preds = %68, %63
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64 (i32, i32, %struct.TYPE_11__*, i32)*, i64 (i32, i32, %struct.TYPE_11__*, i32)** %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %90 = call i64 %82(i32 %85, i32 %88, %struct.TYPE_11__* %89, i32 1)
  %91 = load i64, i64* @CKR_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %77
  %94 = load i8*, i8** @SEC_ERROR_HARDWARE_ERROR, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %119

97:                                               ; preds = %77
  %98 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i32, i32* @MAX_SEC_DATA_SIZE, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp sgt i64 %101, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %97
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %9, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105, %97
  %110 = load i8*, i8** @SEC_ERROR_DATA_TOO_BIG, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %119

113:                                              ; preds = %105
  %114 = load i8*, i8** %8, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @Copy(i8* %114, i32* %18, i64 %115)
  %117 = load i64, i64* %12, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %119

119:                                              ; preds = %113, %109, %93, %73, %59, %50, %40, %30
  %120 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Copy(i8*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
