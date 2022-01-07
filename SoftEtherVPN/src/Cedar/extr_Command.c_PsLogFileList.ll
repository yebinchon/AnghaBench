; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLogFileList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLogFileList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i8*)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i8*, i32, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"CMD_LogFileList_START\00", align 1
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"CMD_LogFileList_NUM_LOGS\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SM_LOG_FILE_COLUMN_1\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"SM_LOG_FILE_COLUMN_2\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SM_LOG_FILE_COLUMN_3\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"SM_LOG_FILE_COLUMN_4\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@MAX_HOST_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsLogFileList(%struct.TYPE_18__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca [128 x i8], align 16
  %22 = alloca [128 x i8], align 16
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %12, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32* @ParseCommandList(%struct.TYPE_18__* %27, i8* %28, i8* %29, i32* null, i32 0)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %34, i64* %5, align 8
  br label %151

35:                                               ; preds = %4
  %36 = call i32 @Zero(%struct.TYPE_16__* %13, i32 16)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_18__*, i8*)*, i32 (%struct.TYPE_18__*, i8*)** %38, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 %39(%struct.TYPE_18__* %40, i8* %41)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_18__*, i8*)*, i32 (%struct.TYPE_18__*, i8*)** %44, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = call i32 %45(%struct.TYPE_18__* %46, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ScEnumLogFile(i32 %50, %struct.TYPE_16__* %13)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @ERR_NO_ERROR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %35
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @CmdPrintError(%struct.TYPE_18__* %56, i64 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @FreeParamValueList(i32* %59)
  %61 = load i64, i64* %12, align 8
  store i64 %61, i64* %5, align 8
  br label %151

62:                                               ; preds = %35
  %63 = load i32, i32* @MAX_SIZE, align 4
  %64 = zext i32 %63 to i64
  %65 = call i8* @llvm.stacksave()
  store i8* %65, i8** %15, align 8
  %66 = alloca i8, i64 %64, align 16
  store i64 %64, i64* %16, align 8
  %67 = trunc i64 %64 to i32
  %68 = call i8* @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @UniFormat(i8* %66, i32 %67, i8* %68, i64 %70)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_18__*, i8*)*, i32 (%struct.TYPE_18__*, i8*)** %73, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = call i32 %74(%struct.TYPE_18__* %75, i8* %66)
  %77 = call i32* (...) @CtNew()
  store i32* %77, i32** %17, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @CtInsertColumn(i32* %78, i8* %79, i32 0)
  %81 = load i32*, i32** %17, align 8
  %82 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %83 = call i32 @CtInsertColumn(i32* %81, i8* %82, i32 1)
  %84 = load i32*, i32** %17, align 8
  %85 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %86 = call i32 @CtInsertColumn(i32* %84, i8* %85, i32 0)
  %87 = load i32*, i32** %17, align 8
  %88 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %89 = call i32 @CtInsertColumn(i32* %87, i8* %88, i32 0)
  store i64 0, i64* %14, align 8
  br label %90

90:                                               ; preds = %139, %62
  %91 = load i64, i64* %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %142

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i64 %98
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %18, align 8
  %100 = load i32, i32* @MAX_PATH, align 4
  %101 = zext i32 %100 to i64
  %102 = call i8* @llvm.stacksave()
  store i8* %102, i8** %19, align 8
  %103 = alloca i8, i64 %101, align 16
  store i64 %101, i64* %20, align 8
  %104 = load i32, i32* @MAX_HOST_NAME_LEN, align 4
  %105 = add nsw i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = alloca i8, i64 %106, align 16
  store i64 %106, i64* %23, align 8
  %108 = load i32, i32* @MAX_SIZE, align 4
  %109 = zext i32 %108 to i64
  %110 = alloca i8, i64 %109, align 16
  store i64 %109, i64* %24, align 8
  %111 = trunc i64 %101 to i32
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @StrToUni(i8* %103, i32 %111, i8* %114)
  %116 = trunc i64 %109 to i32
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ToStrByte(i8* %110, i32 %116, i32 %119)
  %121 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %122 = call i32 @StrToUni(i8* %121, i32 128, i8* %110)
  %123 = getelementptr inbounds [128 x i8], [128 x i8]* %22, i64 0, i64 0
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @SystemToLocal64(i32 %126)
  %128 = call i32 @GetDateTimeStr64Uni(i8* %123, i32 128, i32 %127)
  %129 = trunc i64 %106 to i32
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @StrToUni(i8* %107, i32 %129, i8* %132)
  %134 = load i32*, i32** %17, align 8
  %135 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %136 = getelementptr inbounds [128 x i8], [128 x i8]* %22, i64 0, i64 0
  %137 = call i32 @CtInsert(i32* %134, i8* %103, i8* %135, i8* %136, i8* %107)
  %138 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %138)
  br label %139

139:                                              ; preds = %95
  %140 = load i64, i64* %14, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %14, align 8
  br label %90

142:                                              ; preds = %90
  %143 = load i32*, i32** %17, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %145 = call i32 @CtFreeEx(i32* %143, %struct.TYPE_18__* %144, i32 1)
  %146 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %146)
  br label %147

147:                                              ; preds = %142
  %148 = call i32 @FreeRpcEnumLogFile(%struct.TYPE_16__* %13)
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @FreeParamValueList(i32* %149)
  store i64 0, i64* %5, align 8
  br label %151

151:                                              ; preds = %147, %55, %33
  %152 = load i64, i64* %5, align 8
  ret i64 %152
}

declare dso_local i32* @ParseCommandList(%struct.TYPE_18__*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @_UU(i8*) #1

declare dso_local i64 @ScEnumLogFile(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniFormat(i8*, i32, i8*, i64) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i8*, i32) #1

declare dso_local i32 @StrToUni(i8*, i32, i8*) #1

declare dso_local i32 @ToStrByte(i8*, i32, i32) #1

declare dso_local i32 @GetDateTimeStr64Uni(i8*, i32, i32) #1

declare dso_local i32 @SystemToLocal64(i32) #1

declare dso_local i32 @CtInsert(i32*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @FreeRpcEnumLogFile(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
