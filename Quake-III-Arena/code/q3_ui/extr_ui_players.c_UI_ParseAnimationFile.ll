; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_players.c_UI_ParseAnimationFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_players.c_UI_ParseAnimationFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8* }

@MAX_ANIMATIONS = common dso_local global i32 0, align 4
@FS_READ = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"File %s too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"footsteps\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"headoffset\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sex\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"unknown token '%s' is %s\0A\00", align 1
@LEGS_WALKCR = common dso_local global i32 0, align 4
@TORSO_GESTURE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"Error parsing animation file: %s\00", align 1
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @UI_ParseAnimationFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_ParseAnimationFile(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca [20000 x i8], align 16
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = load i32, i32* @MAX_ANIMATIONS, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 32, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(%struct.TYPE_4__* %15, i32 0, i32 %19)
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @FS_READ, align 4
  %23 = call i32 @trap_FS_FOpenFile(i8* %21, i32* %14, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @qfalse, align 4
  store i32 %27, i32* %3, align 4
  br label %224

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp uge i64 %30, 19999
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @qfalse, align 4
  store i32 %35, i32* %3, align 4
  br label %224

36:                                               ; preds = %28
  %37 = getelementptr inbounds [20000 x i8], [20000 x i8]* %13, i64 0, i64 0
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @trap_FS_Read(i8* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [20000 x i8], [20000 x i8]* %13, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @trap_FS_FCloseFile(i32 %44)
  %46 = getelementptr inbounds [20000 x i8], [20000 x i8]* %13, i64 0, i64 0
  store i8* %46, i8** %6, align 8
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %36, %62, %80, %90, %107
  %48 = load i8*, i8** %6, align 8
  store i8* %48, i8** %7, align 8
  %49 = call i8* @COM_Parse(i8** %6)
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %111

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @Q_stricmp(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = call i8* @COM_Parse(i8** %6)
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %111

62:                                               ; preds = %57
  br label %47

63:                                               ; preds = %53
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @Q_stricmp(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %77, %67
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 3
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = call i8* @COM_Parse(i8** %6)
  store i8* %72, i8** %10, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  br label %80

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %68

80:                                               ; preds = %75, %68
  br label %47

81:                                               ; preds = %63
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @Q_stricmp(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = call i8* @COM_Parse(i8** %6)
  store i8* %86, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %111

90:                                               ; preds = %85
  br label %47

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp sge i32 %97, 48
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp sle i32 %103, 57
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i8*, i8** %7, align 8
  store i8* %106, i8** %6, align 8
  br label %111

107:                                              ; preds = %99, %93
  %108 = load i8*, i8** %10, align 8
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %108, i8* %109)
  br label %47

111:                                              ; preds = %105, %89, %61, %52
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %211, %111
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @MAX_ANIMATIONS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %214

116:                                              ; preds = %112
  %117 = call i8* @COM_Parse(i8** %6)
  store i8* %117, i8** %10, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  br label %214

121:                                              ; preds = %116
  %122 = load i8*, i8** %10, align 8
  %123 = call i8* @atoi(i8* %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i32 %124, i32* %129, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @LEGS_WALKCR, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %121
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %135 = load i32, i32* @LEGS_WALKCR, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = load i64, i64* @TORSO_GESTURE, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %139, %144
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %133, %121
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @LEGS_WALKCR, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, %151
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %150, %146
  %160 = call i8* @COM_Parse(i8** %6)
  store i8* %160, i8** %10, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  br label %214

164:                                              ; preds = %159
  %165 = load i8*, i8** %10, align 8
  %166 = call i8* @atoi(i8* %165)
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 4
  store i8* %166, i8** %171, align 8
  %172 = call i8* @COM_Parse(i8** %6)
  store i8* %172, i8** %10, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %164
  br label %214

176:                                              ; preds = %164
  %177 = load i8*, i8** %10, align 8
  %178 = call i8* @atoi(i8* %177)
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 3
  store i8* %178, i8** %183, align 8
  %184 = call i8* @COM_Parse(i8** %6)
  store i8* %184, i8** %10, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %176
  br label %214

188:                                              ; preds = %176
  %189 = load i8*, i8** %10, align 8
  %190 = call float @atof(i8* %189)
  store float %190, float* %11, align 4
  %191 = load float, float* %11, align 4
  %192 = fcmp oeq float %191, 0.000000e+00
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store float 1.000000e+00, float* %11, align 4
  br label %194

194:                                              ; preds = %193, %188
  %195 = load float, float* %11, align 4
  %196 = fdiv float 1.000000e+03, %195
  %197 = fptosi float %196 to i32
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i32 %197, i32* %202, align 4
  %203 = load float, float* %11, align 4
  %204 = fdiv float 1.000000e+03, %203
  %205 = fptosi float %204 to i32
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  store i32 %205, i32* %210, align 8
  br label %211

211:                                              ; preds = %194
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %9, align 4
  br label %112

214:                                              ; preds = %187, %175, %163, %120, %112
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @MAX_ANIMATIONS, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %214
  %219 = load i8*, i8** %4, align 8
  %220 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %219)
  %221 = load i32, i32* @qfalse, align 4
  store i32 %221, i32* %3, align 4
  br label %224

222:                                              ; preds = %214
  %223 = load i32, i32* @qtrue, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %222, %218, %32, %26
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @trap_FS_FOpenFile(i8*, i32*, i32) #1

declare dso_local i32 @Com_Printf(i8*, i8*, ...) #1

declare dso_local i32 @trap_FS_Read(i8*, i32, i32) #1

declare dso_local i32 @trap_FS_FCloseFile(i32) #1

declare dso_local i8* @COM_Parse(i8**) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local float @atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
