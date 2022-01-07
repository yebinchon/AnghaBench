; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcConnect.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8* (%struct.TYPE_14__*, i8*)*, i32 (%struct.TYPE_14__*, i8*)* }
%struct.TYPE_13__ = type { i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CMD_VPNCMD_CLIENT_NO_REMODE\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"CMD_VPNCMD_PASSWORD_1\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"CMD_VPNCMD_PASSWORD_2\00", align 1
@.str.3 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@ERR_ACCESS_DENIED = common dso_local global i32 0, align 4
@ERR_CONNECT_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PcConnect(%struct.TYPE_14__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i32, i32* @MAX_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = icmp eq %struct.TYPE_14__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %4
  %30 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

31:                                               ; preds = %26
  %32 = trunc i64 %21 to i32
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @StrCpy(i8* %23, i32 %32, i8* %33)
  %35 = call i32* @NewCedar(i32* null, i32* null)
  store i32* %35, i32** %10, align 8
  br label %36

36:                                               ; preds = %87, %31
  %37 = load i8*, i8** %7, align 8
  %38 = call i32* @CcConnectRpc(i8* %37, i8* %23, i32* %12, i32* %13, i32 0)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %95

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32 (%struct.TYPE_14__*, i8*)*, i32 (%struct.TYPE_14__*, i8*)** %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 %47(%struct.TYPE_14__* %48, i8* %49)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @ReleaseCedar(i32* %51)
  %53 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

54:                                               ; preds = %41
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %54
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32 (%struct.TYPE_14__*, i8*)*, i32 (%struct.TYPE_14__*, i8*)** %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 %60(%struct.TYPE_14__* %61, i8* %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i8* (%struct.TYPE_14__*, i8*)*, i8* (%struct.TYPE_14__*, i8*)** %65, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i8* %66(%struct.TYPE_14__* %67, i8* %68)
  store i8* %69, i8** %18, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32 (%struct.TYPE_14__*, i8*)*, i32 (%struct.TYPE_14__*, i8*)** %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = call i32 %72(%struct.TYPE_14__* %73, i8* bitcast ([1 x i32]* @.str.3 to i8*))
  %75 = load i8*, i8** %18, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %57
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @ReleaseCedar(i32* %78)
  %80 = load i32, i32* @ERR_ACCESS_DENIED, align 4
  store i32 %80, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

81:                                               ; preds = %57
  %82 = trunc i64 %21 to i32
  %83 = load i8*, i8** %18, align 8
  %84 = call i32 @StrCpy(i8* %23, i32 %82, i8* %83)
  %85 = load i8*, i8** %18, align 8
  %86 = call i32 @Free(i8* %85)
  br label %87

87:                                               ; preds = %81
  br label %36

88:                                               ; preds = %54
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = load i32, i32* @ERR_CONNECT_FAILED, align 4
  %91 = call i32 @CmdPrintError(%struct.TYPE_14__* %89, i32 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @ReleaseCedar(i32* %92)
  %94 = load i32, i32* @ERR_CONNECT_FAILED, align 4
  store i32 %94, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

95:                                               ; preds = %36
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call %struct.TYPE_13__* @NewPc(%struct.TYPE_14__* %96, i32* %97, i8* %98, i32* %99)
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %19, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %102 = call i32 @PcMain(%struct.TYPE_13__* %101)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %16, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %107 = call i32 @FreePc(%struct.TYPE_13__* %106)
  br label %108

108:                                              ; preds = %95
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @CcDisconnectRpc(i32* %109)
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @ReleaseCedar(i32* %111)
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

114:                                              ; preds = %108, %88, %77, %44, %29
  %115 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32* @NewCedar(i32*, i32*) #2

declare dso_local i32* @CcConnectRpc(i8*, i8*, i32*, i32*, i32) #2

declare dso_local i8* @_UU(i8*) #2

declare dso_local i32 @ReleaseCedar(i32*) #2

declare dso_local i32 @Free(i8*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_14__*, i32) #2

declare dso_local %struct.TYPE_13__* @NewPc(%struct.TYPE_14__*, i32*, i8*, i32*) #2

declare dso_local i32 @PcMain(%struct.TYPE_13__*) #2

declare dso_local i32 @FreePc(%struct.TYPE_13__*) #2

declare dso_local i32 @CcDisconnectRpc(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
