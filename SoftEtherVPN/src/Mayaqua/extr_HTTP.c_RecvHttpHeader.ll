; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_RecvHttpHeader.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_RecvHttpHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32* }

@HTTP_HEADER_LINE_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"HTTP/0.9\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @RecvHttpHeader(i32* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  store i8* null, i8** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %87

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @HTTP_HEADER_LINE_MAX_SIZE, align 4
  %13 = call i8* @RecvLine(i32* %11, i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %87

17:                                               ; preds = %10
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.TYPE_9__* @ParseToken(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @PTR_TO_PTR(i8* %20)
  %22 = call i32 @FreeSafe(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = call i32 @FreeToken(%struct.TYPE_9__* %28)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %87

30:                                               ; preds = %17
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_10__* @NewHttpHeader(i32 %35, i32 %40, i32 %45)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %6, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = call i32 @FreeToken(%struct.TYPE_9__* %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @StrCmpi(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %30
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %2, align 8
  br label %87

56:                                               ; preds = %30
  br label %57

57:                                               ; preds = %56, %81
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @HTTP_HEADER_LINE_MAX_SIZE, align 4
  %60 = call i8* @RecvLine(i32* %58, i32 %59)
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @Trim(i8* %61)
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @IsEmptyStr(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @PTR_TO_PTR(i8* %67)
  %69 = call i32 @FreeSafe(i32 %68)
  br label %85

70:                                               ; preds = %57
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @AddHttpValueStr(%struct.TYPE_10__* %71, i8* %72)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @PTR_TO_PTR(i8* %76)
  %78 = call i32 @FreeSafe(i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = call i32 @FreeHttpHeader(%struct.TYPE_10__* %79)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %85

81:                                               ; preds = %70
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @PTR_TO_PTR(i8* %82)
  %84 = call i32 @FreeSafe(i32 %83)
  br label %57

85:                                               ; preds = %75, %66
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %2, align 8
  br label %87

87:                                               ; preds = %85, %54, %27, %16, %9
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %88
}

declare dso_local i8* @RecvLine(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @FreeSafe(i32) #1

declare dso_local i32 @PTR_TO_PTR(i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @NewHttpHeader(i32, i32, i32) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i32 @AddHttpValueStr(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @FreeHttpHeader(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
