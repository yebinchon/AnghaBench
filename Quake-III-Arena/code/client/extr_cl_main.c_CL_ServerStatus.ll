; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ServerStatus.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ServerStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i64, i32, i32 }

@MAX_SERVERSTATUSREQUESTS = common dso_local global i32 0, align 4
@cl_serverStatusList = common dso_local global %struct.TYPE_9__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@cl_serverStatusResendTime = common dso_local global %struct.TYPE_8__* null, align 8
@NS_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"getstatus\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CL_ServerStatus(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MAX_SERVERSTATUSREQUESTS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cl_serverStatusList, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @qtrue, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cl_serverStatusList, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 8
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load i32, i32* @qfalse, align 4
  store i32 %35, i32* %4, align 4
  br label %138

36:                                               ; preds = %3
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @NET_StringToAdr(i8* %37, i32* %9)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %4, align 4
  br label %138

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.TYPE_7__* @CL_GetServerStatus(i32 %43)
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %10, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @qtrue, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @qfalse, align 4
  store i32 %51, i32* %4, align 4
  br label %138

52:                                               ; preds = %42
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @NET_CompareAdr(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %108

59:                                               ; preds = %52
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @Q_strncpyz(i8* %65, i32 %68, i32 %69)
  %71 = load i32, i32* @qtrue, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @qtrue, align 4
  store i32 %76, i32* %4, align 4
  br label %138

77:                                               ; preds = %59
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i64 (...) @Com_Milliseconds()
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cl_serverStatusResendTime, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = icmp slt i64 %80, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %77
  %88 = load i32, i32* @qfalse, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @qtrue, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @qfalse, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  store i64 0, i64* %98, align 8
  %99 = call i64 (...) @Com_Milliseconds()
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* @NS_CLIENT, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @NET_OutOfBandPrint(i32 %102, i32 %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @qfalse, align 4
  store i32 %105, i32* %4, align 4
  br label %138

106:                                              ; preds = %77
  br label %107

107:                                              ; preds = %106
  br label %136

108:                                              ; preds = %52
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @qfalse, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @qtrue, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @qfalse, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = call i64 (...) @Com_Milliseconds()
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 4
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* @NS_CLIENT, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @NET_OutOfBandPrint(i32 %131, i32 %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %134 = load i32, i32* @qfalse, align 4
  store i32 %134, i32* %4, align 4
  br label %138

135:                                              ; preds = %108
  br label %136

136:                                              ; preds = %135, %107
  %137 = load i32, i32* @qfalse, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %113, %87, %64, %47, %40, %34
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @NET_StringToAdr(i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @CL_GetServerStatus(i32) #1

declare dso_local i64 @NET_CompareAdr(i32, i32) #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #1

declare dso_local i64 @Com_Milliseconds(...) #1

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
