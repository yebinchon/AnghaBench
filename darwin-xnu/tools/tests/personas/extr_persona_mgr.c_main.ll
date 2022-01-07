; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_mgr.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_mgr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kpersona_info = type { i64, i64, i32, i32, i32, i32*, i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s must be run as root\00", align 1
@PROG_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Not enough arguments\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"lookup\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"support\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@PERSONA_OP_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"Invalid [op]\00", align 1
@KAUTH_UID_NONE = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"vi:t:p:u:g:l:G:m:h\00", align 1
@optarg = common dso_local global i32 0, align 4
@PERSONA_ID_NONE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"guest\00", align 1
@PERSONA_GUEST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"managed\00", align 1
@PERSONA_MANAGED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@PERSONA_PRIV = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@PERSONA_SYSTEM = common dso_local global i32 0, align 4
@PERSONA_INVALID = common dso_local global i32 0, align 4
@PERSONA_TYPE_MAX = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"Invalid type specification: %s\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Invalid PID: %s\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Invalid UID:%s (%d)\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Invalid GID: %d\00", align 1
@MAXLOGNAME = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [24 x i8] c"Invalid groupspec: \22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Invalid group membership ID: %s\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Invalid option: '%c'\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Input persona:\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Invalid persona op: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kpersona_info, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %9, align 4
  store i64 -1, i64* %11, align 8
  store i32 -1, i32* %12, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %13 = call i64 (...) @geteuid()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @basename(i8* %23)
  br label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @PROG_NAME, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi i32 [ %24, %20 ], [ %26, %25 ]
  %29 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @usage_main(i8* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 131, i32* %9, align 4
  br label %78

46:                                               ; preds = %38
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 130, i32* %9, align 4
  br label %77

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 129, i32* %9, align 4
  br label %76

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 128, i32* %9, align 4
  br label %75

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65, %61
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @usage_main(i8* %72, i8* null, i32 1)
  br label %74

74:                                               ; preds = %69, %65
  br label %75

75:                                               ; preds = %74, %60
  br label %76

76:                                               ; preds = %75, %55
  br label %77

77:                                               ; preds = %76, %50
  br label %78

78:                                               ; preds = %77, %45
  %79 = load i32, i32* %9, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @PERSONA_OP_MAX, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81, %78
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @usage_main(i8* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 0)
  br label %90

90:                                               ; preds = %85, %81
  %91 = call i32 @memset(%struct.kpersona_info* %10, i32 0, i32 48)
  %92 = load i64, i64* @KAUTH_UID_NONE, align 8
  %93 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 0
  store i64 %92, i64* %93, align 8
  store i32 2, i32* @optind, align 4
  br label %94

94:                                               ; preds = %240, %90
  %95 = load i32, i32* %4, align 4
  %96 = load i8**, i8*** %5, align 8
  %97 = call signext i8 @getopt(i32 %95, i8** %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  store i8 %97, i8* %6, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %241

100:                                              ; preds = %94
  %101 = load i8, i8* %6, align 1
  %102 = sext i8 %101 to i32
  switch i32 %102, label %233 [
    i32 105, label %103
    i32 116, label %114
    i32 112, label %162
    i32 117, label %172
    i32 103, label %187
    i32 108, label %199
    i32 71, label %205
    i32 109, label %214
    i32 118, label %226
    i32 104, label %227
    i32 63, label %227
    i32 58, label %232
  ]

103:                                              ; preds = %100
  %104 = load i32, i32* @optarg, align 4
  %105 = call i32 @atoi(i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp sle i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @PERSONA_ID_NONE, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %108, %103
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 1
  store i64 %112, i64* %113, align 8
  br label %240

114:                                              ; preds = %100
  %115 = load i32, i32* @optarg, align 4
  %116 = call i32 @strncmp(i32 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 6)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* @PERSONA_GUEST, align 4
  %120 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 2
  store i32 %119, i32* %120, align 8
  br label %161

121:                                              ; preds = %114
  %122 = load i32, i32* @optarg, align 4
  %123 = call i32 @strncmp(i32 %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 8)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* @PERSONA_MANAGED, align 4
  %127 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 2
  store i32 %126, i32* %127, align 8
  br label %160

128:                                              ; preds = %121
  %129 = load i32, i32* @optarg, align 4
  %130 = call i32 @strncmp(i32 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* @PERSONA_PRIV, align 4
  %134 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 2
  store i32 %133, i32* %134, align 8
  br label %159

135:                                              ; preds = %128
  %136 = load i32, i32* @optarg, align 4
  %137 = call i32 @strncmp(i32 %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 7)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* @PERSONA_SYSTEM, align 4
  %141 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 2
  store i32 %140, i32* %141, align 8
  br label %158

142:                                              ; preds = %135
  %143 = load i32, i32* @optarg, align 4
  %144 = call i32 @atoi(i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @PERSONA_INVALID, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %152, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @PERSONA_TYPE_MAX, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148, %142
  %153 = load i32, i32* @optarg, align 4
  %154 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %152, %148
  %156 = load i32, i32* %7, align 4
  %157 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 2
  store i32 %156, i32* %157, align 8
  br label %158

158:                                              ; preds = %155, %139
  br label %159

159:                                              ; preds = %158, %132
  br label %160

160:                                              ; preds = %159, %125
  br label %161

161:                                              ; preds = %160, %118
  br label %240

162:                                              ; preds = %100
  %163 = load i32, i32* @optarg, align 4
  %164 = call i32 @atoi(i32 %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp sle i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32, i32* @optarg, align 4
  %169 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %167, %162
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %12, align 4
  br label %240

172:                                              ; preds = %100
  %173 = load i32, i32* @optarg, align 4
  %174 = call i32 @atoi(i32 %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %172
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 129
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* @optarg, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %177, %172
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %11, align 8
  br label %240

187:                                              ; preds = %100
  %188 = load i32, i32* @optarg, align 4
  %189 = call i32 @atoi(i32 %188)
  %190 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 3
  store i32 %189, i32* %190, align 4
  %191 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = icmp sle i32 %192, 500
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %194, %187
  br label %240

199:                                              ; preds = %100
  %200 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @optarg, align 4
  %203 = load i32, i32* @MAXLOGNAME, align 4
  %204 = call i32 @strncpy(i32 %201, i32 %202, i32 %203)
  br label %240

205:                                              ; preds = %100
  %206 = load i32, i32* @optarg, align 4
  %207 = call i32 @parse_groupspec(%struct.kpersona_info* %10, i32 %206)
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32, i32* @optarg, align 4
  %212 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %210, %205
  br label %240

214:                                              ; preds = %100
  %215 = load i32, i32* @optarg, align 4
  %216 = call i32 @atoi(i32 %215)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load i32, i32* @optarg, align 4
  %221 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %219, %214
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 0
  store i64 %224, i64* %225, align 8
  br label %240

226:                                              ; preds = %100
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  br label %240

227:                                              ; preds = %100, %100
  %228 = load i8**, i8*** %5, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 0
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @usage_main(i8* %230, i8* null, i32 1)
  br label %232

232:                                              ; preds = %100, %227
  br label %233

233:                                              ; preds = %100, %232
  %234 = load i8, i8* %6, align 1
  %235 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8 signext %234)
  %236 = load i8**, i8*** %5, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @usage_main(i8* %238, i8* null, i32 0)
  br label %240

240:                                              ; preds = %233, %226, %222, %213, %199, %198, %184, %170, %161, %110
  br label %94

241:                                              ; preds = %94
  %242 = load i64, i64* %11, align 8
  %243 = icmp eq i64 %242, -1
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = load i32, i32* %9, align 4
  %246 = icmp ne i32 %245, 129
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %11, align 8
  br label %250

250:                                              ; preds = %247, %244, %241
  %251 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @KAUTH_UID_NONE, align 8
  %254 = icmp ne i64 %252, %253
  br i1 %254, label %255, label %278

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %278

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 4
  store i32 1, i32* %260, align 8
  %261 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 5
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  store i32 %266, i32* %269, align 4
  br label %277

270:                                              ; preds = %259
  %271 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = trunc i64 %272 to i32
  %274 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %10, i32 0, i32 5
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  store i32 %273, i32* %276, align 4
  br label %277

277:                                              ; preds = %270, %264
  br label %278

278:                                              ; preds = %277, %255, %250
  %279 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = call i32 @dump_kpersona(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), %struct.kpersona_info* %10)
  br label %283

283:                                              ; preds = %281, %278
  %284 = load i32, i32* %9, align 4
  switch i32 %284, label %295 [
    i32 131, label %285
    i32 130, label %287
    i32 129, label %289
    i32 128, label %293
  ]

285:                                              ; preds = %283
  %286 = call i32 @persona_op_create(%struct.kpersona_info* %10)
  store i32 %286, i32* %7, align 4
  br label %298

287:                                              ; preds = %283
  %288 = call i32 @persona_op_destroy(%struct.kpersona_info* %10)
  store i32 %288, i32* %7, align 4
  br label %298

289:                                              ; preds = %283
  %290 = load i32, i32* %12, align 4
  %291 = load i64, i64* %11, align 8
  %292 = call i32 @persona_op_lookup(%struct.kpersona_info* %10, i32 %290, i64 %291)
  store i32 %292, i32* %7, align 4
  br label %298

293:                                              ; preds = %283
  %294 = call i32 (...) @persona_op_support()
  store i32 %294, i32* %7, align 4
  br label %298

295:                                              ; preds = %283
  %296 = load i32, i32* %9, align 4
  %297 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 %296)
  br label %298

298:                                              ; preds = %295, %293, %289, %287, %285
  %299 = load i32, i32* %7, align 4
  ret i32 %299
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @usage_main(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(%struct.kpersona_info*, i32, i32) #1

declare dso_local signext i8 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @parse_groupspec(%struct.kpersona_info*, i32) #1

declare dso_local i32 @printf(i8*, i8 signext) #1

declare dso_local i32 @dump_kpersona(i8*, %struct.kpersona_info*) #1

declare dso_local i32 @persona_op_create(%struct.kpersona_info*) #1

declare dso_local i32 @persona_op_destroy(%struct.kpersona_info*) #1

declare dso_local i32 @persona_op_lookup(%struct.kpersona_info*, i32, i64) #1

declare dso_local i32 @persona_op_support(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
