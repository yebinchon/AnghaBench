; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLicenseStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLicenseStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i8*, i64, i32, i64, i64, i64, i64, i64, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@LICENSE_EDITION_VPN3_NO_LICENSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"SM_NO_LICENSE_COLUMN\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"SM_NO_LICENSE\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SM_LICENSE_STATUS_EDITION\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SM_LICENSE_STATUS_RELEASE\00", align 1
@.str.4 = private unnamed_addr constant [6 x i32] [i32 37, i32 73, i32 54, i32 52, i32 117, i32 0], align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"SM_LICENSE_STATUS_SYSTEM_ID\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"SM_LICENSE_NO_EXPIRES\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"SM_LICENSE_STATUS_EXPIRES\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"SM_LICENSE_STATUS_SUBSCRIPTION_NONEED\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"SM_LICENSE_STATUS_SUBSCRIPTION_NONE\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"SM_LICENSE_STATUS_SUBSCRIPTION_EXPIRED\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"SM_LICENSE_STATUS_SUBSCRIPTION_VALID\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"SM_LICENSE_STATUS_SUBSCRIPTION\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"SM_LICENSE_STATUS_SUBSCRIPTION_BUILD_STR\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"b_vpn3\00", align 1
@INFINITE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"SM_LICENSE_INFINITE\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"SM_LICENSE_NUM_CLIENT\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"SM_LICENSE_NUM_BRIDGE\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"SM_LICENSE_STATUS_ENTERPRISE\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"SM_LICENSE_STATUS_ENTERPRISE_YES\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"SM_LICENSE_STATUS_ENTERPRISE_NO\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsLicenseStatus(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %11, align 8
  store i64 0, i64* %12, align 8
  %24 = load i32, i32* @MAX_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32* @ParseCommandList(i32* %28, i8* %29, i8* %30, i32* null, i32 0)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %35, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %225

36:                                               ; preds = %4
  %37 = call i32 @Zero(%struct.TYPE_5__* %13, i32 88)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ScGetLicenseStatus(i32 %40, %struct.TYPE_5__* %13)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @ERR_NO_ERROR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @CmdPrintError(i32* %46, i64 %47)
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @FreeParamValueList(i32* %49)
  %51 = load i64, i64* %12, align 8
  store i64 %51, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %225

52:                                               ; preds = %36
  %53 = call i32* (...) @CtNewStandard()
  store i32* %53, i32** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @LICENSE_EDITION_VPN3_NO_LICENSE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32*, i32** %14, align 8
  %60 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %61 = call i8* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @CtInsert(i32* %59, i8* %60, i8* %61)
  br label %219

63:                                               ; preds = %52
  %64 = trunc i64 %25 to i32
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 10
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @StrToUni(i8* %27, i32 %64, i32 %66)
  %68 = load i32*, i32** %14, align 8
  %69 = call i8* @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 @CtInsert(i32* %68, i8* %69, i8* %27)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = trunc i64 %25 to i32
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @GetDateStrEx64(i8* %27, i32 %75, i64 %77, i32* null)
  %79 = load i32*, i32** %14, align 8
  %80 = call i8* @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %81 = call i32 @CtInsert(i32* %79, i8* %80, i8* %27)
  br label %82

82:                                               ; preds = %74, %63
  %83 = trunc i64 %25 to i32
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @UniFormat(i8* %27, i32 %83, i8* bitcast ([6 x i32]* @.str.4 to i8*), i8* %85)
  %87 = load i32*, i32** %14, align 8
  %88 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %89 = call i32 @CtInsert(i32* %87, i8* %88, i8* %27)
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = trunc i64 %25 to i32
  %95 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %96 = call i32 @UniStrCpy(i8* %27, i32 %94, i8* %95)
  br label %102

97:                                               ; preds = %82
  %98 = trunc i64 %25 to i32
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @GetDateStrEx64(i8* %27, i32 %98, i64 %100, i32* null)
  br label %102

102:                                              ; preds = %97, %93
  %103 = load i32*, i32** %14, align 8
  %104 = call i8* @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %105 = call i32 @CtInsert(i32* %103, i8* %104, i8* %27)
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = trunc i64 %25 to i32
  %111 = call i8* @_UU(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %112 = call i32 @UniStrCpy(i8* %27, i32 %110, i8* %111)
  br label %143

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = trunc i64 %25 to i32
  %119 = call i8* @_UU(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %120 = call i32 @UniStrCpy(i8* %27, i32 %118, i8* %119)
  br label %142

121:                                              ; preds = %113
  %122 = load i32, i32* @MAX_PATH, align 4
  %123 = zext i32 %122 to i64
  %124 = call i8* @llvm.stacksave()
  store i8* %124, i8** %18, align 8
  %125 = alloca i8, i64 %123, align 16
  store i64 %123, i64* %19, align 8
  %126 = trunc i64 %123 to i32
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @GetDateStrEx64(i8* %125, i32 %126, i64 %128, i32* null)
  %130 = trunc i64 %25 to i32
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 9
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %121
  %135 = call i8* @_UU(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %138

136:                                              ; preds = %121
  %137 = call i8* @_UU(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i8* [ %135, %134 ], [ %137, %136 ]
  %140 = call i32 @UniFormat(i8* %27, i32 %130, i8* %139, i8* %125)
  %141 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %141)
  br label %142

142:                                              ; preds = %138, %117
  br label %143

143:                                              ; preds = %142, %109
  %144 = load i32*, i32** %14, align 8
  %145 = call i8* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %146 = call i32 @CtInsert(i32* %144, i8* %145, i8* %27)
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %150
  %155 = load i32, i32* @MAX_PATH, align 4
  %156 = zext i32 %155 to i64
  %157 = call i8* @llvm.stacksave()
  store i8* %157, i8** %20, align 8
  %158 = alloca i8, i64 %156, align 16
  store i64 %156, i64* %21, align 8
  %159 = trunc i64 %156 to i32
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @GetDateStrEx64(i8* %158, i32 %159, i64 %161, i32* null)
  %163 = load i32*, i32** %14, align 8
  %164 = call i8* @_UU(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %165 = call i32 @CtInsert(i32* %163, i8* %164, i8* %27)
  %166 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %166)
  br label %167

167:                                              ; preds = %154, %150, %143
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @GetCapsBool(i32 %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @INFINITE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = trunc i64 %25 to i32
  %180 = call i8* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %181 = call i32 @UniStrCpy(i8* %27, i32 %179, i8* %180)
  br label %186

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 6
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @UniToStru(i8* %27, i64 %184)
  br label %186

186:                                              ; preds = %182, %178
  %187 = load i32*, i32** %14, align 8
  %188 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %189 = call i32 @CtInsert(i32* %187, i8* %188, i8* %27)
  br label %190

190:                                              ; preds = %186, %167
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 7
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @INFINITE, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = trunc i64 %25 to i32
  %197 = call i8* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %198 = call i32 @UniStrCpy(i8* %27, i32 %196, i8* %197)
  br label %203

199:                                              ; preds = %190
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @UniToStru(i8* %27, i64 %201)
  br label %203

203:                                              ; preds = %199, %195
  %204 = load i32*, i32** %14, align 8
  %205 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %206 = call i32 @CtInsert(i32* %204, i8* %205, i8* %27)
  %207 = load i32*, i32** %14, align 8
  %208 = call i8* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 8
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %203
  %213 = call i8* @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  br label %216

214:                                              ; preds = %203
  %215 = call i8* @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i8* [ %213, %212 ], [ %215, %214 ]
  %218 = call i32 @CtInsert(i32* %207, i8* %208, i8* %217)
  br label %219

219:                                              ; preds = %216, %58
  %220 = load i32*, i32** %14, align 8
  %221 = load i32*, i32** %6, align 8
  %222 = call i32 @CtFreeEx(i32* %220, i32* %221, i32 0)
  %223 = load i32*, i32** %10, align 8
  %224 = call i32 @FreeParamValueList(i32* %223)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %225

225:                                              ; preds = %219, %45, %34
  %226 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %226)
  %227 = load i64, i64* %5, align 8
  ret i64 %227
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i8*, i32*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_5__*, i32) #2

declare dso_local i64 @ScGetLicenseStatus(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i32* @CtNewStandard(...) #2

declare dso_local i32 @CtInsert(i32*, i8*, i8*) #2

declare dso_local i8* @_UU(i8*) #2

declare dso_local i32 @StrToUni(i8*, i32, i32) #2

declare dso_local i32 @GetDateStrEx64(i8*, i32, i64, i32*) #2

declare dso_local i32 @UniFormat(i8*, i32, i8*, i8*) #2

declare dso_local i32 @UniStrCpy(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @GetCapsBool(i32, i8*) #2

declare dso_local i32 @UniToStru(i8*, i64) #2

declare dso_local i32 @CtFreeEx(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
