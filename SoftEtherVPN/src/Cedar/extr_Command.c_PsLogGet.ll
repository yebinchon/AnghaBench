; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLogGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLogGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i8*)* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32*, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"CMD_Log_SecurityLog\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"CMD_MSG_ENABLE\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"CMD_MSG_DISABLE\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"CMD_Log_SwitchType\00", align 1
@.str.5 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"CMD_Log_PacketLog\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"D_SM_LOG@B_PACKET_0_0\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"D_SM_LOG@B_PACKET_0_1\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"D_SM_LOG@B_PACKET_0_2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsLogGet(%struct.TYPE_15__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_15__*, i8*)*, i32 (%struct.TYPE_15__*, i8*)** %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 %26(%struct.TYPE_15__* %27, i8* %28)
  %30 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %30, i64* %5, align 8
  br label %150

31:                                               ; preds = %4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32* @ParseCommandList(%struct.TYPE_15__* %32, i8* %33, i8* %34, i32* null, i32 0)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %39, i64* %5, align 8
  br label %150

40:                                               ; preds = %31
  %41 = call i32 @Zero(%struct.TYPE_13__* %13, i32 48)
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @StrCpy(i32 %43, i32 4, i32* %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ScGetHubLog(i32 %50, %struct.TYPE_13__* %13)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @ERR_NO_ERROR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %40
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @CmdPrintError(%struct.TYPE_15__* %56, i64 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @FreeParamValueList(i32* %59)
  %61 = load i64, i64* %12, align 8
  store i64 %61, i64* %5, align 8
  br label %150

62:                                               ; preds = %40
  %63 = call i32* (...) @CtNewStandard()
  store i32* %63, i32** %14, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i8* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %74

72:                                               ; preds = %62
  %73 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i8* [ %71, %70 ], [ %73, %72 ]
  %76 = call i32 @CtInsert(i32* %64, i8* %65, i8* %75)
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load i32*, i32** %14, align 8
  %83 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @GetLogSwitchStr(i32 %86)
  %88 = call i32 @CtInsert(i32* %82, i8* %83, i8* %87)
  br label %89

89:                                               ; preds = %81, %74
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @CtInsert(i32* %90, i8* bitcast ([1 x i32]* @.str.5 to i8*), i8* bitcast ([1 x i32]* @.str.5 to i8*))
  %92 = load i32*, i32** %14, align 8
  %93 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %102

100:                                              ; preds = %89
  %101 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i8* [ %99, %98 ], [ %101, %100 ]
  %104 = call i32 @CtInsert(i32* %92, i8* %93, i8* %103)
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %102
  %110 = load i32*, i32** %14, align 8
  %111 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @GetLogSwitchStr(i32 %114)
  %116 = call i32 @CtInsert(i32* %110, i8* %111, i8* %115)
  store i64 0, i64* %15, align 8
  br label %117

117:                                              ; preds = %139, %109
  %118 = load i64, i64* %15, align 8
  %119 = icmp sle i64 %118, 7
  br i1 %119, label %120, label %142

120:                                              ; preds = %117
  store i8* null, i8** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %15, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %133 [
    i32 128, label %127
    i32 129, label %129
    i32 130, label %131
  ]

127:                                              ; preds = %120
  %128 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i8* %128, i8** %16, align 8
  br label %133

129:                                              ; preds = %120
  %130 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i8* %130, i8** %16, align 8
  br label %133

131:                                              ; preds = %120
  %132 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  store i8* %132, i8** %16, align 8
  br label %133

133:                                              ; preds = %120, %131, %129, %127
  %134 = load i32*, i32** %14, align 8
  %135 = load i64, i64* %15, align 8
  %136 = call i8* @GetPacketLogNameStr(i64 %135)
  %137 = load i8*, i8** %16, align 8
  %138 = call i32 @CtInsert(i32* %134, i8* %136, i8* %137)
  br label %139

139:                                              ; preds = %133
  %140 = load i64, i64* %15, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %15, align 8
  br label %117

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142, %102
  %144 = load i32*, i32** %14, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %146 = call i32 @CtFree(i32* %144, %struct.TYPE_15__* %145)
  br label %147

147:                                              ; preds = %143
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @FreeParamValueList(i32* %148)
  store i64 0, i64* %5, align 8
  br label %150

150:                                              ; preds = %147, %55, %38, %23
  %151 = load i64, i64* %5, align 8
  ret i64 %151
}

declare dso_local i8* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_15__*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetHubLog(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @CtInsert(i32*, i8*, i8*) #1

declare dso_local i8* @GetLogSwitchStr(i32) #1

declare dso_local i8* @GetPacketLogNameStr(i64) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
