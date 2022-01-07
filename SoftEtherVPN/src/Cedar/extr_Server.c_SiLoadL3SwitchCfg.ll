; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadL3SwitchCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadL3SwitchCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8** }
%struct.TYPE_8__ = type { i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"InterfaceList\00", align 1
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"IpAddress\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"SubnetMask\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"RoutingTable\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"NetworkAddress\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"GatewayAddress\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Metric\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadL3SwitchCfg(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  br label %131

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @CfgGetBool(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32* @CfgGetFolder(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %77

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.TYPE_7__* @CfgEnumFolderToTokenList(i32* %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %76

35:                                               ; preds = %30
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %70, %35
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32* @CfgGetFolder(i32* %43, i8* %49)
  store i32* %50, i32** %10, align 8
  %51 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %52 = add nsw i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %11, align 8
  %55 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %12, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = trunc i64 %53 to i32
  %58 = call i32 @CfgGetStr(i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i8* @CfgGetIp32(i32* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %61 = ptrtoint i8* %60 to i64
  store i64 %61, i64* %13, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i8* @CfgGetIp32(i32* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %64 = ptrtoint i8* %63 to i64
  store i64 %64, i64* %14, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @L3AddIf(i32* %65, i8* %55, i64 %66, i64 %67)
  %69 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %69)
  br label %70

70:                                               ; preds = %42
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %5, align 8
  br label %36

73:                                               ; preds = %36
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = call i32 @FreeToken(%struct.TYPE_7__* %74)
  br label %76

76:                                               ; preds = %73, %30
  br label %77

77:                                               ; preds = %76, %23
  %78 = load i32*, i32** %4, align 8
  %79 = call i32* @CfgGetFolder(i32* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32* %79, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %125

82:                                               ; preds = %77
  %83 = load i32*, i32** %7, align 8
  %84 = call %struct.TYPE_7__* @CfgEnumFolderToTokenList(i32* %83)
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %8, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = icmp ne %struct.TYPE_7__* %85, null
  br i1 %86, label %87, label %124

87:                                               ; preds = %82
  store i64 0, i64* %5, align 8
  br label %88

88:                                               ; preds = %118, %87
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %88
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32* @CfgGetFolder(i32* %95, i8* %101)
  store i32* %102, i32** %15, align 8
  %103 = call i32 @Zero(%struct.TYPE_8__* %16, i32 32)
  %104 = load i32*, i32** %15, align 8
  %105 = call i8* @CfgGetIp32(i32* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  store i8* %105, i8** %106, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = call i8* @CfgGetIp32(i32* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  store i8* %108, i8** %109, align 8
  %110 = load i32*, i32** %15, align 8
  %111 = call i8* @CfgGetIp32(i32* %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i8* %111, i8** %112, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @CfgGetInt(i32* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 %114, i32* %115, align 8
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @L3AddTable(i32* %116, %struct.TYPE_8__* %16)
  br label %118

118:                                              ; preds = %94
  %119 = load i64, i64* %5, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %5, align 8
  br label %88

121:                                              ; preds = %88
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = call i32 @FreeToken(%struct.TYPE_7__* %122)
  br label %124

124:                                              ; preds = %121, %82
  br label %125

125:                                              ; preds = %124, %77
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @L3SwStart(i32* %129)
  br label %131

131:                                              ; preds = %22, %128, %125
  ret void
}

declare dso_local i32 @CfgGetBool(i32*, i8*) #1

declare dso_local i32* @CfgGetFolder(i32*, i8*) #1

declare dso_local %struct.TYPE_7__* @CfgEnumFolderToTokenList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CfgGetStr(i32*, i8*, i8*, i32) #1

declare dso_local i8* @CfgGetIp32(i32*, i8*) #1

declare dso_local i32 @L3AddIf(i32*, i8*, i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeToken(%struct.TYPE_7__*) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @CfgGetInt(i32*, i8*) #1

declare dso_local i32 @L3AddTable(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @L3SwStart(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
