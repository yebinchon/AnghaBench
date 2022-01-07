; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWritePolicyCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWritePolicyCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Access\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DHCPFilter\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"DHCPNoServer\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DHCPForce\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"NoBridge\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"NoRouting\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"CheckMac\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"CheckIP\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ArpDhcpOnly\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"PrivacyFilter\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"NoServer\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"NoBroadcastLimiter\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"MonitorPort\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"MaxConnection\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"TimeOut\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"MaxMac\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"MaxIP\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"MaxUpload\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"MaxDownload\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"FixPassword\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"MultiLogins\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"NoQoS\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"RSandRAFilter\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"RAFilter\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"DHCPv6Filter\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"DHCPv6NoServer\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"NoRoutingV6\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"CheckIPv6\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"NoServerV6\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"MaxIPv6\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"NoSavePassword\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"AutoDisconnect\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"FilterIPv4\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"FilterIPv6\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"FilterNonIP\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"NoIPv6DefaultRouterInRA\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"NoIPv6DefaultRouterInRAWhenIPv6\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"VLanId\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiWritePolicyCfg(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %3
  br label %232

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 37
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CfgAddBool(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 36
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CfgAddBool(i32* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 35
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CfgAddBool(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CfgAddBool(i32* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %22
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 33
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @CfgAddBool(i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 32
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CfgAddBool(i32* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %40, %22
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 31
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CfgAddBool(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 30
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @CfgAddBool(i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 29
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @CfgAddBool(i32* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %51
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 28
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @CfgAddBool(i32* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %69, %51
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 27
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @CfgAddBool(i32* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 26
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CfgAddBool(i32* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %75
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 25
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @CfgAddBool(i32* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 24
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @CfgAddInt(i32* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 23
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @CfgAddInt(i32* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %88, %75
  %105 = load i32*, i32** %4, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 22
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @CfgAddInt(i32* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 21
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @CfgAddInt(i32* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 20
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @CfgAddInt(i32* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %4, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 19
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @CfgAddInt(i32* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %6, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %104
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 18
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @CfgAddBool(i32* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %131)
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 17
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @CfgAddInt(i32* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %4, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 16
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @CfgAddBool(i32* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %127, %104
  %144 = load i32*, i32** %4, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 15
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @CfgAddBool(i32* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %4, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 14
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @CfgAddBool(i32* %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 %152)
  %154 = load i32*, i32** %4, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 13
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @CfgAddBool(i32* %154, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %4, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @CfgAddBool(i32* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* %6, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %143
  %167 = load i32*, i32** %4, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 11
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @CfgAddBool(i32* %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %166, %143
  %173 = load i32*, i32** %4, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 10
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @CfgAddBool(i32* %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i32 %176)
  %178 = load i32*, i32** %4, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 9
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @CfgAddBool(i32* %178, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i32 %181)
  %183 = load i32*, i32** %4, align 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @CfgAddInt(i32* %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %6, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %172
  %191 = load i32*, i32** %4, align 8
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @CfgAddBool(i32* %191, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i32 %194)
  %196 = load i32*, i32** %4, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @CfgAddInt(i32* %196, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %190, %172
  %202 = load i32*, i32** %4, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @CfgAddBool(i32* %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i32 %205)
  %207 = load i32*, i32** %4, align 8
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @CfgAddBool(i32* %207, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i32 %210)
  %212 = load i32*, i32** %4, align 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @CfgAddBool(i32* %212, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 %215)
  %217 = load i32*, i32** %4, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @CfgAddBool(i32* %217, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i32 %220)
  %222 = load i32*, i32** %4, align 8
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @CfgAddBool(i32* %222, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i32 %225)
  %227 = load i32*, i32** %4, align 8
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @CfgAddInt(i32* %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %201, %12
  ret void
}

declare dso_local i32 @CfgAddBool(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
