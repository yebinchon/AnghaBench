; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteL3SwitchCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteL3SwitchCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"InterfaceList\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Interface%u\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"IpAddress\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"SubnetMask\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"RoutingTable\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Entry%u\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"NetworkAddress\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"GatewayAddress\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Metric\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiWriteL3SwitchCfg(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %15 = load i32, i32* @MAX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %2
  store i32 1, i32* %10, align 4
  br label %116

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CfgAddBool(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32* @CfgCreateFolder(i32* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %32, i32** %6, align 8
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %67, %25
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @LIST_NUM(i32 %37)
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %33
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %5, align 8
  %45 = call i8* @LIST_DATA(i32 %43, i64 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %11, align 8
  %47 = trunc i64 %16 to i32
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @Format(i8* %18, i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32* @CfgCreateFolder(i32* %50, i8* %18)
  store i32* %51, i32** %12, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CfgAddStr(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %12, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @CfgAddIp32(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %12, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @CfgAddIp32(i32* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %40
  %68 = load i64, i64* %5, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %33

70:                                               ; preds = %33
  %71 = load i32*, i32** %3, align 8
  %72 = call i32* @CfgCreateFolder(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32* %72, i32** %7, align 8
  store i64 0, i64* %5, align 8
  br label %73

73:                                               ; preds = %112, %70
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @LIST_NUM(i32 %77)
  %79 = icmp slt i64 %74, %78
  br i1 %79, label %80, label %115

80:                                               ; preds = %73
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %5, align 8
  %85 = call i8* @LIST_DATA(i32 %83, i64 %84)
  %86 = bitcast i8* %85 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %13, align 8
  %87 = trunc i64 %16 to i32
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @Format(i8* %18, i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 %88)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32* @CfgCreateFolder(i32* %90, i8* %18)
  store i32* %91, i32** %14, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @CfgAddIp32(i32* %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %14, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @CfgAddIp32(i32* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %14, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @CfgAddIp32(i32* %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %14, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @CfgAddInt(i32* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %80
  %113 = load i64, i64* %5, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %5, align 8
  br label %73

115:                                              ; preds = %73
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %115, %24
  %117 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %10, align 4
  switch i32 %118, label %120 [
    i32 0, label %119
    i32 1, label %119
  ]

119:                                              ; preds = %116, %116
  ret void

120:                                              ; preds = %116
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CfgAddBool(i32*, i8*, i32) #2

declare dso_local i32* @CfgCreateFolder(i32*, i8*) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local i8* @LIST_DATA(i32, i64) #2

declare dso_local i32 @Format(i8*, i32, i8*, i64) #2

declare dso_local i32 @CfgAddStr(i32*, i8*, i32) #2

declare dso_local i32 @CfgAddIp32(i32*, i8*, i32) #2

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
