; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_CheckForResend.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_CheckForResend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cls = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@RETRANSMIT_TIMEOUT = common dso_local global i64 0, align 8
@NS_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"getchallenge\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"net_qport\00", align 1
@CVAR_USERINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"qport\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"challenge\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"connect \00", align 1
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"CL_CheckForResend: bad cls.state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_CheckForResend() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_INFO_STRING, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @MAX_INFO_STRING, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 4), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 1, i32* %6, align 4
  br label %102

17:                                               ; preds = %0
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %19 = icmp ne i32 %18, 128
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %22 = icmp ne i32 %21, 129
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %102

24:                                               ; preds = %20, %17
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 1), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %27 = sub nsw i64 %25, %26
  %28 = load i64, i64* @RETRANSMIT_TIMEOUT, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %102

31:                                               ; preds = %24
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 1), align 8
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 3), align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 3), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  switch i32 %35, label %98 [
    i32 128, label %36
    i32 129, label %46
  ]

36:                                               ; preds = %31
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 2), align 4
  %38 = call i32 @Sys_IsLANAddress(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 (...) @CL_RequestAuthorization()
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* @NS_CLIENT, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 2), align 4
  %45 = call i32 @NET_OutOfBandPrint(i32 %43, i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %101

46:                                               ; preds = %31
  %47 = call i32 @Cvar_VariableValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* @CVAR_USERINFO, align 4
  %49 = call i32 @Cvar_InfoString(i32 %48)
  %50 = trunc i64 %8 to i32
  %51 = call i32 @Q_strncpyz(i8* %10, i32 %49, i32 %50)
  %52 = load i32, i32* @PROTOCOL_VERSION, align 4
  %53 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = call i32 @Info_SetValueForKey(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = call i32 @Info_SetValueForKey(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 1), align 8
  %59 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = call i32 @Info_SetValueForKey(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %62 = getelementptr inbounds i8, i8* %13, i64 8
  store i8 34, i8* %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %76, %46
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @strlen(i8* %10)
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %10, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 9, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %13, i64 %74
  store i8 %71, i8* %75, align 1
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %2, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %2, align 4
  br label %63

79:                                               ; preds = %63
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 9, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %13, i64 %82
  store i8 34, i8* %83, align 1
  %84 = load i32, i32* %2, align 4
  %85 = add nsw i32 10, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %13, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i32, i32* @NS_CLIENT, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 2), align 4
  %90 = getelementptr inbounds i8, i8* %13, i64 0
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 10
  %93 = call i32 @NET_OutOfBandData(i32 %88, i32 %89, i8* %90, i32 %92)
  %94 = load i32, i32* @CVAR_USERINFO, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* @cvar_modifiedFlags, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* @cvar_modifiedFlags, align 4
  br label %101

98:                                               ; preds = %31
  %99 = load i32, i32* @ERR_FATAL, align 4
  %100 = call i32 @Com_Error(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %79, %42
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %101, %30, %23, %16
  %103 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %6, align 4
  switch i32 %104, label %106 [
    i32 0, label %105
    i32 1, label %105
  ]

105:                                              ; preds = %102, %102
  ret void

106:                                              ; preds = %102
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Sys_IsLANAddress(i32) #2

declare dso_local i32 @CL_RequestAuthorization(...) #2

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*) #2

declare dso_local i32 @Cvar_VariableValue(i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @Cvar_InfoString(i32) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @NET_OutOfBandData(i32, i32, i8*, i32) #2

declare dso_local i32 @Com_Error(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
