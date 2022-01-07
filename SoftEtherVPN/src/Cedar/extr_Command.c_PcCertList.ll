; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcCertList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcCertList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i8*, i8*, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"CMD_CAList_COLUMN_ID\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"CM_CERT_COLUMN_1\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"CM_CERT_COLUMN_2\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"CM_CERT_COLUMN_3\00", align 1
@.str.4 = private unnamed_addr constant [4 x i32] [i32 45, i32 45, i32 45, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcCertList(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [64 x i8], align 16
  %19 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %11, align 8
  %22 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32* @ParseCommandList(i32* %23, i8* %24, i8* %25, i32* null, i32 0)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %30, i64* %5, align 8
  br label %117

31:                                               ; preds = %4
  %32 = call i32 @Zero(%struct.TYPE_8__* %13, i32 16)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @CcEnumCa(i32 %35, %struct.TYPE_8__* %13)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @ERR_NO_ERROR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %105

40:                                               ; preds = %31
  %41 = call i32* (...) @CtNewStandard()
  store i32* %41, i32** %15, align 8
  store i64 0, i64* %14, align 8
  br label %42

42:                                               ; preds = %97, %40
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %47, label %100

47:                                               ; preds = %42
  %48 = load i32, i32* @MAX_SIZE, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %16, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %52, align 8
  %54 = load i64, i64* %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %53, i64 %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %19, align 8
  %57 = trunc i64 %49 to i32
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @SystemToLocal64(i32 %60)
  %62 = call i32 @GetDateStrEx64(i8* %51, i32 %57, i32 %61, i32* null)
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @UniToStru(i8* %63, i32 %66)
  %68 = load i32*, i32** %15, align 8
  %69 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %71 = call i32 @CtInsert(i32* %68, i8* %69, i8* %70)
  %72 = load i32*, i32** %15, align 8
  %73 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @CtInsert(i32* %72, i8* %73, i8* %76)
  %78 = load i32*, i32** %15, align 8
  %79 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @CtInsert(i32* %78, i8* %79, i8* %82)
  %84 = load i32*, i32** %15, align 8
  %85 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %86 = call i32 @CtInsert(i32* %84, i8* %85, i8* %51)
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, 1
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %47
  %93 = load i32*, i32** %15, align 8
  %94 = call i32 @CtInsert(i32* %93, i8* bitcast ([4 x i32]* @.str.4 to i8*), i8* bitcast ([4 x i32]* @.str.4 to i8*))
  br label %95

95:                                               ; preds = %92, %47
  %96 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %96)
  br label %97

97:                                               ; preds = %95
  %98 = load i64, i64* %14, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %14, align 8
  br label %42

100:                                              ; preds = %42
  %101 = load i32*, i32** %15, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @CtFree(i32* %101, i32* %102)
  %104 = call i32 @CiFreeClientEnumCa(%struct.TYPE_8__* %13)
  br label %105

105:                                              ; preds = %100, %31
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* @ERR_NO_ERROR, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32*, i32** %6, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @CmdPrintError(i32* %110, i64 %111)
  br label %113

113:                                              ; preds = %109, %105
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @FreeParamValueList(i32* %114)
  %116 = load i64, i64* %12, align 8
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %113, %29
  %118 = load i64, i64* %5, align 8
  ret i64 %118
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @CcEnumCa(i32, %struct.TYPE_8__*) #1

declare dso_local i32* @CtNewStandard(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetDateStrEx64(i8*, i32, i32, i32*) #1

declare dso_local i32 @SystemToLocal64(i32) #1

declare dso_local i32 @UniToStru(i8*, i32) #1

declare dso_local i32 @CtInsert(i32*, i8*, i8*) #1

declare dso_local i8* @_UU(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFree(i32*, i32*) #1

declare dso_local i32 @CiFreeClientEnumCa(%struct.TYPE_8__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
