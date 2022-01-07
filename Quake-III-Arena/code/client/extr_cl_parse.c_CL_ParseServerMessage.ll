; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_parse.c_CL_ParseServerMessage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_parse.c_CL_ParseServerMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }

@cl_shownet = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"------------------\0A\00", align 1
@clc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@MAX_RELIABLE_COMMANDS = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"CL_ParseServerMessage: read past end of server message\00", align 1
@svc_EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"END OF MESSAGE\00", align 1
@svc_strings = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"%3i:BAD CMD %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"CL_ParseServerMessage: Illegible server message\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ParseServerMessage(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cl_shownet, align 8
  %5 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %11)
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cl_shownet, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  br label %21

21:                                               ; preds = %20, %8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = call i32 @MSG_Bitstream(%struct.TYPE_13__* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = call i64 @MSG_ReadLong(%struct.TYPE_13__* %24)
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @clc, i32 0, i32 0), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @clc, i32 0, i32 0), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @clc, i32 0, i32 1), align 8
  %28 = load i64, i64* @MAX_RELIABLE_COMMANDS, align 8
  %29 = sub nsw i64 %27, %28
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @clc, i32 0, i32 1), align 8
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @clc, i32 0, i32 0), align 8
  br label %33

33:                                               ; preds = %31, %21
  br label %34

34:                                               ; preds = %33, %100
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @ERR_DROP, align 4
  %44 = call i32 @Com_Error(i32 %43, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %101

45:                                               ; preds = %34
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = call i32 @MSG_ReadByte(%struct.TYPE_13__* %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @svc_EOF, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = call i32 @SHOWNET(%struct.TYPE_13__* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %101

54:                                               ; preds = %45
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cl_shownet, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 2
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load i8**, i8*** @svc_strings, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, 1
  %71 = load i32, i32* %3, align 4
  %72 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %70, i32 %71)
  br label %81

73:                                               ; preds = %59
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %75 = load i8**, i8*** @svc_strings, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @SHOWNET(%struct.TYPE_13__* %74, i8* %79)
  br label %81

81:                                               ; preds = %73, %66
  br label %82

82:                                               ; preds = %81, %54
  %83 = load i32, i32* %3, align 4
  switch i32 %83, label %84 [
    i32 130, label %87
    i32 129, label %88
    i32 131, label %91
    i32 128, label %94
    i32 132, label %97
  ]

84:                                               ; preds = %82
  %85 = load i32, i32* @ERR_DROP, align 4
  %86 = call i32 @Com_Error(i32 %85, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %100

87:                                               ; preds = %82
  br label %100

88:                                               ; preds = %82
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = call i32 @CL_ParseCommandString(%struct.TYPE_13__* %89)
  br label %100

91:                                               ; preds = %82
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %93 = call i32 @CL_ParseGamestate(%struct.TYPE_13__* %92)
  br label %100

94:                                               ; preds = %82
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %96 = call i32 @CL_ParseSnapshot(%struct.TYPE_13__* %95)
  br label %100

97:                                               ; preds = %82
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %99 = call i32 @CL_ParseDownload(%struct.TYPE_13__* %98)
  br label %100

100:                                              ; preds = %97, %94, %91, %88, %87, %84
  br label %34

101:                                              ; preds = %51, %42
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @MSG_Bitstream(%struct.TYPE_13__*) #1

declare dso_local i64 @MSG_ReadLong(%struct.TYPE_13__*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @MSG_ReadByte(%struct.TYPE_13__*) #1

declare dso_local i32 @SHOWNET(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @CL_ParseCommandString(%struct.TYPE_13__*) #1

declare dso_local i32 @CL_ParseGamestate(%struct.TYPE_13__*) #1

declare dso_local i32 @CL_ParseSnapshot(%struct.TYPE_13__*) #1

declare dso_local i32 @CL_ParseDownload(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
