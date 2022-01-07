; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpn16/extr_vpn16.c_InstallNDIDevice.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpn16/extr_vpn16.c_InstallNDIDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32, i32*, i64, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"NetTrans\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Net\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"NetClient\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"NetService\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Net.inf\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Nettrans.inf\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Netcli.inf\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Netservr.inf\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Ndi\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Bindings\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"DeviceID\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"DriverDesc\00", align 1
@REGSTR_VAL_COMPATIBLEIDS = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"Enum\\Network\\\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Enum\\Filter\\\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"\\Temp\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"VSERVER\00", align 1
@OK = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i8* null, align 8
@DIREG_DEV = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@DI_ENUMSINGLEINF = common dso_local global i32 0, align 4
@DI_NOVCP = common dso_local global i32 0, align 4
@DI_NOFILECOPY = common dso_local global i32 0, align 4
@DI_QUIETINSTALL = common dso_local global i32 0, align 4
@DIF_INSTALLDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @InstallNDIDevice(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_9__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %20, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %21, align 8
  %30 = load i8*, i8** @REGSTR_VAL_COMPATIBLEIDS, align 8
  store i8* %30, i8** %22, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8** %23, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %24, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %25, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %26, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %27, align 8
  %31 = load i64, i64* @OK, align 8
  store i64 %31, i64* %28, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @DiCreateDeviceInfo(%struct.TYPE_9__** %27, i32* null, i32 0, i32* null, i32* null, i8* %32, i32* null)
  store i64 %33, i64* %28, align 8
  %34 = load i64, i64* %28, align 8
  %35 = load i64, i64* @OK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %171

37:                                               ; preds = %4
  %38 = load i8*, i8** @HKEY_LOCAL_MACHINE, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %23, align 8
  %46 = call i32 @lstrcpy(i32 %44, i8* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @lstrcat(i32 %49, i8* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %25, align 8
  %58 = call i32 @lstrcat(i32 %56, i8* %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %60 = load i32, i32* @DIREG_DEV, align 4
  %61 = call i64 @DiCreateDevRegKey(%struct.TYPE_9__* %59, i32* %29, i32* null, i32* null, i32 %60)
  store i64 %61, i64* %28, align 8
  %62 = load i64, i64* %28, align 8
  %63 = load i64, i64* @OK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %167

65:                                               ; preds = %37
  %66 = load i32, i32* %29, align 4
  %67 = load i8*, i8** %22, align 8
  %68 = load i32, i32* @REG_SZ, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i64 @lstrlen(i8* %70)
  %72 = add nsw i64 %71, 1
  %73 = call i64 @SURegSetValueEx(i32 %66, i8* %67, i32 0, i32 %68, i8* %69, i64 %72)
  %74 = load i64, i64* @ERROR_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %160

76:                                               ; preds = %65
  %77 = load i8*, i8** %7, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @GlobalAddAtom(i8* %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = icmp ne i32 %81, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i32, i32* @DI_ENUMSINGLEINF, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %85, %79
  br label %92

92:                                               ; preds = %91, %76
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %94 = call i64 @DiBuildCompatDrvList(%struct.TYPE_9__* %93)
  store i64 %94, i64* %28, align 8
  %95 = load i32, i32* %29, align 4
  %96 = call i32 @SURegCloseKey(i32 %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %98 = load i32, i32* @DIREG_DEV, align 4
  %99 = call i32 @DiDeleteDevRegKey(%struct.TYPE_9__* %97, i32 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  store i32* null, i32** %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @lstrcpy(i32 %104, i8* %105)
  %107 = load i64, i64* %28, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %92
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109, %92
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %116 = call i64 @DiSelectDevice(%struct.TYPE_9__* %115)
  store i64 %116, i64* %28, align 8
  br label %123

117:                                              ; preds = %109
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 5
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %117, %114
  %124 = load i64, i64* %28, align 8
  %125 = load i64, i64* @OK, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %156

127:                                              ; preds = %123
  %128 = load i8*, i8** %8, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = load i8*, i8** @HKEY_LOCAL_MACHINE, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  store i32* %132, i32** %134, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 @lstrcpy(i32 %137, i8* %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %141 = load i32, i32* @DIREG_DEV, align 4
  %142 = call i64 @DiCreateDevRegKey(%struct.TYPE_9__* %140, i32* %29, i32* null, i32* null, i32 %141)
  br label %143

143:                                              ; preds = %130, %127
  %144 = load i32, i32* @DI_NOVCP, align 4
  %145 = load i32, i32* @DI_NOFILECOPY, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @DI_QUIETINSTALL, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i32, i32* @DIF_INSTALLDEVICE, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %155 = call i64 @DiCallClassInstaller(i32 %153, %struct.TYPE_9__* %154)
  store i64 %155, i64* %28, align 8
  br label %159

156:                                              ; preds = %123
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %158 = call i32 @DiDestroyDeviceInfoList(%struct.TYPE_9__* %157)
  br label %159

159:                                              ; preds = %156, %143
  br label %166

160:                                              ; preds = %65
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %162 = load i32, i32* @DIREG_DEV, align 4
  %163 = call i32 @DiDeleteDevRegKey(%struct.TYPE_9__* %161, i32 %162)
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %165 = call i32 @DiDestroyDeviceInfoList(%struct.TYPE_9__* %164)
  br label %166

166:                                              ; preds = %160, %159
  br label %170

167:                                              ; preds = %37
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %169 = call i32 @DiDestroyDeviceInfoList(%struct.TYPE_9__* %168)
  br label %170

170:                                              ; preds = %167, %166
  br label %171

171:                                              ; preds = %170, %4
  %172 = load i64, i64* %28, align 8
  ret i64 %172
}

declare dso_local i64 @DiCreateDeviceInfo(%struct.TYPE_9__**, i32*, i32, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @lstrcpy(i32, i8*) #1

declare dso_local i32 @lstrcat(i32, i8*) #1

declare dso_local i64 @DiCreateDevRegKey(%struct.TYPE_9__*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @SURegSetValueEx(i32, i8*, i32, i32, i8*, i64) #1

declare dso_local i64 @lstrlen(i8*) #1

declare dso_local i32 @GlobalAddAtom(i8*) #1

declare dso_local i64 @DiBuildCompatDrvList(%struct.TYPE_9__*) #1

declare dso_local i32 @SURegCloseKey(i32) #1

declare dso_local i32 @DiDeleteDevRegKey(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @DiSelectDevice(%struct.TYPE_9__*) #1

declare dso_local i64 @DiCallClassInstaller(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @DiDestroyDeviceInfoList(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
