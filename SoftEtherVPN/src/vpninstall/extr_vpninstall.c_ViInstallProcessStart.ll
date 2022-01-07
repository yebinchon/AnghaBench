; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViInstallProcessStart.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViInstallProcessStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, i64, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i8*, i8*, i32*, i32, i32, i32* }
%struct.TYPE_10__ = type { i32, i32, i64, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hamcore.se2\00", align 1
@setting = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@IDCANCEL = common dso_local global i32 0, align 4
@P_PROGRESS = common dso_local global i32 0, align 4
@S_SIZEINFO = common dso_local global i32 0, align 4
@S_STATUS = common dso_local global i32 0, align 4
@IDS_INSTALLSTART = common dso_local global i64 0, align 8
@skip = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i32] [i32 111, i32 112, i32 101, i32 110, i32 0], align 4
@SEE_MASK_NOCLOSEPROCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i32] [i32 47, i32 72, i32 73, i32 68, i32 69, i32 83, i32 84, i32 65, i32 82, i32 84, i32 67, i32 79, i32 77, i32 77, i32 65, i32 78, i32 68, i32 58, i32 49, i32 32, i32 47, i32 68, i32 73, i32 83, i32 65, i32 66, i32 76, i32 69, i32 65, i32 85, i32 84, i32 79, i32 73, i32 77, i32 80, i32 79, i32 82, i32 84, i32 58, i32 49, i32 32, i32 47, i32 73, i32 83, i32 87, i32 69, i32 66, i32 73, i32 78, i32 83, i32 84, i32 65, i32 76, i32 76, i32 69, i32 82, i32 58, i32 49, i32 0], align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@MB_ICONSTOP = common dso_local global i32 0, align 4
@IDS_INSTALLSTART_ERROR = common dso_local global i64 0, align 8
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"/easy\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"/normal\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"vpnclient\00", align 1
@.str.6 = private unnamed_addr constant [8 x i32] [i32 37, i32 83, i32 32, i32 34, i32 37, i32 115, i32 34, i32 0], align 4
@.str.7 = private unnamed_addr constant [3 x i32] [i32 37, i32 83, i32 0], align 4
@sleep_before_exit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ViInstallProcessStart(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = icmp eq %struct.TYPE_11__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %2
  store i32 1, i32* %10, align 4
  br label %201

34:                                               ; preds = %30
  %35 = trunc i64 %22 to i32
  %36 = call %struct.TYPE_10__* (...) @ViGetSuitableArchForCpu()
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ViGenerateVpnSMgrTempDirName(i8* %24, i32 %35, i32 %38)
  %40 = trunc i64 %26 to i32
  %41 = call i32 @ConbinePath(i8* %27, i32 %40, i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @setting, i32 0, i32 4), align 8
  store i32* %42, i32** %5, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @IDCANCEL, align 4
  %47 = call i32 @Hide(i32* %45, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @P_PROGRESS, align 4
  %50 = call i32 @SetPos(i32* %48, i32 %49, i32 100)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @P_PROGRESS, align 4
  %53 = call i32 @Hide(i32* %51, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @S_SIZEINFO, align 4
  %56 = call i32 @Hide(i32* %54, i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @S_STATUS, align 4
  %59 = load i64, i64* @IDS_INSTALLSTART, align 8
  %60 = load i64, i64* @skip, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @_U(i64 %61)
  %63 = call i32 @SetText(i32* %57, i32 %58, i32 %62)
  store i32 1, i32* %6, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @setting, i32 0, i32 0), align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %34
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @setting, i32 0, i32 3), align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32*, i32** %3, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @ViCheckExeSign(i32* %70, i32* %71)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %113

75:                                               ; preds = %69, %66
  %76 = call i32 @Zero(%struct.TYPE_12__* %12, i32 48)
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32 48, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store i8* bitcast ([5 x i32]* @.str.1 to i8*), i8** %78, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 6
  store i32* %79, i32** %80, align 8
  %81 = load i32, i32* @SEE_MASK_NOCLOSEPROCESS, align 4
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 5
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  store i8* bitcast ([59 x i32]* @.str.2 to i8*), i8** %83, align 8
  %84 = load i32, i32* @SW_SHOWNORMAL, align 4
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  store i32 %84, i32* %85, align 8
  %86 = call i32 @ShellExecuteExW(%struct.TYPE_12__* %12)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %75
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* @MB_ICONSTOP, align 4
  %91 = load i64, i64* @IDS_INSTALLSTART_ERROR, align 8
  %92 = load i64, i64* @skip, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @_U(i64 %93)
  %95 = call i32 @MsgBox(i32* %89, i32 %90, i32 %94)
  store i32 0, i32* %6, align 4
  br label %112

96:                                               ; preds = %75
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %11, align 8
  br label %99

99:                                               ; preds = %106, %96
  br label %100

100:                                              ; preds = %99
  %101 = load i32*, i32** %11, align 8
  %102 = call i64 @WaitForSingleObject(i32* %101, i32 50)
  %103 = load i64, i64* @WAIT_TIMEOUT, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %109

106:                                              ; preds = %100
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @DoEvents(i32* %107)
  br label %99

109:                                              ; preds = %105
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @CloseHandle(i32* %110)
  br label %112

112:                                              ; preds = %109, %88
  br label %113

113:                                              ; preds = %112, %74
  br label %114

114:                                              ; preds = %113, %34
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %196

117:                                              ; preds = %114
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %196

122:                                              ; preds = %117
  %123 = call %struct.TYPE_10__* (...) @ViGetSuitableArchForCpu()
  store %struct.TYPE_10__* %123, %struct.TYPE_10__** %13, align 8
  %124 = load i32, i32* @MAX_PATH, align 4
  %125 = zext i32 %124 to i64
  %126 = call i8* @llvm.stacksave()
  store i8* %126, i8** %14, align 8
  %127 = alloca i32, i64 %125, align 16
  store i64 %125, i64* %15, align 8
  %128 = load i32, i32* @MAX_PATH, align 4
  %129 = zext i32 %128 to i64
  %130 = alloca i32, i64 %129, align 16
  store i64 %129, i64* %16, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @Hide(i32* %131, i32 0)
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @setting, i32 0, i32 2), align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  br label %136

136:                                              ; preds = %135, %122
  %137 = call i32 @MsIsServiceRunning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 @MsStartService(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %136
  %142 = call i32 @SwWaitForVpnClientPortReady(i32 0)
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @setting, i32 0, i32 1), align 4
  %144 = call i32 @UniIsEmptyStr(i32 %143)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = mul nuw i64 4, %125
  %148 = trunc i64 %147 to i32
  %149 = load i8*, i8** %17, align 8
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @setting, i32 0, i32 1), align 4
  %151 = call i32 (i32*, i32, i8*, i8*, ...) @UniFormat(i32* %127, i32 %148, i8* bitcast ([8 x i32]* @.str.6 to i8*), i8* %149, i32 %150)
  br label %157

152:                                              ; preds = %141
  %153 = mul nuw i64 4, %125
  %154 = trunc i64 %153 to i32
  %155 = load i8*, i8** %17, align 8
  %156 = call i32 (i32*, i32, i8*, i8*, ...) @UniFormat(i32* %127, i32 %154, i8* bitcast ([3 x i32]* @.str.7 to i8*), i8* %155)
  br label %157

157:                                              ; preds = %152, %146
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %159 = call i32 @ViLoadCurrentInstalledStatusForArch(%struct.TYPE_10__* %158)
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %194

164:                                              ; preds = %157
  %165 = load i32, i32* @MAX_PATH, align 4
  %166 = zext i32 %165 to i64
  %167 = call i8* @llvm.stacksave()
  store i8* %167, i8** %19, align 8
  %168 = alloca i32, i64 %166, align 16
  store i64 %166, i64* %20, align 8
  %169 = mul nuw i64 4, %166
  %170 = trunc i64 %169 to i32
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @StrToUni(i32* %168, i32 %170, i32 %173)
  %175 = mul nuw i64 4, %129
  %176 = trunc i64 %175 to i32
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @ConbinePathW(i32* %130, i32 %176, i32 %179, i32* %168)
  %181 = call i32* @MsRunAsUserExW(i32* %130, i32* %127, i32 0)
  store i32* %181, i32** %18, align 8
  %182 = load i32*, i32** %18, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %164
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @setting, i32 0, i32 1), align 4
  %186 = call i32 @UniIsEmptyStr(i32 %185)
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 1, i32* @sleep_before_exit, align 4
  br label %189

189:                                              ; preds = %188, %184
  %190 = load i32*, i32** %18, align 8
  %191 = call i32 @CloseHandle(i32* %190)
  br label %192

192:                                              ; preds = %189, %164
  %193 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %193)
  br label %194

194:                                              ; preds = %192, %157
  %195 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %195)
  br label %196

196:                                              ; preds = %194, %117, %114
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  store i32 0, i32* %198, align 4
  %199 = load i32*, i32** %3, align 8
  %200 = call i32 @Close(i32* %199)
  store i32 0, i32* %10, align 4
  br label %201

201:                                              ; preds = %196, %33
  %202 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %202)
  %203 = load i32, i32* %10, align 4
  switch i32 %203, label %205 [
    i32 0, label %204
    i32 1, label %204
  ]

204:                                              ; preds = %201, %201
  ret void

205:                                              ; preds = %201
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ViGenerateVpnSMgrTempDirName(i8*, i32, i32) #2

declare dso_local %struct.TYPE_10__* @ViGetSuitableArchForCpu(...) #2

declare dso_local i32 @ConbinePath(i8*, i32, i8*, i8*) #2

declare dso_local i32 @Hide(i32*, i32) #2

declare dso_local i32 @SetPos(i32*, i32, i32) #2

declare dso_local i32 @SetText(i32*, i32, i32) #2

declare dso_local i32 @_U(i64) #2

declare dso_local i32 @ViCheckExeSign(i32*, i32*) #2

declare dso_local i32 @Zero(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @ShellExecuteExW(%struct.TYPE_12__*) #2

declare dso_local i32 @MsgBox(i32*, i32, i32) #2

declare dso_local i64 @WaitForSingleObject(i32*, i32) #2

declare dso_local i32 @DoEvents(i32*) #2

declare dso_local i32 @CloseHandle(i32*) #2

declare dso_local i32 @MsIsServiceRunning(i8*) #2

declare dso_local i32 @MsStartService(i8*) #2

declare dso_local i32 @SwWaitForVpnClientPortReady(i32) #2

declare dso_local i32 @UniIsEmptyStr(i32) #2

declare dso_local i32 @UniFormat(i32*, i32, i8*, i8*, ...) #2

declare dso_local i32 @ViLoadCurrentInstalledStatusForArch(%struct.TYPE_10__*) #2

declare dso_local i32 @StrToUni(i32*, i32, i32) #2

declare dso_local i32 @ConbinePathW(i32*, i32, i32, i32*) #2

declare dso_local i32* @MsRunAsUserExW(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @Close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
