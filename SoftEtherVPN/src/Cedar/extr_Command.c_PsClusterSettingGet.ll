; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterSettingGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterSettingGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i32*, i32, i64 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@FARM_DEFAULT_WEIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"CMD_ClusterSettingGet_Current\00", align 1
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"CMD_ClusterSettingGet_ControllerOnly\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SEC_YES\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SEC_NO\00", align 1
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"CMD_ClusterSettingGet_Weight\00", align 1
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"CMD_ClusterSettingGet_None\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"CMD_ClusterSettingGet_PublicIp\00", align 1
@.str.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 117, i32 44, i32 32, i32 0], align 4
@.str.8 = private unnamed_addr constant [3 x i32] [i32 44, i32 32, i32 0], align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"CMD_ClusterSettingGet_PublicPorts\00", align 1
@.str.10 = private unnamed_addr constant [6 x i32] [i32 37, i32 83, i32 58, i32 37, i32 117, i32 0], align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"CMD_ClusterSettingGet_Controller\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsClusterSettingGet(i32* %0, i8* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [64 x i64], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %11, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = call i32* @ParseCommandList(i32* %23, i8* %24, i64* %25, i32* null, i32 0)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %30, i64* %5, align 8
  br label %175

31:                                               ; preds = %4
  %32 = call i32 @Zero(%struct.TYPE_6__* %13, i32 56)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ScGetFarmSetting(i32 %35, %struct.TYPE_6__* %13)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @ERR_NO_ERROR, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @CmdPrintError(i32* %41, i64 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @FreeParamValueList(i32* %44)
  %46 = load i64, i64* %12, align 8
  store i64 %46, i64* %5, align 8
  br label %175

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64, i64* @FARM_DEFAULT_WEIGHT, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %47
  %55 = call i32* (...) @CtNewStandard()
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = call i64* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64* @GetServerTypeStr(i64 %59)
  %61 = call i32 @CtInsert(i32* %56, i64* %57, i64* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %54
  %67 = load i32*, i32** %14, align 8
  %68 = call i64* @_UU(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i64* @_UU(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %76

74:                                               ; preds = %66
  %75 = call i64* @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64* [ %73, %72 ], [ %75, %74 ]
  %78 = call i32 @CtInsert(i32* %67, i64* %68, i64* %77)
  br label %79

79:                                               ; preds = %76, %54
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load i32, i32* @MAX_SIZE, align 4
  %86 = zext i32 %85 to i64
  %87 = call i8* @llvm.stacksave()
  store i8* %87, i8** %15, align 8
  %88 = alloca i64, i64 %86, align 16
  store i64 %86, i64* %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @UniToStru(i64* %88, i64 %90)
  %92 = load i32*, i32** %14, align 8
  %93 = call i64* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %94 = call i32 @CtInsert(i32* %92, i64* %93, i64* %88)
  %95 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %95)
  br label %96

96:                                               ; preds = %84, %79
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %168

101:                                              ; preds = %96
  %102 = load i32, i32* @MAX_SIZE, align 4
  %103 = zext i32 %102 to i64
  %104 = call i8* @llvm.stacksave()
  store i8* %104, i8** %17, align 8
  %105 = alloca i64, i64 %103, align 16
  store i64 %103, i64* %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = mul nuw i64 8, %103
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @IPToUniStr32(i64* %105, i32 %111, i32 %113)
  br label %120

115:                                              ; preds = %101
  %116 = mul nuw i64 8, %103
  %117 = trunc i64 %116 to i32
  %118 = call i64* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %119 = call i32 @UniStrCpy(i64* %105, i32 %117, i64* %118)
  br label %120

120:                                              ; preds = %115, %109
  %121 = load i32*, i32** %14, align 8
  %122 = call i64* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %123 = call i32 @CtInsert(i32* %121, i64* %122, i64* %105)
  %124 = getelementptr inbounds i64, i64* %105, i64 0
  store i64 0, i64* %124, align 16
  store i64 0, i64* %19, align 8
  br label %125

125:                                              ; preds = %142, %120
  %126 = load i64, i64* %19, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %126, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %125
  %131 = getelementptr inbounds [64 x i64], [64 x i64]* %20, i64 0, i64 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %19, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i64*, i32, i8*, i32, ...) @UniFormat(i64* %131, i32 512, i8* bitcast ([5 x i32]* @.str.7 to i8*), i32 %136)
  %138 = mul nuw i64 8, %103
  %139 = trunc i64 %138 to i32
  %140 = getelementptr inbounds [64 x i64], [64 x i64]* %20, i64 0, i64 0
  %141 = call i32 @UniStrCat(i64* %105, i32 %139, i64* %140)
  br label %142

142:                                              ; preds = %130
  %143 = load i64, i64* %19, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %19, align 8
  br label %125

145:                                              ; preds = %125
  %146 = call i64 @UniEndWith(i64* %105, i8* bitcast ([3 x i32]* @.str.8 to i8*))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = call i32 @UniStrLen(i64* %105)
  %150 = sub nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %105, i64 %151
  store i64 0, i64* %152, align 8
  br label %153

153:                                              ; preds = %148, %145
  %154 = load i32*, i32** %14, align 8
  %155 = call i64* @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %156 = call i32 @CtInsert(i32* %154, i64* %155, i64* %105)
  %157 = mul nuw i64 8, %103
  %158 = trunc i64 %157 to i32
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (i64*, i32, i8*, i32, ...) @UniFormat(i64* %105, i32 %158, i8* bitcast ([6 x i32]* @.str.10 to i8*), i32 %160, i32 %162)
  %164 = load i32*, i32** %14, align 8
  %165 = call i64* @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %166 = call i32 @CtInsert(i32* %164, i64* %165, i64* %105)
  %167 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %167)
  br label %168

168:                                              ; preds = %153, %96
  %169 = load i32*, i32** %14, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = call i32 @CtFree(i32* %169, i32* %170)
  %172 = call i32 @FreeRpcFarm(%struct.TYPE_6__* %13)
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @FreeParamValueList(i32* %173)
  store i64 0, i64* %5, align 8
  br label %175

175:                                              ; preds = %168, %40, %29
  %176 = load i64, i64* %5, align 8
  ret i64 %176
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ScGetFarmSetting(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @CtInsert(i32*, i64*, i64*) #1

declare dso_local i64* @_UU(i8*) #1

declare dso_local i64* @GetServerTypeStr(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniToStru(i64*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @IPToUniStr32(i64*, i32, i32) #1

declare dso_local i32 @UniStrCpy(i64*, i32, i64*) #1

declare dso_local i32 @UniFormat(i64*, i32, i8*, i32, ...) #1

declare dso_local i32 @UniStrCat(i64*, i32, i64*) #1

declare dso_local i64 @UniEndWith(i64*, i8*) #1

declare dso_local i32 @UniStrLen(i64*) #1

declare dso_local i32 @CtFree(i32*, i32*) #1

declare dso_local i32 @FreeRpcFarm(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
