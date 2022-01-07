; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerInfoGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerInfoGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"SM_STATUS_COLUMN_1\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SM_STATUS_COLUMN_2\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SM_INFO_PRODUCT_NAME\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"SM_INFO_VERSION\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"SM_INFO_BUILD\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"SM_INFO_HOSTNAME\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SM_ST_SERVER_TYPE\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"SM_OS_SYSTEM_NAME\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"SM_OS_PRODUCT_NAME\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"SM_OS_SP_TAG\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"SM_OS_SERVICE_PACK\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"SM_OS_VENDER_NAME\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"SM_OS_VERSION\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"SM_OS_KERNEL_NAME\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"SM_OS_KERNEL_VERSION\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsServerInfoGet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
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
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %11, align 8
  %20 = load i32, i32* @MAX_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @ParseCommandList(i32* %24, i8* %25, i32* %26, i32* null, i32 0)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %31, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %170

32:                                               ; preds = %4
  %33 = call i32 @Zero(%struct.TYPE_8__* %13, i32 56)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ScGetServerInfo(i32 %36, %struct.TYPE_8__* %13)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @ERR_NO_ERROR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @CmdPrintError(i32* %42, i64 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @FreeParamValueList(i32* %45)
  %47 = load i64, i64* %12, align 8
  store i64 %47, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %170

48:                                               ; preds = %32
  %49 = call i32* (...) @CtNew()
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @CtInsertColumn(i32* %50, i32 %51, i32 0)
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @CtInsertColumn(i32* %53, i32 %54, i32 0)
  %56 = mul nuw i64 4, %21
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @StrToUni(i32* %23, i32 %57, i32 %59)
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @CtInsert(i32* %61, i32 %62, i32* %23)
  %64 = mul nuw i64 4, %21
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @StrToUni(i32* %23, i32 %65, i32 %67)
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %71 = call i32 @CtInsert(i32* %69, i32 %70, i32* %23)
  %72 = mul nuw i64 4, %21
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @StrToUni(i32* %23, i32 %73, i32 %75)
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32 @CtInsert(i32* %77, i32 %78, i32* %23)
  %80 = mul nuw i64 4, %21
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @StrToUni(i32* %23, i32 %81, i32 %83)
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %87 = call i32 @CtInsert(i32* %85, i32 %86, i32* %23)
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32* @GetServerTypeStr(i32 %91)
  %93 = call i32 @CtInsert(i32* %88, i32 %89, i32* %92)
  %94 = mul nuw i64 4, %21
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @StrToUni(i32* %23, i32 %95, i32 %98)
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %102 = call i32 @CtInsert(i32* %100, i32 %101, i32* %23)
  %103 = mul nuw i64 4, %21
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @StrToUni(i32* %23, i32 %104, i32 %107)
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %111 = call i32 @CtInsert(i32* %109, i32 %110, i32* %23)
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %48
  %117 = mul nuw i64 4, %21
  %118 = trunc i64 %117 to i32
  %119 = call i32 @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @UniFormat(i32* %23, i32 %118, i32 %119, i64 %122)
  %124 = load i32*, i32** %14, align 8
  %125 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %126 = call i32 @CtInsert(i32* %124, i32 %125, i32* %23)
  br label %127

127:                                              ; preds = %116, %48
  %128 = mul nuw i64 4, %21
  %129 = trunc i64 %128 to i32
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @StrToUni(i32* %23, i32 %129, i32 %132)
  %134 = load i32*, i32** %14, align 8
  %135 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %136 = call i32 @CtInsert(i32* %134, i32 %135, i32* %23)
  %137 = mul nuw i64 4, %21
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @StrToUni(i32* %23, i32 %138, i32 %141)
  %143 = load i32*, i32** %14, align 8
  %144 = call i32 @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %145 = call i32 @CtInsert(i32* %143, i32 %144, i32* %23)
  %146 = mul nuw i64 4, %21
  %147 = trunc i64 %146 to i32
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @StrToUni(i32* %23, i32 %147, i32 %150)
  %152 = load i32*, i32** %14, align 8
  %153 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %154 = call i32 @CtInsert(i32* %152, i32 %153, i32* %23)
  %155 = mul nuw i64 4, %21
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @StrToUni(i32* %23, i32 %156, i32 %159)
  %161 = load i32*, i32** %14, align 8
  %162 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %163 = call i32 @CtInsert(i32* %161, i32 %162, i32* %23)
  %164 = load i32*, i32** %14, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @CtFree(i32* %164, i32* %165)
  %167 = call i32 @FreeRpcServerInfo(%struct.TYPE_8__* %13)
  %168 = load i32*, i32** %10, align 8
  %169 = call i32 @FreeParamValueList(i32* %168)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %170

170:                                              ; preds = %127, %41, %30
  %171 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i64, i64* %5, align 8
  ret i64 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #2

declare dso_local i64 @ScGetServerInfo(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i32* @CtNew(...) #2

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #2

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32 @StrToUni(i32*, i32, i32) #2

declare dso_local i32 @CtInsert(i32*, i32, i32*) #2

declare dso_local i32* @GetServerTypeStr(i32) #2

declare dso_local i32 @UniFormat(i32*, i32, i32, i64) #2

declare dso_local i32 @CtFree(i32*, i32*) #2

declare dso_local i32 @FreeRpcServerInfo(%struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
