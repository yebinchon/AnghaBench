; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_move.c_AAS_InitSettings.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_move.c_AAS_InitSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@aassettings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"phys_friction\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"phys_stopspeed\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"phys_gravity\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"800\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"phys_waterfriction\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"phys_watergravity\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"400\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"phys_maxvelocity\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"320\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"phys_maxwalkvelocity\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"phys_maxcrouchvelocity\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"phys_maxswimvelocity\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"150\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"phys_walkaccelerate\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"phys_airaccelerate\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"phys_swimaccelerate\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"phys_maxstep\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"19\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"phys_maxsteepness\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"0.7\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"phys_maxwaterjump\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"18\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"phys_maxbarrier\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"33\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"phys_jumpvel\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"270\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"phys_falldelta5\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"40\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"phys_falldelta10\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"60\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"rs_waterjump\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"rs_teleport\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"rs_barrierjump\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"rs_startcrouch\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"300\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"rs_startgrapple\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"500\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"rs_startwalkoffledge\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"70\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"rs_startjump\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"rs_rocketjump\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"rs_bfgjump\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"rs_jumppad\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"250\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"rs_aircontrolledjumppad\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"rs_funcbob\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"rs_startelevator\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"rs_falldamage5\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"rs_falldamage10\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"rs_maxfallheight\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"rs_maxjumpfallheight\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"450\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_InitSettings() #0 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 0), align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  store i32 0, i32* %2, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 0), align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 1
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 0), align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 2
  store i32 -1, i32* %6, align 4
  %7 = call i8* @LibVarValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 36), align 8
  %8 = call i8* @LibVarValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 35), align 8
  %9 = call i8* @LibVarValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 34), align 8
  %10 = call i8* @LibVarValue(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 33), align 8
  %11 = call i8* @LibVarValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 32), align 8
  %12 = call i8* @LibVarValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 31), align 8
  %13 = call i8* @LibVarValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 30), align 8
  %14 = call i8* @LibVarValue(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 29), align 8
  %15 = call i8* @LibVarValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 28), align 8
  %16 = call i8* @LibVarValue(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 27), align 8
  %17 = call i8* @LibVarValue(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 26), align 8
  %18 = call i8* @LibVarValue(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 25), align 8
  %19 = call i8* @LibVarValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 24), align 8
  %20 = call i8* @LibVarValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 23), align 8
  %21 = call i8* @LibVarValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 22), align 8
  %22 = call i8* @LibVarValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 21), align 8
  %23 = call i8* @LibVarValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 20), align 8
  %24 = call i8* @LibVarValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 19), align 8
  %25 = call i8* @LibVarValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 18), align 8
  %26 = call i8* @LibVarValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 17), align 8
  %27 = call i8* @LibVarValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0))
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 16), align 8
  %28 = call i8* @LibVarValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 15), align 8
  %29 = call i8* @LibVarValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0))
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 14), align 8
  %30 = call i8* @LibVarValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0))
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 13), align 8
  %31 = call i8* @LibVarValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0))
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 12), align 8
  %32 = call i8* @LibVarValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0))
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 11), align 8
  %33 = call i8* @LibVarValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0))
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 10), align 8
  %34 = call i8* @LibVarValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0))
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 9), align 8
  %35 = call i8* @LibVarValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0))
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 8), align 8
  %36 = call i8* @LibVarValue(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0))
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 7), align 8
  %37 = call i8* @LibVarValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0))
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 6), align 8
  %38 = call i8* @LibVarValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0))
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 5), align 8
  %39 = call i8* @LibVarValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0))
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 4), align 8
  %40 = call i8* @LibVarValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0))
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 3), align 8
  %41 = call i8* @LibVarValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 2), align 8
  %42 = call i8* @LibVarValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0))
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 1), align 8
  ret void
}

declare dso_local i8* @LibVarValue(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
