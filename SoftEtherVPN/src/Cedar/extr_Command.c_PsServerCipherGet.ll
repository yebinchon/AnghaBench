; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerCipherGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerCipherGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*, i8*)* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32* }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i32] [i32 32, i32 37, i32 83, i32 0], align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CMD_ServerCipherGet_SERVER\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.3 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"CMD_ServerCipherGet_CIPHERS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsServerCipherGet(%struct.TYPE_22__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [4096 x i8], align 16
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32* @ParseCommandList(%struct.TYPE_22__* %19, i8* %20, i8* %21, i32* null, i32 0)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %26, i64* %5, align 8
  br label %115

27:                                               ; preds = %4
  %28 = call i32 @Zero(%struct.TYPE_20__* %13, i32 4)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ScGetServerCipher(i32 %31, %struct.TYPE_20__* %13)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @ERR_NO_ERROR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @CmdPrintError(%struct.TYPE_22__* %37, i64 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @FreeParamValueList(i32* %40)
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %5, align 8
  br label %115

43:                                               ; preds = %27
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @UniFormat(i8* %44, i32 4096, i8* bitcast ([4 x i32]* @.str to i8*), i32 %46)
  %48 = call i32 @FreeRpcStr(%struct.TYPE_20__* %13)
  %49 = call i32 @Zero(%struct.TYPE_20__* %13, i32 4)
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %51, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %54 = call i8* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 %52(%struct.TYPE_22__* %53, i8* %54)
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %57, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %60 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %61 = call i32 %58(%struct.TYPE_22__* %59, i8* %60)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @ScGetServerCipherList(i32 %64, %struct.TYPE_20__* %13)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @ERR_NO_ERROR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %43
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_19__* @ParseToken(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_19__* %72, %struct.TYPE_19__** %14, align 8
  %73 = call i32 @FreeRpcStr(%struct.TYPE_20__* %13)
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %78 = call i32 %76(%struct.TYPE_22__* %77, i8* bitcast ([1 x i32]* @.str.3 to i8*))
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %80, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %83 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %84 = call i32 %81(%struct.TYPE_22__* %82, i8* %83)
  store i64 0, i64* %15, align 8
  br label %85

85:                                               ; preds = %106, %69
  %86 = load i64, i64* %15, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %85
  %92 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %15, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @UniFormat(i8* %92, i32 4096, i8* bitcast ([4 x i32]* @.str to i8*), i32 %98)
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %101, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %105 = call i32 %102(%struct.TYPE_22__* %103, i8* %104)
  br label %106

106:                                              ; preds = %91
  %107 = load i64, i64* %15, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %15, align 8
  br label %85

109:                                              ; preds = %85
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %111 = call i32 @FreeToken(%struct.TYPE_19__* %110)
  br label %112

112:                                              ; preds = %109, %43
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @FreeParamValueList(i32* %113)
  store i64 0, i64* %5, align 8
  br label %115

115:                                              ; preds = %112, %36, %25
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local i32* @ParseCommandList(%struct.TYPE_22__*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ScGetServerCipher(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @UniFormat(i8*, i32, i8*, i32) #1

declare dso_local i32 @FreeRpcStr(%struct.TYPE_20__*) #1

declare dso_local i8* @_UU(i8*) #1

declare dso_local i64 @ScGetServerCipherList(i32, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @ParseToken(i32, i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
