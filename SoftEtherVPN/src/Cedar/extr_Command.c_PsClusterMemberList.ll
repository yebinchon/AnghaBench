; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterMemberList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterMemberList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"CMD_ID\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SM_FM_COLUMN_1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"SM_FM_COLUMN_2\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"SM_FM_COLUMN_3\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"SM_FM_COLUMN_4\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"SM_FM_COLUMN_5\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"SM_FM_COLUMN_6\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"SM_FM_COLUMN_7\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"SM_FM_COLUMN_8\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"SM_FM_COLUMN_9\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"SM_FM_CONTROLLER\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"SM_FM_MEMBER\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsClusterMemberList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca [64 x i32], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [64 x i32], align 16
  %22 = alloca [64 x i32], align 16
  %23 = alloca [64 x i32], align 16
  %24 = alloca [64 x i32], align 16
  %25 = alloca [64 x i32], align 16
  %26 = alloca [64 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %11, align 8
  store i64 0, i64* %12, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @ParseCommandList(i32* %29, i8* %30, i32* %31, i32* null, i32 0)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %36, i64* %5, align 8
  br label %180

37:                                               ; preds = %4
  %38 = call i32 @Zero(%struct.TYPE_8__* %13, i32 16)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ScEnumFarmMember(i32 %41, %struct.TYPE_8__* %13)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @ERR_NO_ERROR, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @CmdPrintError(i32* %47, i64 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @FreeParamValueList(i32* %50)
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %5, align 8
  br label %180

53:                                               ; preds = %37
  %54 = call i32* (...) @CtNew()
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @CtInsertColumn(i32* %55, i32 %56, i32 1)
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @CtInsertColumn(i32* %58, i32 %59, i32 0)
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @CtInsertColumn(i32* %61, i32 %62, i32 0)
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %66 = call i32 @CtInsertColumn(i32* %64, i32 %65, i32 0)
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %69 = call i32 @CtInsertColumn(i32* %67, i32 %68, i32 1)
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %72 = call i32 @CtInsertColumn(i32* %70, i32 %71, i32 1)
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %75 = call i32 @CtInsertColumn(i32* %73, i32 %74, i32 1)
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %78 = call i32 @CtInsertColumn(i32* %76, i32 %77, i32 1)
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %81 = call i32 @CtInsertColumn(i32* %79, i32 %80, i32 1)
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %84 = call i32 @CtInsertColumn(i32* %82, i32 %83, i32 1)
  store i64 0, i64* %15, align 8
  br label %85

85:                                               ; preds = %170, %53
  %86 = load i64, i64* %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %90, label %173

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i64, i64* %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %93
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %16, align 8
  %95 = load i32, i32* @MAX_SIZE, align 4
  %96 = zext i32 %95 to i64
  %97 = call i8* @llvm.stacksave()
  store i8* %97, i8** %18, align 8
  %98 = alloca i32, i64 %96, align 16
  store i64 %96, i64* %19, align 8
  %99 = load i32, i32* @MAX_SIZE, align 4
  %100 = zext i32 %99 to i64
  %101 = alloca i32, i64 %100, align 16
  store i64 %100, i64* %20, align 8
  %102 = mul nuw i64 4, %96
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @SystemToLocal64(i32 %106)
  %108 = call i32 @GetDateTimeStrEx64(i32* %98, i32 %103, i32 %107, i32* null)
  %109 = mul nuw i64 4, %100
  %110 = trunc i64 %109 to i32
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @StrToUni(i32* %101, i32 %110, i32 %113)
  %115 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @UniToStru(i32* %115, i32 %118)
  %120 = getelementptr inbounds [64 x i32], [64 x i32]* %22, i64 0, i64 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @UniToStru(i32* %120, i32 %123)
  %125 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i64 0, i64 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @UniToStru(i32* %125, i32 %128)
  %130 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @UniToStru(i32* %130, i32 %133)
  %135 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @UniToStru(i32* %135, i32 %138)
  %140 = getelementptr inbounds [64 x i32], [64 x i32]* %26, i64 0, i64 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @UniToStru(i32* %140, i32 %143)
  %145 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @UniToStru(i32* %145, i32 %148)
  %150 = load i32*, i32** %14, align 8
  %151 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %90
  %157 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %160

158:                                              ; preds = %90
  %159 = call i32 @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  %162 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 0
  %163 = getelementptr inbounds [64 x i32], [64 x i32]* %22, i64 0, i64 0
  %164 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i64 0, i64 0
  %165 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %166 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 0
  %167 = getelementptr inbounds [64 x i32], [64 x i32]* %26, i64 0, i64 0
  %168 = call i32 @CtInsert(i32* %150, i32* %151, i32 %161, i32* %98, i32* %101, i32* %162, i32* %163, i32* %164, i32* %165, i32* %166, i32* %167)
  %169 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %169)
  br label %170

170:                                              ; preds = %160
  %171 = load i64, i64* %15, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %15, align 8
  br label %85

173:                                              ; preds = %85
  %174 = load i32*, i32** %14, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 @CtFree(i32* %174, i32* %175)
  %177 = call i32 @FreeRpcEnumFarm(%struct.TYPE_8__* %13)
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @FreeParamValueList(i32* %178)
  store i64 0, i64* %5, align 8
  br label %180

180:                                              ; preds = %173, %46, %35
  %181 = load i64, i64* %5, align 8
  ret i64 %181
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ScEnumFarmMember(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

declare dso_local i32 @_UU(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetDateTimeStrEx64(i32*, i32, i32, i32*) #1

declare dso_local i32 @SystemToLocal64(i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFree(i32*, i32*) #1

declare dso_local i32 @FreeRpcEnumFarm(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
