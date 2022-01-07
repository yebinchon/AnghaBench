; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsDhcpGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsDhcpGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32*)* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"CMD_DhcpGet_Column_USE\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SEC_YES\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SEC_NO\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"CMD_DhcpGet_Column_IP1\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"CMD_DhcpGet_Column_IP2\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"CMD_DhcpGet_Column_MASK\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"CMD_DhcpGet_Column_LEASE\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"SEC_NONE\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"CMD_DhcpGet_Column_GW\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"CMD_DhcpGet_Column_DNS\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"CMD_DhcpGet_Column_DNS2\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"CMD_DhcpGet_Column_DOMAIN\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"CMD_SecureNatHostGet_Column_LOG\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"CMD_DhcpGet_Column_PUSHROUTE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsDhcpGet(%struct.TYPE_13__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*)** %25, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 %26(%struct.TYPE_13__* %27, i32* %28)
  %30 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %30, i64* %5, align 8
  br label %195

31:                                               ; preds = %4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @ParseCommandList(%struct.TYPE_13__* %32, i8* %33, i32* %34, i32* null, i32 0)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %39, i64* %5, align 8
  br label %195

40:                                               ; preds = %31
  %41 = call i32 @Zero(%struct.TYPE_11__* %13, i32 72)
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 12
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @StrCpy(i32 %43, i32 4, i32* %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ScGetSecureNATOption(i32 %50, %struct.TYPE_11__* %13)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @ERR_NO_ERROR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %40
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @CmdPrintError(%struct.TYPE_13__* %56, i64 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @FreeParamValueList(i32* %59)
  %61 = load i64, i64* %12, align 8
  store i64 %61, i64* %5, align 8
  br label %195

62:                                               ; preds = %40
  %63 = load i32, i32* @MAX_SIZE, align 4
  %64 = zext i32 %63 to i64
  %65 = call i8* @llvm.stacksave()
  store i8* %65, i8** %14, align 8
  %66 = alloca i32, i64 %64, align 16
  store i64 %64, i64* %15, align 8
  %67 = call i32* (...) @CtNewStandard()
  store i32* %67, i32** %16, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = call i32* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 11
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = call i32* @_UU(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %77

75:                                               ; preds = %62
  %76 = call i32* @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32* [ %74, %73 ], [ %76, %75 ]
  %79 = call i32 @CtInsert(i32* %68, i32* %69, i32* %78)
  %80 = mul nuw i64 4, %64
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 10
  %83 = call i32 @IPToUniStr(i32* %66, i32 %81, i32* %82)
  %84 = load i32*, i32** %16, align 8
  %85 = call i32* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %86 = call i32 @CtInsert(i32* %84, i32* %85, i32* %66)
  %87 = mul nuw i64 4, %64
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 9
  %90 = call i32 @IPToUniStr(i32* %66, i32 %88, i32* %89)
  %91 = load i32*, i32** %16, align 8
  %92 = call i32* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %93 = call i32 @CtInsert(i32* %91, i32* %92, i32* %66)
  %94 = mul nuw i64 4, %64
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 8
  %97 = call i32 @IPToUniStr(i32* %66, i32 %95, i32* %96)
  %98 = load i32*, i32** %16, align 8
  %99 = call i32* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %100 = call i32 @CtInsert(i32* %98, i32* %99, i32* %66)
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @UniToStru(i32* %66, i32 %102)
  %104 = load i32*, i32** %16, align 8
  %105 = call i32* @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %106 = call i32 @CtInsert(i32* %104, i32* %105, i32* %66)
  %107 = mul nuw i64 4, %64
  %108 = trunc i64 %107 to i32
  %109 = call i32* @_UU(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %110 = call i32 @UniStrCpy(i32* %66, i32 %108, i32* %109)
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 6
  %112 = call i64 @IPToUINT(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %77
  %115 = mul nuw i64 4, %64
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 6
  %118 = call i32 @IPToUniStr(i32* %66, i32 %116, i32* %117)
  br label %119

119:                                              ; preds = %114, %77
  %120 = load i32*, i32** %16, align 8
  %121 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %122 = call i32 @CtInsert(i32* %120, i32* %121, i32* %66)
  %123 = mul nuw i64 4, %64
  %124 = trunc i64 %123 to i32
  %125 = call i32* @_UU(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %126 = call i32 @UniStrCpy(i32* %66, i32 %124, i32* %125)
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 5
  %128 = call i64 @IPToUINT(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %119
  %131 = mul nuw i64 4, %64
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 5
  %134 = call i32 @IPToUniStr(i32* %66, i32 %132, i32* %133)
  br label %135

135:                                              ; preds = %130, %119
  %136 = load i32*, i32** %16, align 8
  %137 = call i32* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %138 = call i32 @CtInsert(i32* %136, i32* %137, i32* %66)
  %139 = mul nuw i64 4, %64
  %140 = trunc i64 %139 to i32
  %141 = call i32* @_UU(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %142 = call i32 @UniStrCpy(i32* %66, i32 %140, i32* %141)
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  %144 = call i64 @IPToUINT(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %135
  %147 = mul nuw i64 4, %64
  %148 = trunc i64 %147 to i32
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  %150 = call i32 @IPToUniStr(i32* %66, i32 %148, i32* %149)
  br label %151

151:                                              ; preds = %146, %135
  %152 = load i32*, i32** %16, align 8
  %153 = call i32* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %154 = call i32 @CtInsert(i32* %152, i32* %153, i32* %66)
  %155 = mul nuw i64 4, %64
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @StrToUni(i32* %66, i32 %156, i32 %158)
  %160 = load i32*, i32** %16, align 8
  %161 = call i32* @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %162 = call i32 @CtInsert(i32* %160, i32* %161, i32* %66)
  %163 = load i32*, i32** %16, align 8
  %164 = call i32* @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %151
  %169 = call i32* @_UU(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %172

170:                                              ; preds = %151
  %171 = call i32* @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i32* [ %169, %168 ], [ %171, %170 ]
  %174 = call i32 @CtInsert(i32* %163, i32* %164, i32* %173)
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %172
  %179 = mul nuw i64 4, %64
  %180 = trunc i64 %179 to i32
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @StrToUni(i32* %66, i32 %180, i32 %182)
  %184 = load i32*, i32** %16, align 8
  %185 = call i32* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %186 = call i32 @CtInsert(i32* %184, i32* %185, i32* %66)
  br label %187

187:                                              ; preds = %178, %172
  %188 = load i32*, i32** %16, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %190 = call i32 @CtFree(i32* %188, %struct.TYPE_13__* %189)
  %191 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %191)
  br label %192

192:                                              ; preds = %187
  %193 = load i32*, i32** %10, align 8
  %194 = call i32 @FreeParamValueList(i32* %193)
  store i64 0, i64* %5, align 8
  br label %195

195:                                              ; preds = %192, %55, %38, %23
  %196 = load i64, i64* %5, align 8
  ret i64 %196
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_13__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetSecureNATOption(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*) #1

declare dso_local i32 @IPToUniStr(i32*, i32, i32*) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #1

declare dso_local i64 @IPToUINT(i32*) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_13__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
