; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PtMain.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PtMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i32 (%struct.TYPE_13__*, i8*)* }
%struct.TYPE_12__ = type { i8*, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CMD_VPNCMD_TOOLS_CONNECTED\00", align 1
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"About\00", align 1
@PsAbout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"MakeCert\00", align 1
@PtMakeCert = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"MakeCert2048\00", align 1
@PtMakeCert2048 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"TrafficClient\00", align 1
@PtTrafficClient = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"TrafficServer\00", align 1
@PtTrafficServer = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Check\00", align 1
@PtCheck = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"VPN Tools>\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@CONSOLE_CSV = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"CMD_MSG_OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PtMain(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x %struct.TYPE_12__], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = load i32, i32* @MAX_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %128

18:                                               ; preds = %1
  %19 = trunc i64 %13 to i32
  %20 = call i8* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @UniFormat(i8* %14, i32 %19, i8* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load i32 (%struct.TYPE_13__*, i8*)*, i32 (%struct.TYPE_13__*, i8*)** %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = call i32 %26(%struct.TYPE_13__* %29, i8* %14)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i32 (%struct.TYPE_13__*, i8*)*, i32 (%struct.TYPE_13__*, i8*)** %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = call i32 %35(%struct.TYPE_13__* %38, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  br label %40

40:                                               ; preds = %126, %18
  br label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds [6 x %struct.TYPE_12__], [6 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %43, align 16
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %45 = load i32, i32* @PsAbout, align 4
  store i32 %45, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %49 = load i32, i32* @PtMakeCert, align 4
  store i32 %49, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %51, align 16
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %53 = load i32, i32* @PtMakeCert2048, align 4
  store i32 %53, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %55, align 16
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %57 = load i32, i32* @PtTrafficClient, align 4
  store i32 %57, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %59, align 16
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %61 = load i32, i32* @PtTrafficServer, align 4
  store i32 %61, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i64 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %63, align 16
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %65 = load i32, i32* @PtCheck, align 4
  store i32 %65, i32* %64, align 8
  %66 = trunc i64 %9 to i32
  %67 = call i32 @StrCpy(i8* %11, i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds [6 x %struct.TYPE_12__], [6 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = call i32 @DispatchNextCmdEx(%struct.TYPE_13__* %70, i32* %73, i8* %11, %struct.TYPE_12__* %74, i32 6, %struct.TYPE_11__* %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %41
  br label %127

79:                                               ; preds = %41
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ERR_NO_ERROR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %79
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CONSOLE_CSV, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %92
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load i32 (%struct.TYPE_13__*, i8*)*, i32 (%struct.TYPE_13__*, i8*)** %104, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = call i8* @_UU(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %110 = call i32 %105(%struct.TYPE_13__* %108, i8* %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i32 (%struct.TYPE_13__*, i8*)*, i32 (%struct.TYPE_13__*, i8*)** %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = call i32 %115(%struct.TYPE_13__* %118, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  br label %120

120:                                              ; preds = %100, %92, %79
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %127

126:                                              ; preds = %120
  br label %40

127:                                              ; preds = %125, %78
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %127, %17
  %129 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %6, align 4
  switch i32 %130, label %132 [
    i32 0, label %131
    i32 1, label %131
  ]

131:                                              ; preds = %128, %128
  ret void

132:                                              ; preds = %128
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UniFormat(i8*, i32, i8*) #2

declare dso_local i8* @_UU(i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @DispatchNextCmdEx(%struct.TYPE_13__*, i32*, i8*, %struct.TYPE_12__*, i32, %struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
