; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteConfigurationToCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteConfigurationToCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, %struct.TYPE_15__*, %struct.TYPE_14__*, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@TAG_ROOT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"Region\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ConfigRevision\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ListenerList\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LocalBridgeList\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ServerConfiguration\00", align 1
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"VirtualHUB\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"VirtualLayer3SwitchList\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"b_support_license\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"LicenseManager\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Led\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"LedSpecial\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"b_support_ipsec\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"IPsec\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"DDnsClient\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"LocalHostname\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"ProxyType\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"ProxyHostName\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"ProxyPort\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"ProxyUsername\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"ProxyPassword\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"CustomHttpHeader\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"IPsecMessageDisplayed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SiWriteConfigurationToCfg(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = icmp eq %struct.TYPE_16__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %185

14:                                               ; preds = %1
  %15 = load i8*, i8** @TAG_ROOT, align 8
  %16 = call i32* @CfgCreateFolder(i32* null, i8* %15)
  store i32* %16, i32** %4, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %21 = call i32 @SiGetCurrentRegion(%struct.TYPE_14__* %19, i8* %20, i32 128)
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %24 = call i32 @CfgAddStr(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @CfgAddInt(i32* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32* @CfgCreateFolder(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = call i32 @SiWriteListeners(i32* %31, %struct.TYPE_16__* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @CfgCreateFolder(i32* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = call i32 @SiWriteLocalBridges(i32* %35, %struct.TYPE_16__* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32* @CfgCreateFolder(i32* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = call i32 @SiWriteServerCfg(i32* %39, %struct.TYPE_16__* %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %14
  %48 = load i32*, i32** %4, align 8
  %49 = call i32* @CfgCreateFolder(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = call i32 @SiWriteHubs(i32* %49, %struct.TYPE_16__* %50)
  br label %52

52:                                               ; preds = %47, %14
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load i32*, i32** %4, align 8
  %61 = call i32* @CfgCreateFolder(i32* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = call i32 @SiWriteL3Switchs(i32* %61, %struct.TYPE_16__* %62)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = call i64 @GetServerCapsBool(%struct.TYPE_16__* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i32*, i32** %4, align 8
  %69 = call i32* @CfgCreateFolder(i32* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = call i32 @SiWriteLicenseManager(i32* %69, %struct.TYPE_16__* %70)
  br label %72

72:                                               ; preds = %67, %59
  br label %73

73:                                               ; preds = %72, %52
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @CfgAddBool(i32* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @CfgAddBool(i32* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %78, %73
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = call i64 @GetServerCapsBool(%struct.TYPE_16__* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32*, i32** %4, align 8
  %92 = call i32* @CfgCreateFolder(i32* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = call i32 @SiWriteIPsec(i32* %92, %struct.TYPE_16__* %93)
  br label %95

95:                                               ; preds = %90, %86
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %178

102:                                              ; preds = %95
  %103 = load i32*, i32** %4, align 8
  %104 = call i32* @CfgCreateFolder(i32* %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  store i32* %104, i32** %6, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = icmp eq %struct.TYPE_15__* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @CfgAddBool(i32* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 1)
  br label %177

112:                                              ; preds = %102
  %113 = load i32, i32* @MAX_SIZE, align 4
  %114 = zext i32 %113 to i64
  %115 = call i8* @llvm.stacksave()
  store i8* %115, i8** %7, align 8
  %116 = alloca i8, i64 %114, align 16
  store i64 %114, i64* %8, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @CfgAddBool(i32* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @SHA1_SIZE, align 4
  %126 = call i32 @CfgAddByte(i32* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %124, i32 %125)
  %127 = trunc i64 %114 to i32
  %128 = call i32 @GetMachineHostName(i8* %116, i32 %127)
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @CfgAddStr(i32* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %116)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  store %struct.TYPE_17__* %134, %struct.TYPE_17__** %10, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @CfgAddInt(i32* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %138)
  %140 = load i32*, i32** %6, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @CfgAddStr(i32* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %143)
  %145 = load i32*, i32** %6, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @CfgAddInt(i32* %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 %148)
  %150 = load i32*, i32** %6, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @CfgAddStr(i32* %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %153)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @IsEmptyStr(i32 %157)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %112
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i32* @EncryptPassword(i32 %163)
  store i32* %164, i32** %9, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = call i32 @CfgAddBuf(i32* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32* %166)
  %168 = load i32*, i32** %9, align 8
  %169 = call i32 @FreeBuf(i32* %168)
  br label %170

170:                                              ; preds = %160, %112
  %171 = load i32*, i32** %6, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @CfgAddStr(i32* %171, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* %174)
  %176 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %176)
  br label %177

177:                                              ; preds = %170, %109
  br label %178

178:                                              ; preds = %177, %95
  %179 = load i32*, i32** %4, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @CfgAddBool(i32* %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i32 %182)
  %184 = load i32*, i32** %4, align 8
  store i32* %184, i32** %2, align 8
  br label %185

185:                                              ; preds = %178, %13
  %186 = load i32*, i32** %2, align 8
  ret i32* %186
}

declare dso_local i32* @CfgCreateFolder(i32*, i8*) #1

declare dso_local i32 @SiGetCurrentRegion(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @CfgAddStr(i32*, i8*, i8*) #1

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #1

declare dso_local i32 @SiWriteListeners(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @SiWriteLocalBridges(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @SiWriteServerCfg(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @SiWriteHubs(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @SiWriteL3Switchs(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @GetServerCapsBool(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @SiWriteLicenseManager(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @CfgAddBool(i32*, i8*, i32) #1

declare dso_local i32 @SiWriteIPsec(i32*, %struct.TYPE_16__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CfgAddByte(i32*, i8*, i32, i32) #1

declare dso_local i32 @GetMachineHostName(i8*, i32) #1

declare dso_local i32 @IsEmptyStr(i32) #1

declare dso_local i32* @EncryptPassword(i32) #1

declare dso_local i32 @CfgAddBuf(i32*, i8*, i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
