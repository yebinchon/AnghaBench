; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerPasswordSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerPasswordSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"[password]\00", align 1
@CmdPromptChoosePassword = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsServerPasswordSet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [1 x %struct.TYPE_9__], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %11, align 8
  %18 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %15, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %21 = load i32, i32* @CmdPromptChoosePassword, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  store i32 0, i32* %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %15, i64 0, i64 0
  %31 = call i32* @ParseCommandList(i32* %27, i8* %28, i32* %29, %struct.TYPE_9__* %30, i32 1)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %35, i64* %5, align 8
  br label %63

36:                                               ; preds = %4
  %37 = load i32*, i32** %10, align 8
  %38 = call i8* @GetParamStr(i32* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %38, i8** %14, align 8
  %39 = call i32 @Zero(%struct.TYPE_7__* %13, i32 4)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = call i32 @StrLen(i8* %43)
  %45 = call i32 @Sha0(i32 %41, i8* %42, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ScSetServerPassword(i32 %48, %struct.TYPE_7__* %13)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @ERR_NO_ERROR, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %36
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @CmdPrintError(i32* %54, i64 %55)
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @FreeParamValueList(i32* %57)
  %59 = load i64, i64* %12, align 8
  store i64 %59, i64* %5, align 8
  br label %63

60:                                               ; preds = %36
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @FreeParamValueList(i32* %61)
  store i64 0, i64* %5, align 8
  br label %63

63:                                               ; preds = %60, %53, %34
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @Sha0(i32, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i64 @ScSetServerPassword(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
