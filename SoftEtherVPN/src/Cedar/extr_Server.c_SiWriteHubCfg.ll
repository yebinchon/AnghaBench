; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteHubCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteHubCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i64, i32, i32, i32, i32*, i32*, i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"RadiusServerName\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"RadiusSecret\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"RadiusServerPort\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"RadiusRetryInterval\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"RadiusSuffixFilter\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"RadiusRealm\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"RadiusConvertAllMsChapv2AuthRequestToEap\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"RadiusUsePeapInsteadOfEap\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"HashedPassword\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"SecurePassword\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Online\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Traffic\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Message\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"MessageText\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"LogSetting\00", align 1
@HUB_TYPE_STANDALONE = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"CascadeList\00", align 1
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"b_support_securenat\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"SecureNAT\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"AccessList\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"AdminOption\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"SecurityAccountDatabase\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"LastCommTime\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"LastLoginTime\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"CreatedTime\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"NumLogin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiWriteHubCfg(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = icmp eq %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %208

12:                                               ; preds = %8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 19
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @Lock(i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 23
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %12
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 23
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @CfgAddStr(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 22
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @CfgAddBuf(i32* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %21, %12
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @CfgAddInt(i32* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @CfgAddInt(i32* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 21
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @CfgAddStr(i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 20
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @CfgAddStr(i32* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @CfgAddBool(i32* %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CfgAddBool(i32* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 19
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @Unlock(i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 18
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @CfgAddByte(i32* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %70, i32 4)
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 17
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @CfgAddByte(i32* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %75, i32 4)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 11
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %32
  %84 = load i32*, i32** %3, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 16
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br label %94

94:                                               ; preds = %89, %83
  %95 = phi i1 [ false, %83 ], [ %93, %89 ]
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 0, i32 1
  %98 = call i32 @CfgAddBool(i32* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %94, %32
  %100 = load i32*, i32** %3, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 15
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @SiWriteTraffic(i32* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32* @CfgCreateFolder(i32* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 14
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @SiWriteHubOptionCfg(i32* %106, i32 %109)
  %111 = load i32*, i32** %3, align 8
  %112 = call i32* @CfgCreateFolder(i32* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store i32* %112, i32** %5, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 13
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @IsEmptyUniStr(i32 %115)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %99
  %119 = load i32*, i32** %5, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 13
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @CfgAddUniStr(i32* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %118, %99
  %125 = load i32*, i32** %3, align 8
  %126 = call i32* @CfgCreateFolder(i32* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 12
  %129 = call i32 @SiWriteHubLogCfg(i32* %126, i32* %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %124
  %136 = load i32*, i32** %3, align 8
  %137 = call i32* @CfgCreateFolder(i32* %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %139 = call i32 @SiWriteHubLinks(i32* %137, %struct.TYPE_9__* %138)
  br label %140

140:                                              ; preds = %135, %124
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 11
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @GetServerCapsBool(i32 %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %146
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = load i32*, i32** %3, align 8
  %157 = call i32* @CfgCreateFolder(i32* %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %158 = call i32 @SiWriteSecureNAT(%struct.TYPE_9__* %155, i32* %157)
  br label %159

159:                                              ; preds = %154, %146
  br label %160

160:                                              ; preds = %159, %140
  %161 = load i32*, i32** %3, align 8
  %162 = call i32* @CfgCreateFolder(i32* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %164 = call i32 @SiWriteHubAccessLists(i32* %162, %struct.TYPE_9__* %163)
  %165 = load i32*, i32** %3, align 8
  %166 = call i32* @CfgCreateFolder(i32* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = call i32 @SiWriteHubAdminOptions(i32* %166, %struct.TYPE_9__* %167)
  %169 = load i32*, i32** %3, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @CfgAddInt(i32* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i64 %172)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 11
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %160
  %181 = load i32*, i32** %3, align 8
  %182 = call i32* @CfgCreateFolder(i32* %181, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 10
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @SiWriteHubDb(i32* %182, i32 %185, i32 0)
  br label %187

187:                                              ; preds = %180, %160
  %188 = load i32*, i32** %3, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @CfgAddInt64(i32* %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 %191)
  %193 = load i32*, i32** %3, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @CfgAddInt64(i32* %193, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %196)
  %198 = load i32*, i32** %3, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @CfgAddInt64(i32* %198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 %201)
  %203 = load i32*, i32** %3, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 6
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @CfgAddInt(i32* %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i64 %206)
  br label %208

208:                                              ; preds = %187, %11
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @CfgAddStr(i32*, i8*, i32*) #1

declare dso_local i32 @CfgAddBuf(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddInt(i32*, i8*, i64) #1

declare dso_local i32 @CfgAddBool(i32*, i8*, i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @CfgAddByte(i32*, i8*, i32, i32) #1

declare dso_local i32 @SiWriteTraffic(i32*, i8*, i32) #1

declare dso_local i32 @SiWriteHubOptionCfg(i32*, i32) #1

declare dso_local i32* @CfgCreateFolder(i32*, i8*) #1

declare dso_local i32 @IsEmptyUniStr(i32) #1

declare dso_local i32 @CfgAddUniStr(i32*, i8*, i32) #1

declare dso_local i32 @SiWriteHubLogCfg(i32*, i32*) #1

declare dso_local i32 @SiWriteHubLinks(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @GetServerCapsBool(i32, i8*) #1

declare dso_local i32 @SiWriteSecureNAT(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @SiWriteHubAccessLists(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @SiWriteHubAdminOptions(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @SiWriteHubDb(i32*, i32, i32) #1

declare dso_local i32 @CfgAddInt64(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
