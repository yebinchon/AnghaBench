; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CommandMain.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CommandMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_7__*)*, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 105, i32 110, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 111, i32 117, i32 116, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"vpncmd\00", align 1
@VpnCmdProc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 99, i32 115, i32 118, i32 0], align 4
@CONSOLE_CSV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i32] [i32 112, i32 114, i32 111, i32 103, i32 114, i32 97, i32 109, i32 109, i32 105, i32 110, i32 103, i32 0], align 4
@.str.5 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Error: Couldn't open local console.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CommandMain(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca [1 x %struct.TYPE_8__], align 16
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %16, i32* %2, align 4
  br label %100

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @ParseCommand(i8* %18, i8* bitcast ([3 x i32]* @.str to i8*))
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @ParseCommand(i8* %20, i8* bitcast ([4 x i32]* @.str.1 to i8*))
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @UniIsEmptyStr(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @Free(i8* %26)
  store i8* null, i8** %5, align 8
  br label %28

28:                                               ; preds = %25, %17
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @UniIsEmptyStr(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @Free(i8* %33)
  store i8* null, i8** %6, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @CopyUniToStr(i8* %36)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @CopyUniToStr(i8* %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call %struct.TYPE_7__* @NewLocalConsole(i8* %40, i8* %41)
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %11, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  br i1 %44, label %45, label %88

45:                                               ; preds = %35
  %46 = getelementptr inbounds [1 x %struct.TYPE_8__], [1 x %struct.TYPE_8__]* %12, i64 0, i64 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %49 = load i32, i32* @VpnCmdProc, align 4
  store i32 %49, i32* %48, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i8* @ParseCommand(i8* %50, i8* bitcast ([4 x i32]* @.str.3 to i8*))
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @Free(i8* %55)
  %57 = load i32, i32* @CONSOLE_CSV, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %45
  %61 = load i8*, i8** %3, align 8
  %62 = call i8* @ParseCommand(i8* %61, i8* bitcast ([12 x i32]* @.str.4 to i8*))
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @Free(i8* %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds [1 x %struct.TYPE_8__], [1 x %struct.TYPE_8__]* %12, i64 0, i64 0
  %74 = call i32 @DispatchNextCmdEx(%struct.TYPE_7__* %71, i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_8__* %73, i32 1, i32* null)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %77, i32* %4, align 4
  br label %82

78:                                               ; preds = %70
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %76
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = call i32 %85(%struct.TYPE_7__* %86)
  br label %90

88:                                               ; preds = %35
  %89 = call i32 @Print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %82
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @Free(i8* %91)
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @Free(i8* %93)
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @Free(i8* %95)
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @Free(i8* %97)
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %90, %15
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i8* @ParseCommand(i8*, i8*) #1

declare dso_local i64 @UniIsEmptyStr(i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i8* @CopyUniToStr(i8*) #1

declare dso_local %struct.TYPE_7__* @NewLocalConsole(i8*, i8*) #1

declare dso_local i32 @DispatchNextCmdEx(%struct.TYPE_7__*, i8*, i8*, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @Print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
