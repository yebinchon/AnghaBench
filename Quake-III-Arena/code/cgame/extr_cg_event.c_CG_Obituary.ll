; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_event.c_CG_Obituary.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_event.c_CG_Obituary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CG_Obituary: target out of range\00", align 1
@cgs = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ENTITYNUM_WORLD = common dso_local global i32 0, align 4
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@S_COLOR_WHITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"suicides\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"cratered\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"was squished\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"sank like a rock\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"melted\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"does a back flip into the lava\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"saw the light\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"was in the wrong place\00", align 1
@GENDER_FEMALE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"tripped on her own grenade\00", align 1
@GENDER_NEUTER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"tripped on its own grenade\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"tripped on his own grenade\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"blew herself up\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"blew itself up\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"blew himself up\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"melted herself\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"melted itself\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"melted himself\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"should have used a smaller gun\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"killed herself\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"killed itself\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"killed himself\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%s %s.\0A\00", align 1
@cg = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [32 x i8] c"You fragged %s\0A%s place with %i\00", align 1
@PERS_RANK = common dso_local global i64 0, align 8
@PERS_SCORE = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [15 x i8] c"You fragged %s\00", align 1
@SCREEN_HEIGHT = common dso_local global double 0.000000e+00, align 8
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"noname\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"was caught by\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"was pummeled by\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"was machinegunned by\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"was gunned down by\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"ate\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"'s grenade\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"was shredded by\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"'s shrapnel\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"'s rocket\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"almost dodged\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"was melted by\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"'s plasmagun\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"was railed by\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"was electrocuted by\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"was blasted by\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"'s BFG\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"tried to invade\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"'s personal space\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"was killed by\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"%s %s %s%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"%s died.\0A\00", align 1
@cg_cameraOrbit = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@cg_singlePlayerActive = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @CG_Obituary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_Obituary(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MAX_CLIENTS, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %1
  %31 = call i32 @CG_Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 1), align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %35
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %13, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MAX_CLIENTS, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %32
  %44 = load i32, i32* @ENTITYNUM_WORLD, align 4
  store i32 %44, i32* %5, align 4
  store i8* null, i8** %9, align 8
  br label %51

45:                                               ; preds = %39
  %46 = load i64, i64* @CS_PLAYERS, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i8* @CG_ConfigString(i64 %49)
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %45, %43
  %52 = load i64, i64* @CS_PLAYERS, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i8* @CG_ConfigString(i64 %55)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %247

60:                                               ; preds = %51
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %62 = load i8*, i8** %8, align 8
  %63 = call i8* @Info_ValueForKey(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 @Q_strncpyz(i8* %61, i8* %63, i32 30)
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %66 = load i32, i32* @S_COLOR_WHITE, align 4
  %67 = call i32 @strcat(i8* %65, i32 %66)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %68 = load i32, i32* %3, align 4
  switch i32 %68, label %77 [
    i32 132, label %69
    i32 151, label %70
    i32 152, label %71
    i32 128, label %72
    i32 133, label %73
    i32 144, label %74
    i32 131, label %75
    i32 129, label %76
  ]

69:                                               ; preds = %60
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %78

70:                                               ; preds = %60
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %78

71:                                               ; preds = %60
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %78

72:                                               ; preds = %60
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %78

73:                                               ; preds = %60
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %78

74:                                               ; preds = %60
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %78

75:                                               ; preds = %60
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %78

76:                                               ; preds = %60
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %78

77:                                               ; preds = %60
  store i8* null, i8** %6, align 8
  br label %78

78:                                               ; preds = %77, %76, %75, %74, %73, %72, %71, %70, %69
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %141

82:                                               ; preds = %78
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %3, align 4
  switch i32 %86, label %127 [
    i32 147, label %87
    i32 135, label %100
    i32 139, label %113
    i32 154, label %126
  ]

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @GENDER_FEMALE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %99

92:                                               ; preds = %87
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @GENDER_NEUTER, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %98

97:                                               ; preds = %92
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  br label %98

98:                                               ; preds = %97, %96
  br label %99

99:                                               ; preds = %98, %91
  br label %140

100:                                              ; preds = %82
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @GENDER_FEMALE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %112

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @GENDER_NEUTER, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %6, align 8
  br label %111

110:                                              ; preds = %105
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  br label %111

111:                                              ; preds = %110, %109
  br label %112

112:                                              ; preds = %111, %104
  br label %140

113:                                              ; preds = %82
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @GENDER_FEMALE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8** %6, align 8
  br label %125

118:                                              ; preds = %113
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @GENDER_NEUTER, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %6, align 8
  br label %124

123:                                              ; preds = %118
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8** %6, align 8
  br label %124

124:                                              ; preds = %123, %122
  br label %125

125:                                              ; preds = %124, %117
  br label %140

126:                                              ; preds = %82
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8** %6, align 8
  br label %140

127:                                              ; preds = %82
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @GENDER_FEMALE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8** %6, align 8
  br label %139

132:                                              ; preds = %127
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @GENDER_NEUTER, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8** %6, align 8
  br label %138

137:                                              ; preds = %132
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8** %6, align 8
  br label %138

138:                                              ; preds = %137, %136
  br label %139

139:                                              ; preds = %138, %131
  br label %140

140:                                              ; preds = %139, %126, %125, %112, %99
  br label %141

141:                                              ; preds = %140, %78
  %142 = load i8*, i8** %6, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 (i8*, i8*, ...) @CG_Printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* %145, i8* %146)
  br label %247

148:                                              ; preds = %141
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %149, %153
  br i1 %154, label %155, label %187

155:                                              ; preds = %148
  %156 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0), align 8
  %157 = load i64, i64* @GT_TEAM, align 8
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %178

159:                                              ; preds = %155
  %160 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* @PERS_RANK, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 1
  %169 = call i32 @CG_PlaceString(i64 %168)
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* @PERS_SCORE, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* %160, i32 %169, i64 %176)
  store i8* %177, i8** %14, align 8
  br label %181

178:                                              ; preds = %155
  %179 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %180 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* %179)
  store i8* %180, i8** %14, align 8
  br label %181

181:                                              ; preds = %178, %159
  %182 = load i8*, i8** %14, align 8
  %183 = load double, double* @SCREEN_HEIGHT, align 8
  %184 = fmul double %183, 3.000000e-01
  %185 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %186 = call i32 @CG_CenterPrint(i8* %182, double %184, i32 %185)
  br label %187

187:                                              ; preds = %181, %148
  %188 = load i8*, i8** %9, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %194, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* @ENTITYNUM_WORLD, align 4
  store i32 %191, i32* %5, align 4
  %192 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %193 = call i32 @strcpy(i8* %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %213

194:                                              ; preds = %187
  %195 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %196 = load i8*, i8** %9, align 8
  %197 = call i8* @Info_ValueForKey(i8* %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %198 = call i32 @Q_strncpyz(i8* %195, i8* %197, i32 30)
  %199 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %200 = load i32, i32* @S_COLOR_WHITE, align 4
  %201 = call i32 @strcat(i8* %199, i32 %200)
  %202 = load i32, i32* %4, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %202, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %194
  %209 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %210 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %211 = call i32 @Q_strncpyz(i8* %209, i8* %210, i32 8)
  br label %212

212:                                              ; preds = %208, %194
  br label %213

213:                                              ; preds = %212, %190
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @ENTITYNUM_WORLD, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %244

217:                                              ; preds = %213
  %218 = load i32, i32* %3, align 4
  switch i32 %218, label %233 [
    i32 149, label %219
    i32 150, label %220
    i32 142, label %221
    i32 134, label %222
    i32 148, label %223
    i32 147, label %224
    i32 136, label %225
    i32 135, label %226
    i32 140, label %227
    i32 139, label %228
    i32 137, label %229
    i32 143, label %230
    i32 155, label %231
    i32 154, label %231
    i32 130, label %232
  ]

219:                                              ; preds = %217
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8** %6, align 8
  br label %234

220:                                              ; preds = %217
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8** %6, align 8
  br label %234

221:                                              ; preds = %217
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8** %6, align 8
  br label %234

222:                                              ; preds = %217
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i8** %6, align 8
  br label %234

223:                                              ; preds = %217
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8** %7, align 8
  br label %234

224:                                              ; preds = %217
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8** %7, align 8
  br label %234

225:                                              ; preds = %217
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8** %7, align 8
  br label %234

226:                                              ; preds = %217
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8** %7, align 8
  br label %234

227:                                              ; preds = %217
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8** %7, align 8
  br label %234

228:                                              ; preds = %217
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8** %7, align 8
  br label %234

229:                                              ; preds = %217
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i8** %6, align 8
  br label %234

230:                                              ; preds = %217
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i8** %6, align 8
  br label %234

231:                                              ; preds = %217, %217
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8** %7, align 8
  br label %234

232:                                              ; preds = %217
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0), i8** %7, align 8
  br label %234

233:                                              ; preds = %217
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8** %6, align 8
  br label %234

234:                                              ; preds = %233, %232, %231, %230, %229, %228, %227, %226, %225, %224, %223, %222, %221, %220, %219
  %235 = load i8*, i8** %6, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %239 = load i8*, i8** %6, align 8
  %240 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %241 = load i8*, i8** %7, align 8
  %242 = call i32 (i8*, i8*, ...) @CG_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* %238, i8* %239, i8* %240, i8* %241)
  br label %247

243:                                              ; preds = %234
  br label %244

244:                                              ; preds = %243, %213
  %245 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %246 = call i32 (i8*, i8*, ...) @CG_Printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i8* %245)
  br label %247

247:                                              ; preds = %244, %237, %144, %59
  ret void
}

declare dso_local i32 @CG_Error(i8*) #1

declare dso_local i8* @CG_ConfigString(i64) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i32) #1

declare dso_local i32 @CG_Printf(i8*, i8*, ...) #1

declare dso_local i8* @va(i8*, i8*, ...) #1

declare dso_local i32 @CG_PlaceString(i64) #1

declare dso_local i32 @CG_CenterPrint(i8*, double, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
