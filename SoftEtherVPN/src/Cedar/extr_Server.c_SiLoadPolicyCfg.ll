; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadPolicyCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadPolicyCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

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
define dso_local void @SiLoadPolicyCfg(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %166

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @Zero(%struct.TYPE_4__* %12, i32 304)
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @CfgGetBool(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 37
  store i8* %15, i8** %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @CfgGetBool(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 36
  store i8* %19, i8** %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @CfgGetBool(i32* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 35
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @CfgGetBool(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 34
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @CfgGetBool(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 33
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i8* @CfgGetBool(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 32
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @CfgGetBool(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 31
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i8* @CfgGetBool(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 30
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i8* @CfgGetBool(i32* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 29
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i8* @CfgGetBool(i32* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 28
  store i8* %51, i8** %53, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i8* @CfgGetBool(i32* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 27
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i8* @CfgGetBool(i32* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 26
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @CfgGetBool(i32* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 25
  store i8* %63, i8** %65, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i8* @CfgGetInt(i32* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 24
  store i8* %67, i8** %69, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i8* @CfgGetInt(i32* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 23
  store i8* %71, i8** %73, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i8* @CfgGetInt(i32* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 22
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i8* @CfgGetInt(i32* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 21
  store i8* %79, i8** %81, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i8* @CfgGetInt(i32* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 20
  store i8* %83, i8** %85, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = call i8* @CfgGetInt(i32* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 19
  store i8* %87, i8** %89, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = call i8* @CfgGetBool(i32* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 18
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = call i8* @CfgGetInt(i32* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 17
  store i8* %95, i8** %97, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = call i8* @CfgGetBool(i32* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 16
  store i8* %99, i8** %101, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = call i8* @CfgGetBool(i32* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 15
  store i8* %103, i8** %105, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = call i8* @CfgGetBool(i32* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 14
  store i8* %107, i8** %109, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = call i8* @CfgGetBool(i32* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 13
  store i8* %111, i8** %113, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = call i8* @CfgGetBool(i32* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 12
  store i8* %115, i8** %117, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = call i8* @CfgGetBool(i32* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 11
  store i8* %119, i8** %121, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = call i8* @CfgGetBool(i32* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 10
  store i8* %123, i8** %125, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = call i8* @CfgGetBool(i32* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 9
  store i8* %127, i8** %129, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = call i8* @CfgGetInt(i32* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 8
  store i8* %131, i8** %133, align 8
  %134 = load i32*, i32** %4, align 8
  %135 = call i8* @CfgGetBool(i32* %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 7
  store i8* %135, i8** %137, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = call i8* @CfgGetInt(i32* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0))
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 6
  store i8* %139, i8** %141, align 8
  %142 = load i32*, i32** %4, align 8
  %143 = call i8* @CfgGetBool(i32* %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  %146 = load i32*, i32** %4, align 8
  %147 = call i8* @CfgGetBool(i32* %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  store i8* %147, i8** %149, align 8
  %150 = load i32*, i32** %4, align 8
  %151 = call i8* @CfgGetBool(i32* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0))
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 3
  store i8* %151, i8** %153, align 8
  %154 = load i32*, i32** %4, align 8
  %155 = call i8* @CfgGetBool(i32* %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0))
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = load i32*, i32** %4, align 8
  %159 = call i8* @CfgGetBool(i32* %158, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0))
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load i32*, i32** %4, align 8
  %163 = call i8* @CfgGetInt(i32* %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %11, %10
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @CfgGetBool(i32*, i8*) #1

declare dso_local i8* @CfgGetInt(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
