; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_MemoryDebugMenu.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_MemoryDebugMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Mayaqua Kernel Memory Debug Tools\0ACopyright (c) SoftEther VPN Project. All Rights Reserved.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Unfortunately The call stack is not recorded on non-Windows systems\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"since UnixGetCallStack() and UnixGetCallStackSymbolInfo() is not implemented.\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Therefore please use valgrind or other memory leak check tools\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"to get the actual call stacks of memory leak causes.\0A\0A\00", align 1
@g_memcheck = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"debug>\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Usage: i <obj_id>\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Command Not Found,\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MemoryDebugMenu() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @MAX_SIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = call i32 @Print(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @Print(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @Print(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @Print(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i32 @Print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* @g_memcheck, align 4
  br label %14

14:                                               ; preds = %88, %24, %0
  br label %15

15:                                               ; preds = %14
  %16 = call i32 @Print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %17 = trunc i64 %6 to i32
  %18 = call i32 @GetLine(i8* %8, i32 %17)
  %19 = call %struct.TYPE_4__* @ParseToken(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = call i32 @FreeToken(%struct.TYPE_4__* %25)
  %27 = call i32 (...) @DebugPrintAllObjects()
  br label %14

28:                                               ; preds = %15
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @StrCmpi(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = call i32 (...) @DebugPrintCommandList()
  br label %88

39:                                               ; preds = %28
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @StrCmpi(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = call i32 (...) @DebugPrintAllObjects()
  br label %87

45:                                               ; preds = %39
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @StrCmpi(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @Print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %64

56:                                               ; preds = %49
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @ToInt(i8* %61)
  %63 = call i32 @DebugPrintObjectInfo(i32 %62)
  br label %64

64:                                               ; preds = %56, %54
  br label %86

65:                                               ; preds = %45
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @StrCmpi(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %91

70:                                               ; preds = %65
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @ToInt(i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @ToInt(i8* %79)
  %81 = call i32 @DebugPrintObjectInfo(i32 %80)
  br label %84

82:                                               ; preds = %70
  %83 = call i32 @Print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %74
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85, %64
  br label %87

87:                                               ; preds = %86, %43
  br label %88

88:                                               ; preds = %87, %37
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = call i32 @FreeToken(%struct.TYPE_4__* %89)
  br label %14

91:                                               ; preds = %69
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = call i32 @FreeToken(%struct.TYPE_4__* %92)
  store i32 1, i32* @g_memcheck, align 4
  %94 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %94)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Print(i8*) #2

declare dso_local i32 @GetLine(i8*, i32) #2

declare dso_local %struct.TYPE_4__* @ParseToken(i8*, i8*) #2

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #2

declare dso_local i32 @DebugPrintAllObjects(...) #2

declare dso_local i32 @StrCmpi(i8*, i8*) #2

declare dso_local i32 @DebugPrintCommandList(...) #2

declare dso_local i32 @DebugPrintObjectInfo(i32) #2

declare dso_local i32 @ToInt(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
