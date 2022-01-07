; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAccessList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAccessList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"SM_ACCESS_COLUMN_0\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"SM_ACCESS_COLUMN_1\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"SM_ACCESS_COLUMN_2\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"SM_ACCESS_COLUMN_3\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"SM_ACCESS_COLUMN_6\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"SM_ACCESS_COLUMN_5\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"SM_ACCESS_COLUMN_4\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"SEC_NONE\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"SM_ACCESS_DISCARD\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"SM_ACCESS_PASS\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"SM_ACCESS_ENABLE\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"SM_ACCESS_DISABLE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsAccessList(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
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
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %31, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 %32(%struct.TYPE_16__* %33, i32 %34)
  %36 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %36, i64* %5, align 8
  br label %181

37:                                               ; preds = %4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* @ParseCommandList(%struct.TYPE_16__* %38, i8* %39, i32* %40, i32* null, i32 0)
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %45, i64* %5, align 8
  br label %181

46:                                               ; preds = %37
  %47 = call i32 @Zero(%struct.TYPE_14__* %13, i32 24)
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @StrCpy(i32 %49, i32 4, i32* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @ScEnumAccess(i32 %56, %struct.TYPE_14__* %13)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @ERR_NO_ERROR, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %46
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @CmdPrintError(%struct.TYPE_16__* %62, i64 %63)
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @FreeParamValueList(i32* %65)
  %67 = load i64, i64* %12, align 8
  store i64 %67, i64* %5, align 8
  br label %181

68:                                               ; preds = %46
  %69 = call i32* (...) @CtNew()
  store i32* %69, i32** %14, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 @CtInsertColumn(i32* %70, i32 %71, i32 1)
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 @CtInsertColumn(i32* %73, i32 %74, i32 1)
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 @CtInsertColumn(i32* %76, i32 %77, i32 1)
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %81 = call i32 @CtInsertColumn(i32* %79, i32 %80, i32 1)
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %84 = call i32 @CtInsertColumn(i32* %82, i32 %83, i32 1)
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %87 = call i32 @CtInsertColumn(i32* %85, i32 %86, i32 0)
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %90 = call i32 @CtInsertColumn(i32* %88, i32 %89, i32 0)
  store i64 0, i64* %15, align 8
  br label %91

91:                                               ; preds = %171, %68
  %92 = load i64, i64* %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %96, label %174

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = load i64, i64* %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i64 %99
  store %struct.TYPE_17__* %100, %struct.TYPE_17__** %16, align 8
  %101 = load i32, i32* @MAX_SIZE, align 4
  %102 = zext i32 %101 to i64
  %103 = call i8* @llvm.stacksave()
  store i8* %103, i8** %17, align 8
  %104 = alloca i8, i64 %102, align 16
  store i64 %102, i64* %18, align 8
  %105 = load i32, i32* @MAX_SIZE, align 4
  %106 = zext i32 %105 to i64
  %107 = alloca i32, i64 %106, align 16
  store i64 %106, i64* %19, align 8
  %108 = load i32, i32* @MAX_SIZE, align 4
  %109 = zext i32 %108 to i64
  %110 = alloca i32, i64 %109, align 16
  store i64 %109, i64* %20, align 8
  %111 = load i32, i32* @MAX_SIZE, align 4
  %112 = zext i32 %111 to i64
  %113 = alloca i32, i64 %112, align 16
  store i64 %112, i64* %21, align 8
  %114 = load i32, i32* @MAX_SIZE, align 4
  %115 = zext i32 %114 to i64
  %116 = alloca i32, i64 %115, align 16
  store i64 %115, i64* %22, align 8
  %117 = trunc i64 %102 to i32
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %119 = call i32 @GetAccessListStr(i8* %104, i32 %117, %struct.TYPE_17__* %118)
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @UniToStru(i32* %110, i64 %122)
  %124 = mul nuw i64 4, %112
  %125 = trunc i64 %124 to i32
  %126 = call i32 @StrToUni(i32* %113, i32 %125, i8* %104)
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @UniToStru(i32* %116, i64 %129)
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %96
  %136 = mul nuw i64 4, %115
  %137 = trunc i64 %136 to i32
  %138 = call i32 @_UU(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %139 = call i32 @UniStrCpy(i32* %116, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %96
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @UniToStru(i32* %107, i64 %143)
  %145 = load i32*, i32** %14, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %140
  %151 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %154

152:                                              ; preds = %140
  %153 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %164

162:                                              ; preds = %154
  %163 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @CtInsert(i32* %145, i32* %107, i32 %155, i32 %165, i32* %110, i32* %116, i32* %113, i32 %168)
  %170 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %170)
  br label %171

171:                                              ; preds = %164
  %172 = load i64, i64* %15, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %15, align 8
  br label %91

174:                                              ; preds = %91
  %175 = load i32*, i32** %14, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %177 = call i32 @CtFreeEx(i32* %175, %struct.TYPE_16__* %176, i32 1)
  %178 = call i32 @FreeRpcEnumAccessList(%struct.TYPE_14__* %13)
  %179 = load i32*, i32** %10, align 8
  %180 = call i32 @FreeParamValueList(i32* %179)
  store i64 0, i64* %5, align 8
  br label %181

181:                                              ; preds = %174, %61, %44, %29
  %182 = load i64, i64* %5, align 8
  ret i64 %182
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScEnumAccess(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetAccessListStr(i8*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @UniToStru(i32*, i64) #1

declare dso_local i32 @StrToUni(i32*, i32, i8*) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32, i32, i32*, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @FreeRpcEnumAccessList(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
