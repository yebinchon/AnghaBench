; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiWriteSettingToCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiWriteSettingToCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_12__*, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_11__*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"ClientManagerSetting\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"AutoDeleteCheckDiskFreeSpaceMin\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"AccountDatabase\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"CommonProxySetting\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ProxyType\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ProxyHostName\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ProxyPort\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ProxyUsername\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"ProxyPassword\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"CustomHttpHeader\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"RootCA\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"UnixVLan\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"EncryptedPassword\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"PasswordRemoteOnly\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"UseSecureDeviceId\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"DontSavePassword\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"UserAgent\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"EasyMode\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"LockMode\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"HashedPassword\00", align 1
@OSTYPE_MACOS_X = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CiWriteSettingToCfg(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = icmp eq %struct.TYPE_15__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  br label %169

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @CfgCreateFolder(i32* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @CfgCreateFolder(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 8
  %28 = call i32 @CiWriteClientConfig(i32* %25, i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 7
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CfgAddInt64(i32* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32* @CfgCreateFolder(i32* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32* %37, i32** %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @CiWriteAccountDatabase(%struct.TYPE_15__* %38, i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @CfgCreateFolder(i32* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %89

45:                                               ; preds = %20
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 6
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %11, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CfgAddInt(i32* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CfgAddStr(i32* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CfgAddInt(i32* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %10, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @CfgAddStr(i32* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @IsEmptyStr(i32 %70)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %45
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @EncryptPassword(i32 %76)
  store i32* %77, i32** %12, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @CfgAddBuf(i32* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32* %79)
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @FreeBuf(i32* %81)
  br label %83

83:                                               ; preds = %73, %45
  %84 = load i32*, i32** %10, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @CfgAddStr(i32* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %20
  %90 = load i32*, i32** %4, align 8
  %91 = call i32* @CfgCreateFolder(i32* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store i32* %91, i32** %7, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @CiWriteCAList(%struct.TYPE_15__* %92, i32* %93)
  %95 = call %struct.TYPE_16__* (...) @GetOsInfo()
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @OS_IS_UNIX(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %89
  %101 = load i32*, i32** %4, align 8
  %102 = call i32* @CfgCreateFolder(i32* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store i32* %102, i32** %8, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @CiWriteVLanList(%struct.TYPE_15__* %103, i32* %104)
  br label %106

106:                                              ; preds = %100, %89
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SHA1_SIZE, align 4
  %112 = call i32 @CfgAddByte(i32* %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32*, i32** %4, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @CfgAddBool(i32* %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @CfgAddInt(i32* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %121)
  %123 = load i32*, i32** %4, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @CfgAddBool(i32* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = icmp ne %struct.TYPE_12__* %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %106
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @CfgAddStr(i32* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %132, %106
  %141 = load i32*, i32** %9, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %169

143:                                              ; preds = %140
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  store %struct.TYPE_14__* %146, %struct.TYPE_14__** %13, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @CfgAddBool(i32* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %150)
  %152 = load i32*, i32** %9, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @CfgAddBool(i32* %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %155)
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @IsZero(i32 %159, i32 4)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %143
  %163 = load i32*, i32** %9, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @CfgAddByte(i32* %163, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %166, i32 4)
  br label %168

168:                                              ; preds = %162, %143
  br label %169

169:                                              ; preds = %19, %168, %140
  ret void
}

declare dso_local i32* @CfgCreateFolder(i32*, i8*) #1

declare dso_local i32 @CiWriteClientConfig(i32*, i32*) #1

declare dso_local i32 @CfgAddInt64(i32*, i8*, i32) #1

declare dso_local i32 @CiWriteAccountDatabase(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddStr(i32*, i8*, i32) #1

declare dso_local i32 @IsEmptyStr(i32) #1

declare dso_local i32* @EncryptPassword(i32) #1

declare dso_local i32 @CfgAddBuf(i32*, i8*, i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @CiWriteCAList(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @OS_IS_UNIX(i64) #1

declare dso_local %struct.TYPE_16__* @GetOsInfo(...) #1

declare dso_local i32 @CiWriteVLanList(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @CfgAddByte(i32*, i8*, i32, i32) #1

declare dso_local i32 @CfgAddBool(i32*, i8*, i32) #1

declare dso_local i32 @IsZero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
