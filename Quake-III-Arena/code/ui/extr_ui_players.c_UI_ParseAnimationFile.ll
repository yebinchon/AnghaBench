; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_ParseAnimationFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_ParseAnimationFile.c"
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
  br label %226

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
  br label %226

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
  %47 = call i32 @COM_Compress(i8* %46)
  %48 = getelementptr inbounds [20000 x i8], [20000 x i8]* %13, i64 0, i64 0
  store i8* %48, i8** %6, align 8
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %36, %64, %82, %92, %109
  %50 = load i8*, i8** %6, align 8
  store i8* %50, i8** %7, align 8
  %51 = call i8* @COM_Parse(i8** %6)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %113

55:                                               ; preds = %49
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @Q_stricmp(i8* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = call i8* @COM_Parse(i8** %6)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %113

64:                                               ; preds = %59
  br label %49

65:                                               ; preds = %55
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @Q_stricmp(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %79, %69
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = call i8* @COM_Parse(i8** %6)
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %82

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %70

82:                                               ; preds = %77, %70
  br label %49

83:                                               ; preds = %65
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @Q_stricmp(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = call i8* @COM_Parse(i8** %6)
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  br label %113

92:                                               ; preds = %87
  br label %49

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sge i32 %99, 48
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sle i32 %105, 57
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i8*, i8** %7, align 8
  store i8* %108, i8** %6, align 8
  br label %113

109:                                              ; preds = %101, %95
  %110 = load i8*, i8** %10, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %110, i8* %111)
  br label %49

113:                                              ; preds = %107, %91, %63, %54
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %213, %113
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @MAX_ANIMATIONS, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %216

118:                                              ; preds = %114
  %119 = call i8* @COM_Parse(i8** %6)
  store i8* %119, i8** %10, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  br label %216

123:                                              ; preds = %118
  %124 = load i8*, i8** %10, align 8
  %125 = call i8* @atoi(i8* %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 %126, i32* %131, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @LEGS_WALKCR, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %123
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %137 = load i32, i32* @LEGS_WALKCR, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = load i64, i64* @TORSO_GESTURE, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %141, %146
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %135, %123
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @LEGS_WALKCR, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %159, %153
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %152, %148
  %162 = call i8* @COM_Parse(i8** %6)
  store i8* %162, i8** %10, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %161
  br label %216

166:                                              ; preds = %161
  %167 = load i8*, i8** %10, align 8
  %168 = call i8* @atoi(i8* %167)
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 4
  store i8* %168, i8** %173, align 8
  %174 = call i8* @COM_Parse(i8** %6)
  store i8* %174, i8** %10, align 8
  %175 = load i8*, i8** %10, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %166
  br label %216

178:                                              ; preds = %166
  %179 = load i8*, i8** %10, align 8
  %180 = call i8* @atoi(i8* %179)
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 3
  store i8* %180, i8** %185, align 8
  %186 = call i8* @COM_Parse(i8** %6)
  store i8* %186, i8** %10, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %178
  br label %216

190:                                              ; preds = %178
  %191 = load i8*, i8** %10, align 8
  %192 = call float @atof(i8* %191)
  store float %192, float* %11, align 4
  %193 = load float, float* %11, align 4
  %194 = fcmp oeq float %193, 0.000000e+00
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  store float 1.000000e+00, float* %11, align 4
  br label %196

196:                                              ; preds = %195, %190
  %197 = load float, float* %11, align 4
  %198 = fdiv float 1.000000e+03, %197
  %199 = fptosi float %198 to i32
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  store i32 %199, i32* %204, align 4
  %205 = load float, float* %11, align 4
  %206 = fdiv float 1.000000e+03, %205
  %207 = fptosi float %206 to i32
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  store i32 %207, i32* %212, align 8
  br label %213

213:                                              ; preds = %196
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %114

216:                                              ; preds = %189, %177, %165, %122, %114
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* @MAX_ANIMATIONS, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = load i8*, i8** %4, align 8
  %222 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %221)
  %223 = load i32, i32* @qfalse, align 4
  store i32 %223, i32* %3, align 4
  br label %226

224:                                              ; preds = %216
  %225 = load i32, i32* @qtrue, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %224, %220, %32, %26
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @trap_FS_FOpenFile(i8*, i32*, i32) #1

declare dso_local i32 @Com_Printf(i8*, i8*, ...) #1

declare dso_local i32 @trap_FS_Read(i8*, i32, i32) #1

declare dso_local i32 @trap_FS_FCloseFile(i32) #1

declare dso_local i32 @COM_Compress(i8*) #1

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
