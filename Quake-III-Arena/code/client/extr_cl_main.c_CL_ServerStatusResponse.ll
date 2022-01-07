; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ServerStatusResponse.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ServerStatusResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32* }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@MAX_SERVERSTATUSREQUESTS = common dso_local global i32 0, align 4
@cl_serverStatusList = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Server settings:\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%-24s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\0APlayers:\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"num: score: ping: name:\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\\%s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"%-2d   %-3d    %-3d   %s\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ServerStatusResponse(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %15 = load i32, i32* @MAX_INFO_STRING, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %13, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %39, %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MAX_SERVERSTATUSREQUESTS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cl_serverStatusList, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @NET_CompareAdr(i32 %24, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cl_serverStatusList, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %13, align 8
  br label %42

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %19

42:                                               ; preds = %33, %19
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store i32 1, i32* %14, align 4
  br label %247

46:                                               ; preds = %42
  %47 = load i32*, i32** %4, align 8
  %48 = call i8* @MSG_ReadStringLine(i32* %47)
  store i8* %48, i8** %5, align 8
  store i32 0, i32* %12, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 (i32*, i32, i8*, ...) @Com_sprintf(i32* %54, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %132

65:                                               ; preds = %46
  %66 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %130, %65
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %131

71:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %127, %71
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %75, %72
  %81 = phi i1 [ false, %72 ], [ %79, %75 ]
  br i1 %81, label %82, label %130

82:                                               ; preds = %80
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 92
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  br label %90

90:                                               ; preds = %87, %82
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %115, %90
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = load i8*, i8** %5, align 8
  %97 = load i8, i8* %96, align 1
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %18, i64 %100
  store i8 %97, i8* %101, align 1
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @MAX_INFO_STRING, align 4
  %104 = sub nsw i32 %103, 1
  %105 = icmp sge i32 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %116

107:                                              ; preds = %95
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %5, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 92
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %116

115:                                              ; preds = %107
  br label %91

116:                                              ; preds = %114, %106, %91
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %18, i64 %118
  store i8 0, i8* %119, align 1
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  br label %126

124:                                              ; preds = %116
  %125 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  br label %126

126:                                              ; preds = %124, %122
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %72

130:                                              ; preds = %80
  br label %67

131:                                              ; preds = %67
  br label %132

132:                                              ; preds = %131, %46
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @strlen(i32* %135)
  store i32 %136, i32* %12, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = sub i64 8, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 (i32*, i32, i8*, ...) @Com_sprintf(i32* %142, i32 %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %132
  %153 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %154 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %132
  store i32 0, i32* %8, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = call i8* @MSG_ReadStringLine(i32* %156)
  store i8* %157, i8** %5, align 8
  br label %158

158:                                              ; preds = %208, %155
  %159 = load i8*, i8** %5, align 8
  %160 = load i8, i8* %159, align 1
  %161 = icmp ne i8 %160, 0
  br i1 %161, label %162, label %213

162:                                              ; preds = %158
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @strlen(i32* %165)
  store i32 %166, i32* %12, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = sub i64 8, %174
  %176 = trunc i64 %175 to i32
  %177 = load i8*, i8** %5, align 8
  %178 = call i32 (i32*, i32, i8*, ...) @Com_sprintf(i32* %172, i32 %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %177)
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %207

183:                                              ; preds = %162
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %184 = load i8*, i8** %5, align 8
  %185 = call i32 @sscanf(i8* %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %10, i32* %11)
  %186 = load i8*, i8** %5, align 8
  %187 = call i8* @strchr(i8* %186, i8 signext 32)
  store i8* %187, i8** %5, align 8
  %188 = load i8*, i8** %5, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %183
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = call i8* @strchr(i8* %192, i8 signext 32)
  store i8* %193, i8** %5, align 8
  br label %194

194:                                              ; preds = %190, %183
  %195 = load i8*, i8** %5, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i8*, i8** %5, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %5, align 8
  br label %201

200:                                              ; preds = %194
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %201

201:                                              ; preds = %200, %197
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load i8*, i8** %5, align 8
  %206 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %202, i32 %203, i32 %204, i8* %205)
  br label %207

207:                                              ; preds = %201, %162
  br label %208

208:                                              ; preds = %207
  %209 = load i32*, i32** %4, align 8
  %210 = call i8* @MSG_ReadStringLine(i32* %209)
  store i8* %210, i8** %5, align 8
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %158

213:                                              ; preds = %158
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 5
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @strlen(i32* %216)
  store i32 %217, i32* %12, align 4
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = sub i64 8, %225
  %227 = trunc i64 %226 to i32
  %228 = call i32 (i32*, i32, i8*, ...) @Com_sprintf(i32* %223, i32 %227, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %229 = call i32 (...) @Com_Milliseconds()
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* %3, align 4
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* @qfalse, align 4
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %213
  %243 = load i32, i32* @qtrue, align 4
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  br label %246

246:                                              ; preds = %242, %213
  store i32 0, i32* %14, align 4
  br label %247

247:                                              ; preds = %246, %45
  %248 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %248)
  %249 = load i32, i32* %14, align 4
  switch i32 %249, label %251 [
    i32 0, label %250
    i32 1, label %250
  ]

250:                                              ; preds = %247, %247
  ret void

251:                                              ; preds = %247
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @NET_CompareAdr(i32, i32) #2

declare dso_local i8* @MSG_ReadStringLine(i32*) #2

declare dso_local i32 @Com_sprintf(i32*, i32, i8*, ...) #2

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i32 @strlen(i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @Com_Milliseconds(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
