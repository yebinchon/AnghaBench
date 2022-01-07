; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsReboot.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsReboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [12 x i8] c"RESETCONFIG\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsReboot(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca [1 x %struct.TYPE_10__], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = bitcast [1 x %struct.TYPE_10__]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 40, i1 false)
  %18 = bitcast i8* %17 to [1 x %struct.TYPE_10__]*
  %19 = getelementptr inbounds [1 x %struct.TYPE_10__], [1 x %struct.TYPE_10__]* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %20, align 16
  %21 = load i32*, i32** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds [1 x %struct.TYPE_10__], [1 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %25 = call i32* @ParseCommandList(i32* %21, i8* %22, i32* %23, %struct.TYPE_10__* %24, i32 1)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %29, i64* %5, align 8
  br label %56

30:                                               ; preds = %4
  %31 = call i32 @Zero(%struct.TYPE_8__* %13, i32 4)
  %32 = load i32*, i32** %10, align 8
  %33 = call i64 @GetParamYes(i32* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ScRebootServer(i32 %40, %struct.TYPE_8__* %13)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @ERR_NO_ERROR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %30
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @CmdPrintError(i32* %46, i64 %47)
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @FreeParamValueList(i32* %49)
  %51 = load i64, i64* %12, align 8
  store i64 %51, i64* %5, align 8
  br label %56

52:                                               ; preds = %30
  %53 = call i32 @FreeRpcTest(%struct.TYPE_8__* %13)
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @FreeParamValueList(i32* %54)
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %52, %45, %28
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #2

declare dso_local i64 @GetParamYes(i32*, i8*) #2

declare dso_local i64 @ScRebootServer(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i32 @FreeRpcTest(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
