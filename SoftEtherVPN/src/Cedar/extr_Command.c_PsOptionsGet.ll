; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsOptionsGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsOptionsGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32*)* }
%struct.TYPE_15__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CMD_OptionsGet_TITLE\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"CMD_OptionsGet_ENUM\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"CMD_MSG_DENY\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"CMD_MSG_ALLOW\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"CMD_MSG_INFINITE\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"CMD_OptionsGet_MAXSESSIONS\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"CMD_OptionsGet_STATUS\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"SM_HUB_ONLINE\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"SM_HUB_OFFLINE\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"CMD_OptionsGet_TYPE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsOptionsGet(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %25, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 %26(%struct.TYPE_16__* %27, i32* %28)
  %30 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %30, i64* %5, align 8
  br label %136

31:                                               ; preds = %4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @ParseCommandList(%struct.TYPE_16__* %32, i8* %33, i32* %34, i32* null, i32 0)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %39, i64* %5, align 8
  br label %136

40:                                               ; preds = %31
  %41 = call i32 @Zero(%struct.TYPE_14__* %13, i32 40)
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @StrCpy(i32 %43, i32 4, i32* %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ScGetHub(i32 %50, %struct.TYPE_14__* %13)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @ERR_NO_ERROR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %40
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @CmdPrintError(%struct.TYPE_16__* %56, i64 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @FreeParamValueList(i32* %59)
  %61 = load i64, i64* %12, align 8
  store i64 %61, i64* %5, align 8
  br label %136

62:                                               ; preds = %40
  %63 = load i32, i32* @MAX_SIZE, align 4
  %64 = zext i32 %63 to i64
  %65 = call i8* @llvm.stacksave()
  store i8* %65, i8** %15, align 8
  %66 = alloca i32, i64 %64, align 16
  store i64 %64, i64* %16, align 8
  %67 = mul nuw i64 4, %64
  %68 = trunc i64 %67 to i32
  %69 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @UniFormat(i32* %66, i32 %68, i32* %69, i32* %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %75, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = call i32 %76(%struct.TYPE_16__* %77, i32* %66)
  %79 = call i32* (...) @CtNewStandard()
  store i32* %79, i32** %14, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %62
  %87 = call i32* @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %90

88:                                               ; preds = %62
  %89 = call i32* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32* [ %87, %86 ], [ %89, %88 ]
  %92 = call i32 @CtInsert(i32* %80, i32* %81, i32* %91)
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = mul nuw i64 4, %64
  %99 = trunc i64 %98 to i32
  %100 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %101 = call i32 @UniStrCpy(i32* %66, i32 %99, i32* %100)
  br label %107

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @UniToStru(i32* %66, i32 %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load i32*, i32** %14, align 8
  %109 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %110 = call i32 @CtInsert(i32* %108, i32* %109, i32* %66)
  %111 = load i32*, i32** %14, align 8
  %112 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = call i32* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %120

118:                                              ; preds = %107
  %119 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32* [ %117, %116 ], [ %119, %118 ]
  %122 = call i32 @CtInsert(i32* %111, i32* %112, i32* %121)
  %123 = load i32*, i32** %14, align 8
  %124 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32* @GetHubTypeStr(i32 %126)
  %128 = call i32 @CtInsert(i32* %123, i32* %124, i32* %127)
  %129 = load i32*, i32** %14, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %131 = call i32 @CtFree(i32* %129, %struct.TYPE_16__* %130)
  %132 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %132)
  br label %133

133:                                              ; preds = %120
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @FreeParamValueList(i32* %134)
  store i64 0, i64* %5, align 8
  br label %136

136:                                              ; preds = %133, %55, %38, %23
  %137 = load i64, i64* %5, align 8
  ret i64 %137
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetHub(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniFormat(i32*, i32, i32*, i32*) #1

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32* @GetHubTypeStr(i32) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_16__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
