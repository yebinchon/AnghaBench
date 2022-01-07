; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_Message_Key.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_Message_Key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64* }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@K_ESCAPE = common dso_local global i32 0, align 4
@KEYCATCH_MESSAGE = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@chatField = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@K_ENTER = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@CA_ACTIVE = common dso_local global i64 0, align 8
@chat_playerNum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tell %i \22%s\22\0A\00", align 1
@chat_team = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"say_team \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"say \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Message_Key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @MAX_STRING_CHARS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @K_ESCAPE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %17 = and i32 %16, %15
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %18 = call i32 @Field_Clear(%struct.TYPE_6__* @chatField)
  store i32 1, i32* %5, align 4
  br label %69

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @K_ENTER, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @K_KP_ENTER, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %23, %19
  %28 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chatField, i32 0, i32 0), align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %27
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 8
  %34 = load i64, i64* @CA_ACTIVE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i32, i32* @chat_playerNum, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = trunc i64 %7 to i32
  %41 = load i32, i32* @chat_playerNum, align 4
  %42 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chatField, i32 0, i32 0), align 8
  %43 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %9, i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %41, i64* %42)
  br label %58

44:                                               ; preds = %36
  %45 = load i64, i64* @chat_team, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = trunc i64 %7 to i32
  %49 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chatField, i32 0, i32 0), align 8
  %50 = ptrtoint i64* %49 to i32
  %51 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %9, i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %57

52:                                               ; preds = %44
  %53 = trunc i64 %7 to i32
  %54 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chatField, i32 0, i32 0), align 8
  %55 = ptrtoint i64* %54 to i32
  %56 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %9, i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  br label %58

58:                                               ; preds = %57, %39
  %59 = call i32 @CL_AddReliableCommand(i8* %9)
  br label %60

60:                                               ; preds = %58, %32, %27
  %61 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %64 = and i32 %63, %62
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %65 = call i32 @Field_Clear(%struct.TYPE_6__* @chatField)
  store i32 1, i32* %5, align 4
  br label %69

66:                                               ; preds = %23
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @Field_KeyDownEvent(%struct.TYPE_6__* @chatField, i32 %67)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %60, %13
  %70 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %5, align 4
  switch i32 %71, label %73 [
    i32 0, label %72
    i32 1, label %72
  ]

72:                                               ; preds = %69, %69
  ret void

73:                                               ; preds = %69
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Field_Clear(%struct.TYPE_6__*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local i32 @CL_AddReliableCommand(i8*) #2

declare dso_local i32 @Field_KeyDownEvent(%struct.TYPE_6__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
