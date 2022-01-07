; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLicenseList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLicenseList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"SM_LICENSE_COLUMN_1\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SM_LICENSE_COLUMN_2\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SM_LICENSE_COLUMN_3\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"SM_LICENSE_COLUMN_4\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"SM_LICENSE_COLUMN_5\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"SM_LICENSE_COLUMN_6\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"SM_LICENSE_COLUMN_7\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"SM_LICENSE_COLUMN_8\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"SM_LICENSE_COLUMN_9\00", align 1
@LICENSE_KEYSTR_LEN = common dso_local global i32 0, align 4
@LICENSE_MAX_PRODUCT_NAME_LEN = common dso_local global i32 0, align 4
@LICENSE_LICENSEID_STR_LEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"SM_LICENSE_NO_EXPIRES\00", align 1
@.str.10 = private unnamed_addr constant [6 x i32] [i32 37, i32 73, i32 54, i32 52, i32 117, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsLicenseList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
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
  %16 = alloca [32 x i32], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca [128 x i32], align 16
  %22 = alloca i64, align 8
  %23 = alloca [64 x i32], align 16
  %24 = alloca [64 x i32], align 16
  %25 = alloca [64 x i32], align 16
  %26 = alloca %struct.TYPE_7__*, align 8
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
  br label %181

37:                                               ; preds = %4
  %38 = call i32 @Zero(%struct.TYPE_8__* %13, i32 16)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ScEnumLicenseKey(i32 %41, %struct.TYPE_8__* %13)
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
  br label %181

53:                                               ; preds = %37
  %54 = call i32* (...) @CtNew()
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @CtInsertColumn(i32* %55, i32 %56, i32 0)
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @CtInsertColumn(i32* %58, i32 %59, i32 0)
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @CtInsertColumn(i32* %61, i32 %62, i32 0)
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %66 = call i32 @CtInsertColumn(i32* %64, i32 %65, i32 0)
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %69 = call i32 @CtInsertColumn(i32* %67, i32 %68, i32 0)
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %72 = call i32 @CtInsertColumn(i32* %70, i32 %71, i32 0)
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %75 = call i32 @CtInsertColumn(i32* %73, i32 %74, i32 0)
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %78 = call i32 @CtInsertColumn(i32* %76, i32 %77, i32 0)
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %81 = call i32 @CtInsertColumn(i32* %79, i32 %80, i32 0)
  store i64 0, i64* %15, align 8
  br label %82

82:                                               ; preds = %171, %53
  %83 = load i64, i64* %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %87, label %174

87:                                               ; preds = %82
  %88 = load i32, i32* @LICENSE_KEYSTR_LEN, align 4
  %89 = add nsw i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = call i8* @llvm.stacksave()
  store i8* %91, i8** %17, align 8
  %92 = alloca i32, i64 %90, align 16
  store i64 %90, i64* %18, align 8
  %93 = load i32, i32* @LICENSE_MAX_PRODUCT_NAME_LEN, align 4
  %94 = add nsw i32 %93, 1
  %95 = zext i32 %94 to i64
  %96 = alloca i32, i64 %95, align 16
  store i64 %95, i64* %19, align 8
  %97 = load i32, i32* @LICENSE_LICENSEID_STR_LEN, align 4
  %98 = add nsw i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = alloca i32, i64 %99, align 16
  store i64 %99, i64* %22, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %103
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %26, align 8
  %105 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @UniToStru(i32* %105, i32 %108)
  %110 = mul nuw i64 4, %90
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @StrToUni(i32* %92, i32 %111, i32 %114)
  %116 = mul nuw i64 4, %95
  %117 = trunc i64 %116 to i32
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @StrToUni(i32* %96, i32 %117, i32 %120)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32* @LiGetLicenseStatusStr(i32 %124)
  store i32* %125, i32** %20, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %87
  %131 = getelementptr inbounds [128 x i32], [128 x i32]* %21, i64 0, i64 0
  %132 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %133 = call i32 @UniStrCpy(i32* %131, i32 512, i32 %132)
  br label %140

134:                                              ; preds = %87
  %135 = getelementptr inbounds [128 x i32], [128 x i32]* %21, i64 0, i64 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @GetDateStrEx64(i32* %135, i32 512, i64 %138, i32* null)
  br label %140

140:                                              ; preds = %134, %130
  %141 = mul nuw i64 4, %99
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @StrToUni(i32* %100, i32 %142, i32 %145)
  %147 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i64 0, i64 0
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @UniToStru(i32* %147, i32 %150)
  %152 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @UniFormat(i32* %152, i32 256, i8* bitcast ([6 x i32]* @.str.10 to i8*), i32 %155)
  %157 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 0
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @UniToStru(i32* %157, i32 %160)
  %162 = load i32*, i32** %14, align 8
  %163 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %164 = load i32*, i32** %20, align 8
  %165 = getelementptr inbounds [128 x i32], [128 x i32]* %21, i64 0, i64 0
  %166 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i64 0, i64 0
  %167 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %168 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 0
  %169 = call i32 @CtInsert(i32* %162, i32* %163, i32* %92, i32* %96, i32* %164, i32* %165, i32* %100, i32* %166, i32* %167, i32* %168)
  %170 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %170)
  br label %171

171:                                              ; preds = %140
  %172 = load i64, i64* %15, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %15, align 8
  br label %82

174:                                              ; preds = %82
  %175 = load i32*, i32** %14, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 @CtFreeEx(i32* %175, i32* %176, i32 1)
  %178 = call i32 @FreeRpcEnumLicenseKey(%struct.TYPE_8__* %13)
  %179 = load i32*, i32** %10, align 8
  %180 = call i32 @FreeParamValueList(i32* %179)
  store i64 0, i64* %5, align 8
  br label %181

181:                                              ; preds = %174, %46, %35
  %182 = load i64, i64* %5, align 8
  ret i64 %182
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ScEnumLicenseKey(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

declare dso_local i32 @_UU(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32* @LiGetLicenseStatusStr(i32) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32) #1

declare dso_local i32 @GetDateStrEx64(i32*, i32, i64, i32*) #1

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, i32*, i32) #1

declare dso_local i32 @FreeRpcEnumLicenseKey(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
