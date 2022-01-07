; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsHub.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsHub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32*)* }
%struct.TYPE_14__ = type { i32*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"CMD_Hub_Selected\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"CMD_Hub_Unselected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsHub(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca [1 x %struct.TYPE_15__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = bitcast [1 x %struct.TYPE_15__]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false)
  %21 = bitcast i8* %20 to [1 x %struct.TYPE_15__]*
  %22 = getelementptr inbounds [1 x %struct.TYPE_15__], [1 x %struct.TYPE_15__]* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %23, align 16
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds [1 x %struct.TYPE_15__], [1 x %struct.TYPE_15__]* %14, i64 0, i64 0
  %28 = call i32* @ParseCommandList(%struct.TYPE_16__* %24, i8* %25, i32* %26, %struct.TYPE_15__* %27, i32 1)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %32, i64* %5, align 8
  br label %116

33:                                               ; preds = %4
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @GetParamStr(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @IsEmptyStr(i32 %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %94

38:                                               ; preds = %33
  %39 = load i32, i32* @MAX_SIZE, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %15, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %16, align 8
  %43 = call i32 @Zero(%struct.TYPE_13__* %13, i32 4)
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @GetParamStr(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @StrCpy(i32 %45, i32 4, i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @ScGetHubStatus(i32 %51, %struct.TYPE_13__* %13)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @ERR_NO_ERROR, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %38
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @CmdPrintError(%struct.TYPE_16__* %57, i64 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @FreeParamValueList(i32* %60)
  %62 = load i64, i64* %12, align 8
  store i64 %62, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %90

63:                                               ; preds = %38
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @Free(i32* %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32* @CopyStr(i32 %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = mul nuw i64 4, %40
  %80 = trunc i64 %79 to i32
  %81 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @UniFormat(i32* %42, i32 %80, i32* %81, i32 %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %86, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %89 = call i32 %87(%struct.TYPE_16__* %88, i32* %42)
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %73, %56
  %91 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %17, align 4
  switch i32 %92, label %118 [
    i32 0, label %93
    i32 1, label %116
  ]

93:                                               ; preds = %90
  br label %113

94:                                               ; preds = %33
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %101, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %105 = call i32 %102(%struct.TYPE_16__* %103, i32* %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @Free(i32* %108)
  br label %110

110:                                              ; preds = %99, %94
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %110, %93
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @FreeParamValueList(i32* %114)
  store i64 0, i64* %5, align 8
  br label %116

116:                                              ; preds = %113, %90, %31
  %117 = load i64, i64* %5, align 8
  ret i64 %117

118:                                              ; preds = %90
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @IsEmptyStr(i32) #2

declare dso_local i32 @GetParamStr(i32*, i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32) #2

declare dso_local i64 @ScGetHubStatus(i32, %struct.TYPE_13__*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i32 @Free(i32*) #2

declare dso_local i32* @CopyStr(i32) #2

declare dso_local i32 @UniFormat(i32*, i32, i32*, i32) #2

declare dso_local i32* @_UU(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
