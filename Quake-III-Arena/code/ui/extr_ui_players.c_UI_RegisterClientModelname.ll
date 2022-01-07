; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_RegisterClientModelname.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_RegisterClientModelname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8* }

@MAX_QPATH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"models/players/%s/lower.md3\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"models/players/characters/%s/lower.md3\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to load model file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"models/players/%s/upper.md3\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"models/players/characters/%s/upper.md3\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"models/players/heads/%s/%s.md3\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"models/players/%s/head.md3\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Failed to load skin file: %s : %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"models/players/%s/animation.cfg\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"models/players/characters/%s/animation.cfg\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Failed to load animation file %s\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_RegisterClientModelname(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i32, i32* @MAX_QPATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @MAX_QPATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i32, i32* @MAX_QPATH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %28 = load i32, i32* @MAX_QPATH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %31 = load i32, i32* @MAX_QPATH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i8* null, i8** %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* null, i8** %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* @qfalse, align 4
  store i32 %43, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %202

44:                                               ; preds = %4
  %45 = load i8*, i8** %7, align 8
  %46 = trunc i64 %19 to i32
  %47 = call i32 @Q_strncpyz(i8* %21, i8* %45, i32 %46)
  %48 = call i8* @strchr(i8* %21, i8 signext 47)
  store i8* %48, i8** %16, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = trunc i64 %23 to i32
  %53 = call i32 @Q_strncpyz(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %60

54:                                               ; preds = %44
  %55 = load i8*, i8** %16, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = trunc i64 %23 to i32
  %58 = call i32 @Q_strncpyz(i8* %24, i8* %56, i32 %57)
  %59 = load i8*, i8** %16, align 8
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i8*, i8** %8, align 8
  %62 = trunc i64 %26 to i32
  %63 = call i32 @Q_strncpyz(i8* %27, i8* %61, i32 %62)
  %64 = call i8* @strchr(i8* %27, i8 signext 47)
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = trunc i64 %23 to i32
  %69 = call i32 @Q_strncpyz(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %76

70:                                               ; preds = %60
  %71 = load i8*, i8** %16, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = trunc i64 %23 to i32
  %74 = call i32 @Q_strncpyz(i8* %30, i8* %72, i32 %73)
  %75 = load i8*, i8** %16, align 8
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %70, %67
  %77 = trunc i64 %32 to i32
  %78 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %79 = call i8* @trap_R_RegisterModel(i8* %33)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %100, label %86

86:                                               ; preds = %76
  %87 = trunc i64 %32 to i32
  %88 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %89 = call i8* @trap_R_RegisterModel(i8* %33)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %86
  %97 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %98 = load i32, i32* @qfalse, align 4
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %202

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %76
  %101 = trunc i64 %32 to i32
  %102 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %21)
  %103 = call i8* @trap_R_RegisterModel(i8* %33)
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %124, label %110

110:                                              ; preds = %100
  %111 = trunc i64 %32 to i32
  %112 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %21)
  %113 = call i8* @trap_R_RegisterModel(i8* %33)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %110
  %121 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %122 = load i32, i32* @qfalse, align 4
  store i32 %122, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %202

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %100
  %125 = icmp ne i8* %27, null
  br i1 %125, label %126, label %136

126:                                              ; preds = %124
  %127 = getelementptr inbounds i8, i8* %27, i64 0
  %128 = load i8, i8* %127, align 16
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 42
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = trunc i64 %32 to i32
  %133 = getelementptr inbounds i8, i8* %27, i64 1
  %134 = getelementptr inbounds i8, i8* %27, i64 1
  %135 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %133, i8* %134)
  br label %139

136:                                              ; preds = %126, %124
  %137 = trunc i64 %32 to i32
  %138 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %27)
  br label %139

139:                                              ; preds = %136, %131
  %140 = call i8* @trap_R_RegisterModel(i8* %33)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %158, label %147

147:                                              ; preds = %139
  %148 = getelementptr inbounds i8, i8* %27, i64 0
  %149 = load i8, i8* %148, align 16
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 42
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = trunc i64 %32 to i32
  %154 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %27, i8* %27)
  %155 = call i8* @trap_R_RegisterModel(i8* %33)
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %152, %147, %139
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %165 = load i32, i32* @qfalse, align 4
  store i32 %165, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %202

166:                                              ; preds = %158
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 @UI_RegisterClientSkin(%struct.TYPE_4__* %167, i8* %21, i8* %24, i8* %27, i8* %30, i8* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %166
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = call i32 @UI_RegisterClientSkin(%struct.TYPE_4__* %172, i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %171
  %177 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %21, i8* %24)
  %178 = load i32, i32* @qfalse, align 4
  store i32 %178, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %202

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179, %166
  %181 = trunc i64 %32 to i32
  %182 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %21)
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @UI_ParseAnimationFile(i8* %33, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %200, label %188

188:                                              ; preds = %180
  %189 = trunc i64 %32 to i32
  %190 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %189, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* %21)
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @UI_ParseAnimationFile(i8* %33, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %188
  %197 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %33)
  %198 = load i32, i32* @qfalse, align 4
  store i32 %198, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %202

199:                                              ; preds = %188
  br label %200

200:                                              ; preds = %199, %180
  %201 = load i32, i32* @qtrue, align 4
  store i32 %201, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %202

202:                                              ; preds = %200, %196, %176, %163, %120, %96, %42
  %203 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @trap_R_RegisterModel(i8*) #2

declare dso_local i32 @Com_Printf(i8*, i8*, ...) #2

declare dso_local i32 @UI_RegisterClientSkin(%struct.TYPE_4__*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @UI_ParseAnimationFile(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
