; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiAccessToPack.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiAccessToPack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

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
@.str.26 = private unnamed_addr constant [12 x i8] c"RedirectUrl\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"IsIPv6\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"SrcIpAddress6\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"SrcSubnetMask6\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"DestIpAddress6\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"DestSubnetMask6\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiAccessToPack(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  br label %283

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 31
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @PackAddUniStrEx(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 30
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @PackAddIntEx(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 29
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @PackAddIntEx(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 28
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @PackAddIntEx(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %42, i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %16
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @PackAddIp32Ex(i32* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 -33554465, i32 %51, i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @PackAddIp32Ex(i32* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 %55, i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @PackAddIp32Ex(i32* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 -33554465, i32 %59, i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @PackAddIp32Ex(i32* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 -1, i32 %63, i32 %64)
  br label %95

66:                                               ; preds = %16
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @PackAddIp32Ex(i32* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @PackAddIp32Ex(i32* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @PackAddIp32Ex(i32* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %84, i32 %85, i32 %86)
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @PackAddIp32Ex(i32* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %66, %49
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 27
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @PackAddIntEx(i32* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 26
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @PackAddIntEx(i32* %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %106, i32 %107, i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 25
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @PackAddIntEx(i32* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %113, i32 %114, i32 %115)
  %117 = load i32*, i32** %5, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 24
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @PackAddIntEx(i32* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %120, i32 %121, i32 %122)
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 23
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @PackAddIntEx(i32* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %127, i32 %128, i32 %129)
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 22
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @PackAddStrEx(i32* %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %134, i32 %135, i32 %136)
  %138 = load i32*, i32** %5, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 21
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @PackAddStrEx(i32* %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %141, i32 %142, i32 %143)
  %145 = load i32*, i32** %5, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 20
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @PackAddBoolEx(i32* %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i64 %148, i32 %149, i32 %150)
  %152 = load i32*, i32** %5, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 19
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @PackAddDataEx(i32* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %155, i32 4, i32 %156, i32 %157)
  %159 = load i32*, i32** %5, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 18
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @PackAddDataEx(i32* %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %162, i32 4, i32 %163, i32 %164)
  %166 = load i32*, i32** %5, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 17
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @PackAddBoolEx(i32* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i64 %169, i32 %170, i32 %171)
  %173 = load i32*, i32** %5, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 16
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @PackAddDataEx(i32* %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 %176, i32 4, i32 %177, i32 %178)
  %180 = load i32*, i32** %5, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 15
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @PackAddDataEx(i32* %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %183, i32 4, i32 %184, i32 %185)
  %187 = load i32*, i32** %5, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 14
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @PackAddBoolEx(i32* %187, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i64 %190, i32 %191, i32 %192)
  %194 = load i32*, i32** %5, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 13
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @PackAddBoolEx(i32* %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i64 %197, i32 %198, i32 %199)
  %201 = load i32*, i32** %5, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 12
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @PackAddIntEx(i32* %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %204, i32 %205, i32 %206)
  %208 = load i32*, i32** %5, align 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 11
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @PackAddIntEx(i32* %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 %211, i32 %212, i32 %213)
  %215 = load i32*, i32** %5, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 10
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @PackAddIntEx(i32* %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %218, i32 %219, i32 %220)
  %222 = load i32*, i32** %5, align 8
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @PackAddStrEx(i32* %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 %225, i32 %226, i32 %227)
  %229 = load i32*, i32** %5, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 8
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @PackAddBoolEx(i32* %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i64 %232, i32 %233, i32 %234)
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 8
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %265

240:                                              ; preds = %95
  %241 = load i32*, i32** %5, align 8
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 7
  %244 = load i32, i32* %7, align 4
  %245 = load i32, i32* %8, align 4
  %246 = call i32 @PackAddIp6AddrEx(i32* %241, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32* %243, i32 %244, i32 %245)
  %247 = load i32*, i32** %5, align 8
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 6
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @PackAddIp6AddrEx(i32* %247, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i32* %249, i32 %250, i32 %251)
  %253 = load i32*, i32** %5, align 8
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 5
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* %8, align 4
  %258 = call i32 @PackAddIp6AddrEx(i32* %253, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i32* %255, i32 %256, i32 %257)
  %259 = load i32*, i32** %5, align 8
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 4
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @PackAddIp6AddrEx(i32* %259, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32* %261, i32 %262, i32 %263)
  br label %283

265:                                              ; preds = %95
  %266 = call i32 @Zero(i32* %9, i32 4)
  %267 = load i32*, i32** %5, align 8
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @PackAddIp6AddrEx(i32* %267, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32* %9, i32 %268, i32 %269)
  %271 = load i32*, i32** %5, align 8
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* %8, align 4
  %274 = call i32 @PackAddIp6AddrEx(i32* %271, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i32* %9, i32 %272, i32 %273)
  %275 = load i32*, i32** %5, align 8
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* %8, align 4
  %278 = call i32 @PackAddIp6AddrEx(i32* %275, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i32* %9, i32 %276, i32 %277)
  %279 = load i32*, i32** %5, align 8
  %280 = load i32, i32* %7, align 4
  %281 = load i32, i32* %8, align 4
  %282 = call i32 @PackAddIp6AddrEx(i32* %279, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32* %9, i32 %280, i32 %281)
  br label %283

283:                                              ; preds = %15, %265, %240
  ret void
}

declare dso_local i32 @PackAddUniStrEx(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @PackAddIntEx(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @PackAddIp32Ex(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @PackAddStrEx(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @PackAddBoolEx(i32*, i8*, i64, i32, i32) #1

declare dso_local i32 @PackAddDataEx(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @PackAddIp6AddrEx(i32*, i8*, i32*, i32, i32) #1

declare dso_local i32 @Zero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
