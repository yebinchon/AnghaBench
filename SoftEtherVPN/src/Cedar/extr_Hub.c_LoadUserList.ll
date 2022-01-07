; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_LoadUserList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_LoadUserList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@ACCESS_LIST_INCLUDE_FILE_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @LoadUserList(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %88

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.TYPE_8__* @FindUserList(i32* %17, i8* %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %6, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = call i32 @Delete(i32* %23, %struct.TYPE_8__* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = call i32 @FreeUserListEntry(%struct.TYPE_8__* %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = call %struct.TYPE_8__* @ZeroMalloc(i32 8)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %6, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @StrCpy(i32 %32, i32 4, i8* %33)
  %35 = call i32 @NewInt64List(i32 0)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @ACCESS_LIST_INCLUDE_FILE_MAX_SIZE, align 4
  %40 = call i32* @ReadDumpWithMaxSize(i8* %38, i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %83

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %77
  %45 = load i32*, i32** %7, align 8
  %46 = call i8* @CfgReadNextLine(i32* %45)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %80

50:                                               ; preds = %44
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @Trim(i8* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @IsEmptyStr(i8* %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @StartWith(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @StartWith(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @StartWith(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @UsernameToInt64(i8* %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @AddInt64Distinct(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %64, %60, %56
  br label %77

77:                                               ; preds = %76, %50
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @Free(i8* %78)
  br label %44

80:                                               ; preds = %49
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @FreeBuf(i32* %81)
  br label %83

83:                                               ; preds = %80, %28
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = call i32 @Add(i32* %84, %struct.TYPE_8__* %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %3, align 8
  br label %88

88:                                               ; preds = %83, %15
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %89
}

declare dso_local %struct.TYPE_8__* @FindUserList(i32*, i8*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @FreeUserListEntry(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @NewInt64List(i32) #1

declare dso_local i32* @ReadDumpWithMaxSize(i8*, i32) #1

declare dso_local i8* @CfgReadNextLine(i32*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @StartWith(i8*, i8*) #1

declare dso_local i32 @UsernameToInt64(i8*) #1

declare dso_local i32 @AddInt64Distinct(i32, i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
