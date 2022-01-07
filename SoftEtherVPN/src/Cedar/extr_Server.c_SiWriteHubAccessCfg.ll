; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteHubAccessCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteHubAccessCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

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
@MAX_PATH = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [14 x i8] c"SrcMacAddress\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"SrcMacMask\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"CheckDstMac\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"DstMacAddress\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"DstMacMask\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"CheckTcpState\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Established\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"RedirectUrl\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Delay\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Jitter\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"Loss\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiWriteHubAccessCfg(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  br label %209

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 31
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CfgAddUniStr(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @CfgAddBool(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 30
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @CfgAddInt(i32* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CfgAddBool(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @CfgAddBool(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %15
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 29
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CfgAddIp32(i32* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 28
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @CfgAddIp32(i32* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 27
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CfgAddIp32(i32* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 26
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @CfgAddIp32(i32* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %64)
  br label %83

66:                                               ; preds = %15
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 25
  %70 = call i32 @CfgAddIp6Addr(i32* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 24
  %74 = call i32 @CfgAddIp6Addr(i32* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32* %73)
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 23
  %78 = call i32 @CfgAddIp6Addr(i32* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 22
  %82 = call i32 @CfgAddIp6Addr(i32* %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32* %81)
  br label %83

83:                                               ; preds = %66, %45
  %84 = load i32*, i32** %3, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 21
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @CfgAddInt(i32* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 20
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @CfgAddInt(i32* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 19
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @CfgAddInt(i32* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 18
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @CfgAddInt(i32* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 17
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @CfgAddInt(i32* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @CfgAddStr(i32* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %112)
  %114 = load i32*, i32** %3, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @CfgAddStr(i32* %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* %117)
  %119 = load i32*, i32** %3, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @CfgAddBool(i32* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %83
  %129 = load i32, i32* @MAX_PATH, align 4
  %130 = zext i32 %129 to i64
  %131 = call i8* @llvm.stacksave()
  store i8* %131, i8** %5, align 8
  %132 = alloca i8, i64 %130, align 16
  store i64 %130, i64* %6, align 8
  %133 = trunc i64 %130 to i32
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 16
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @MacToStr(i8* %132, i32 %133, i32 %136)
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @CfgAddStr(i32* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %132)
  %140 = trunc i64 %130 to i32
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 15
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @MacToStr(i8* %132, i32 %140, i32 %143)
  %145 = load i32*, i32** %3, align 8
  %146 = call i32 @CfgAddStr(i32* %145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* %132)
  %147 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %147)
  br label %148

148:                                              ; preds = %128, %83
  %149 = load i32*, i32** %3, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @CfgAddBool(i32* %149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 %152)
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %148
  %159 = load i32, i32* @MAX_PATH, align 4
  %160 = zext i32 %159 to i64
  %161 = call i8* @llvm.stacksave()
  store i8* %161, i8** %7, align 8
  %162 = alloca i8, i64 %160, align 16
  store i64 %160, i64* %8, align 8
  %163 = trunc i64 %160 to i32
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 14
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @MacToStr(i8* %162, i32 %163, i32 %166)
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 @CfgAddStr(i32* %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* %162)
  %170 = trunc i64 %160 to i32
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 13
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @MacToStr(i8* %162, i32 %170, i32 %173)
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @CfgAddStr(i32* %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* %162)
  %177 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %177)
  br label %178

178:                                              ; preds = %158, %148
  %179 = load i32*, i32** %3, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @CfgAddBool(i32* %179, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 %182)
  %184 = load i32*, i32** %3, align 8
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @CfgAddBool(i32* %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 %187)
  %189 = load i32*, i32** %3, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 9
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @CfgAddStr(i32* %189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* %192)
  %194 = load i32*, i32** %3, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 12
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @CfgAddInt(i32* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i32 %197)
  %199 = load i32*, i32** %3, align 8
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 11
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @CfgAddInt(i32* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 %202)
  %204 = load i32*, i32** %3, align 8
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 10
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @CfgAddInt(i32* %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %178, %14
  ret void
}

declare dso_local i32 @CfgAddUniStr(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddBool(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddIp32(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddIp6Addr(i32*, i8*, i32*) #1

declare dso_local i32 @CfgAddStr(i32*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @MacToStr(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
