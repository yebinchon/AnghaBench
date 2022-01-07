; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiPackToAccess.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiPackToAccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"Note\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Discard\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SrcIpAddress\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"SrcSubnetMask\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"DestIpAddress\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"DestSubnetMask\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Protocol\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"SrcPortStart\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"SrcPortEnd\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"DestPortStart\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"DestPortEnd\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"SrcUsername\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"DestUsername\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"CheckSrcMac\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"SrcMacAddress\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"SrcMacMask\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"CheckDstMac\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"DstMacAddress\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"DstMacMask\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"CheckTcpState\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Established\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Delay\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Jitter\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Loss\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"IsIPv6\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"RedirectUrl\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"SrcIpAddress6\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"SrcSubnetMask6\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"DestIpAddress6\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"DestSubnetMask6\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @SiPackToAccess(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %187

10:                                               ; preds = %2
  %11 = call %struct.TYPE_4__* @ZeroMalloc(i32 216)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 31
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PackGetUniStrEx(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15, i32 4, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i8* @PackGetIntEx(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 30
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @PackGetIntEx(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 29
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @PackGetIntEx(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 28
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @PackGetIp32Ex(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 27
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i8* @PackGetIp32Ex(i32* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 26
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i8* @PackGetIp32Ex(i32* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 25
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i8* @PackGetIp32Ex(i32* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 24
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i8* @PackGetIntEx(i32* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 23
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i8* @PackGetIntEx(i32* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 22
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i8* @PackGetIntEx(i32* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 21
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i8* @PackGetIntEx(i32* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 20
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i8* @PackGetIntEx(i32* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 19
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 18
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @PackGetStrEx(i32* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %81, i32 4, i32 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 17
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @PackGetStrEx(i32* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %87, i32 4, i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i8* @PackGetBoolEx(i32* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 16
  store i8* %92, i8** %94, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 15
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @PackGetDataEx2(i32* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %98, i32 4, i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 14
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @PackGetDataEx2(i32* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %104, i32 4, i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i8* @PackGetBoolEx(i32* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 13
  store i8* %109, i8** %111, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 12
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @PackGetDataEx2(i32* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 %115, i32 4, i32 %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @PackGetDataEx2(i32* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %121, i32 4, i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i8* @PackGetBoolEx(i32* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 10
  store i8* %126, i8** %128, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i8* @PackGetBoolEx(i32* %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 %130)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 9
  store i8* %131, i8** %133, align 8
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i8* @PackGetIntEx(i32* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %135)
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 8
  store i8* %136, i8** %138, align 8
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i8* @PackGetIntEx(i32* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 %140)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 7
  store i8* %141, i8** %143, align 8
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i8* @PackGetIntEx(i32* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %145)
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 6
  store i8* %146, i8** %148, align 8
  %149 = load i32*, i32** %4, align 8
  %150 = load i32, i32* %5, align 4
  %151 = call i8* @PackGetBoolEx(i32* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i32 %150)
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  %154 = load i32*, i32** %4, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @PackGetStrEx(i32* %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 %157, i32 4, i32 %158)
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %185

164:                                              ; preds = %10
  %165 = load i32*, i32** %4, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @PackGetIp6AddrEx(i32* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32* %167, i32 %168)
  %170 = load i32*, i32** %4, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @PackGetIp6AddrEx(i32* %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i32* %172, i32 %173)
  %175 = load i32*, i32** %4, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @PackGetIp6AddrEx(i32* %175, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i32* %177, i32 %178)
  %180 = load i32*, i32** %4, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @PackGetIp6AddrEx(i32* %180, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32* %182, i32 %183)
  br label %185

185:                                              ; preds = %164, %10
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %186, %struct.TYPE_4__** %3, align 8
  br label %187

187:                                              ; preds = %185, %9
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %188
}

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

declare dso_local i32 @PackGetUniStrEx(i32*, i8*, i32, i32, i32) #1

declare dso_local i8* @PackGetIntEx(i32*, i8*, i32) #1

declare dso_local i8* @PackGetIp32Ex(i32*, i8*, i32) #1

declare dso_local i32 @PackGetStrEx(i32*, i8*, i32, i32, i32) #1

declare dso_local i8* @PackGetBoolEx(i32*, i8*, i32) #1

declare dso_local i32 @PackGetDataEx2(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @PackGetIp6AddrEx(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
