; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcAccessEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcAccessEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"Id\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Note\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Discard\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"SrcIpAddress\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"SrcSubnetMask\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"DestIpAddress\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"DestSubnetMask\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Protocol\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"SrcPortStart\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"SrcPortEnd\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"DestPortStart\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"DestPortEnd\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"SrcUsername\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"DestUsername\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"CheckSrcMac\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"SrcMacAddress\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"SrcMacMask\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"CheckDstMac\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"DstMacAddress\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"DstMacMask\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"CheckTcpState\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Established\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Delay\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Jitter\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Loss\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"IsIPv6\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"UniqueId\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"RedirectUrl\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"SrcIpAddress6\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"SrcSubnetMask6\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"DestIpAddress6\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"DestSubnetMask6\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcAccessEx(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %3
  br label %199

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = call i32 @Zero(%struct.TYPE_4__* %14, i32 232)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @PackGetIntEx(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 33
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 32
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @PackGetUniStrEx(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 4, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @PackGetBoolEx(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 31
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @PackGetIntEx(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 30
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i8* @PackGetBoolEx(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 29
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @PackGetIp32Ex(i32* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 28
  store i8* %44, i8** %46, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @PackGetIp32Ex(i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 27
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i8* @PackGetIp32Ex(i32* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 26
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i8* @PackGetIp32Ex(i32* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 25
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i8* @PackGetIntEx(i32* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 24
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i8* @PackGetIntEx(i32* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 23
  store i8* %69, i8** %71, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i8* @PackGetIntEx(i32* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 22
  store i8* %74, i8** %76, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i8* @PackGetIntEx(i32* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 21
  store i8* %79, i8** %81, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i8* @PackGetIntEx(i32* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 20
  store i8* %84, i8** %86, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 19
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @PackGetStrEx(i32* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %90, i32 4, i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 18
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @PackGetStrEx(i32* %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %96, i32 4, i32 %97)
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i8* @PackGetBoolEx(i32* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 17
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 16
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @PackGetDataEx2(i32* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %107, i32 4, i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 15
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @PackGetDataEx2(i32* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %113, i32 4, i32 %114)
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i8* @PackGetBoolEx(i32* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 14
  store i8* %118, i8** %120, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 13
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @PackGetDataEx2(i32* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %124, i32 4, i32 %125)
  %127 = load i32*, i32** %5, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 12
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @PackGetDataEx2(i32* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %130, i32 4, i32 %131)
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i8* @PackGetBoolEx(i32* %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %134)
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 11
  store i8* %135, i8** %137, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i8* @PackGetBoolEx(i32* %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 10
  store i8* %140, i8** %142, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i8* @PackGetIntEx(i32* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 %144)
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 9
  store i8* %145, i8** %147, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call i8* @PackGetIntEx(i32* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 %149)
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 8
  store i8* %150, i8** %152, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i8* @PackGetIntEx(i32* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %154)
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 7
  store i8* %155, i8** %157, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i8* @PackGetBoolEx(i32* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i32 %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i8* @PackGetIntEx(i32* %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32 %164)
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 6
  store i8* %165, i8** %167, align 8
  %168 = load i32*, i32** %5, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @PackGetStrEx(i32* %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 %171, i32 4, i32 %172)
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 4
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %199

178:                                              ; preds = %13
  %179 = load i32*, i32** %5, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 3
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @PackGetIp6AddrEx(i32* %179, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i32* %181, i32 %182)
  %184 = load i32*, i32** %5, align 8
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @PackGetIp6AddrEx(i32* %184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i32* %186, i32 %187)
  %189 = load i32*, i32** %5, align 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @PackGetIp6AddrEx(i32* %189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i32* %191, i32 %192)
  %194 = load i32*, i32** %5, align 8
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @PackGetIp6AddrEx(i32* %194, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32* %196, i32 %197)
  br label %199

199:                                              ; preds = %12, %178, %13
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @PackGetIntEx(i32*, i8*, i32) #1

declare dso_local i32 @PackGetUniStrEx(i32*, i8*, i32, i32, i32) #1

declare dso_local i8* @PackGetBoolEx(i32*, i8*, i32) #1

declare dso_local i8* @PackGetIp32Ex(i32*, i8*, i32) #1

declare dso_local i32 @PackGetStrEx(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @PackGetDataEx2(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @PackGetIp6AddrEx(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
