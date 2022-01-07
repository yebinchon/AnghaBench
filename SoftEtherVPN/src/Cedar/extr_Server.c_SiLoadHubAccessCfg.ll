; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadHubAccessCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadHubAccessCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Note\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Discard\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"IsIPv6\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"SrcIpAddress\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"SrcSubnetMask\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"DestIpAddress\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"DestSubnetMask\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"SrcIpAddress6\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"SrcSubnetMask6\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"DestIpAddress6\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"DestSubnetMask6\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Protocol\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"SrcPortStart\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"SrcPortEnd\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"DestPortStart\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"DestPortEnd\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"SrcUsername\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"DestUsername\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"CheckSrcMac\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"SrcMacAddress\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"SrcMacMask\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"CheckDstMac\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"DstMacAddress\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"DstMacMask\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"CheckTcpState\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Established\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Delay\00", align 1
@HUB_ACCESSLIST_DELAY_MAX = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"Jitter\00", align 1
@HUB_ACCESSLIST_JITTER_MAX = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"Loss\00", align 1
@HUB_ACCESSLIST_LOSS_MAX = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [12 x i8] c"RedirectUrl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadHubAccessCfg(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  store i32 1, i32* %8, align 4
  br label %194

19:                                               ; preds = %15
  %20 = call i32 @Zero(%struct.TYPE_4__* %5, i32 216)
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 31
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @CfgGetUniStr(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23, i32 4)
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @CfgGetBool(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 30
  store i8* %26, i8** %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @CfgGetInt(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 29
  store i8* %29, i8** %30, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i8* @CfgGetBool(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 28
  store i8* %32, i8** %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i8* @CfgGetBool(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %36 = ptrtoint i8* %35 to i32
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %19
  %42 = load i32*, i32** %4, align 8
  %43 = call i8* @CfgGetIp32(i32* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 27
  store i8* %43, i8** %44, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @CfgGetIp32(i32* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 26
  store i8* %46, i8** %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i8* @CfgGetIp32(i32* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 25
  store i8* %49, i8** %50, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i8* @CfgGetIp32(i32* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 24
  store i8* %52, i8** %53, align 8
  br label %67

54:                                               ; preds = %19
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 23
  %57 = call i32 @CfgGetIp6Addr(i32* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 22
  %60 = call i32 @CfgGetIp6Addr(i32* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 21
  %63 = call i32 @CfgGetIp6Addr(i32* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32* %62)
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 20
  %66 = call i32 @CfgGetIp6Addr(i32* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32* %65)
  br label %67

67:                                               ; preds = %54, %41
  %68 = load i32*, i32** %4, align 8
  %69 = call i8* @CfgGetInt(i32* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 19
  store i8* %69, i8** %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i8* @CfgGetInt(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 18
  store i8* %72, i8** %73, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i8* @CfgGetInt(i32* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 17
  store i8* %75, i8** %76, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i8* @CfgGetInt(i32* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 16
  store i8* %78, i8** %79, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i8* @CfgGetInt(i32* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 15
  store i8* %81, i8** %82, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @CfgGetStr(i32* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %85, i32 8)
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @CfgGetStr(i32* %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* %89, i32 8)
  %91 = load i32*, i32** %4, align 8
  %92 = call i8* @CfgGetBool(i32* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %93 = ptrtoint i8* %92 to i32
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 %93, i32* %94, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 14
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @CfgGetByte(i32* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %97, i32 4)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %67
  %101 = load i32*, i32** %4, align 8
  %102 = trunc i64 %10 to i32
  %103 = call i32 @CfgGetStr(i32* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %12, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 14
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @StrToMac(i32 %105, i8* %12)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %108, %100
  br label %111

111:                                              ; preds = %110, %67
  %112 = load i32*, i32** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 13
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @CfgGetByte(i32* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 %114, i32 4)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load i32*, i32** %4, align 8
  %119 = trunc i64 %10 to i32
  %120 = call i32 @CfgGetStr(i32* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* %12, i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 13
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @StrToMac(i32 %122, i8* %12)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 0, i32* %126, align 8
  br label %127

127:                                              ; preds = %125, %117
  br label %128

128:                                              ; preds = %127, %111
  %129 = load i32*, i32** %4, align 8
  %130 = call i8* @CfgGetBool(i32* %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  %131 = ptrtoint i8* %130 to i32
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i32 %131, i32* %132, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 12
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @CfgGetByte(i32* %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %135, i32 4)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %128
  %139 = load i32*, i32** %4, align 8
  %140 = trunc i64 %10 to i32
  %141 = call i32 @CfgGetStr(i32* %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* %12, i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 12
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @StrToMac(i32 %143, i8* %12)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %146, %138
  br label %149

149:                                              ; preds = %148, %128
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 11
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @CfgGetByte(i32* %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 %152, i32 4)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %149
  %156 = load i32*, i32** %4, align 8
  %157 = trunc i64 %10 to i32
  %158 = call i32 @CfgGetStr(i32* %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* %12, i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 11
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @StrToMac(i32 %160, i8* %12)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i32 0, i32* %164, align 4
  br label %165

165:                                              ; preds = %163, %155
  br label %166

166:                                              ; preds = %165, %149
  %167 = load i32*, i32** %4, align 8
  %168 = call i8* @CfgGetBool(i32* %167, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 10
  store i8* %168, i8** %169, align 8
  %170 = load i32*, i32** %4, align 8
  %171 = call i8* @CfgGetBool(i32* %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 9
  store i8* %171, i8** %172, align 8
  %173 = load i32*, i32** %4, align 8
  %174 = call i8* @CfgGetInt(i32* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %175 = load i32, i32* @HUB_ACCESSLIST_DELAY_MAX, align 4
  %176 = call i8* @MAKESURE(i8* %174, i32 0, i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 8
  store i8* %176, i8** %177, align 8
  %178 = load i32*, i32** %4, align 8
  %179 = call i8* @CfgGetInt(i32* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  %180 = load i32, i32* @HUB_ACCESSLIST_JITTER_MAX, align 4
  %181 = call i8* @MAKESURE(i8* %179, i32 0, i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 7
  store i8* %181, i8** %182, align 8
  %183 = load i32*, i32** %4, align 8
  %184 = call i8* @CfgGetInt(i32* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %185 = load i32, i32* @HUB_ACCESSLIST_LOSS_MAX, align 4
  %186 = call i8* @MAKESURE(i8* %184, i32 0, i32 %185)
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 6
  store i8* %186, i8** %187, align 8
  %188 = load i32*, i32** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @CfgGetStr(i32* %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* %190, i32 8)
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 @AddAccessList(i32* %192, %struct.TYPE_4__* %5)
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %166, %18
  %195 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %8, align 4
  switch i32 %196, label %198 [
    i32 0, label %197
    i32 1, label %197
  ]

197:                                              ; preds = %194, %194
  ret void

198:                                              ; preds = %194
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @CfgGetUniStr(i32*, i8*, i32, i32) #2

declare dso_local i8* @CfgGetBool(i32*, i8*) #2

declare dso_local i8* @CfgGetInt(i32*, i8*) #2

declare dso_local i8* @CfgGetIp32(i32*, i8*) #2

declare dso_local i32 @CfgGetIp6Addr(i32*, i8*, i32*) #2

declare dso_local i32 @CfgGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i64 @CfgGetByte(i32*, i8*, i32, i32) #2

declare dso_local i32 @StrToMac(i32, i8*) #2

declare dso_local i8* @MAKESURE(i8*, i32, i32) #2

declare dso_local i32 @AddAccessList(i32*, %struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
