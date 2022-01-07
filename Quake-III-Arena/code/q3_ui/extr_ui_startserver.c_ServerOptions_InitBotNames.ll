; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_startserver.c_ServerOptions_InitBotNames.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_startserver.c_ServerOptions_InitBotNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8**, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@s_serveroptions = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"grunt\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"visor\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"sarge\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@PLAYER_SLOTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"--------\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ServerOptions_InitBotNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ServerOptions_InitBotNames() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_INFO_STRING, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 0), align 8
  %15 = load i64, i64* @GT_TEAM, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %76

17:                                               ; preds = %0
  %18 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @Q_strncpyz(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 16)
  %22 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @Q_strncpyz(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 0), align 8
  %27 = load i64, i64* @GT_TEAM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @Q_strncpyz(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 16)
  br label %38

34:                                               ; preds = %17
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 2, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 2, i32* %41, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 5
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 2, i32* %44, align 4
  %45 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 6
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @Q_strncpyz(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 16)
  %49 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 7
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @Q_strncpyz(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 16)
  %53 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @Q_strncpyz(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 0), align 8
  %58 = load i64, i64* @GT_TEAM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %38
  %61 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 9
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @Q_strncpyz(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 16)
  br label %69

65:                                               ; preds = %38
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 9
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 2, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 10
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 2, i32* %72, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 11
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 2, i32* %75, align 4
  store i32 1, i32* %9, align 4
  br label %206

76:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 3), align 8
  %78 = call i8* @UI_GetArenaInfoByMap(i32 %77)
  store i8* %78, i8** %3, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = call i8* @Info_ValueForKey(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %81 = trunc i64 %11 to i32
  %82 = call i32 @Q_strncpyz(i8* %13, i8* %80, i32 %81)
  %83 = getelementptr inbounds i8, i8* %13, i64 0
  store i8* %83, i8** %5, align 8
  br label %84

84:                                               ; preds = %139, %76
  %85 = load i8*, i8** %5, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* %1, align 4
  %91 = load i32, i32* @PLAYER_SLOTS, align 4
  %92 = icmp slt i32 %90, %91
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi i1 [ false, %84 ], [ %92, %89 ]
  br i1 %94, label %95, label %153

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %108, %95
  %97 = load i8*, i8** %5, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i8*, i8** %5, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 32
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i1 [ false, %96 ], [ %105, %101 ]
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %5, align 8
  br label %96

111:                                              ; preds = %106
  %112 = load i8*, i8** %5, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  br label %153

115:                                              ; preds = %111
  %116 = load i8*, i8** %5, align 8
  store i8* %116, i8** %6, align 8
  br label %117

117:                                              ; preds = %129, %115
  %118 = load i8*, i8** %5, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i8*, i8** %5, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 32
  br label %127

127:                                              ; preds = %122, %117
  %128 = phi i1 [ false, %117 ], [ %126, %122 ]
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %5, align 8
  br label %117

132:                                              ; preds = %127
  %133 = load i8*, i8** %5, align 8
  %134 = load i8, i8* %133, align 1
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %5, align 8
  store i8 0, i8* %137, align 1
  br label %139

139:                                              ; preds = %136, %132
  %140 = load i8*, i8** %6, align 8
  %141 = call i8* @UI_GetBotInfoByName(i8* %140)
  store i8* %141, i8** %4, align 8
  %142 = load i8*, i8** %4, align 8
  %143 = call i8* @Info_ValueForKey(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %143, i8** %6, align 8
  %144 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %145 = load i32, i32* %1, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @Q_strncpyz(i8* %148, i8* %149, i32 8)
  %151 = load i32, i32* %1, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %1, align 4
  br label %84

153:                                              ; preds = %114, %93
  %154 = load i32, i32* %1, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %166, %153
  %156 = load i32, i32* %2, align 4
  %157 = load i32, i32* @PLAYER_SLOTS, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %161 = load i32, i32* %2, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @strcpy(i8* %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %166

166:                                              ; preds = %159
  %167 = load i32, i32* %2, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %2, align 4
  br label %155

169:                                              ; preds = %155
  br label %170

170:                                              ; preds = %179, %169
  %171 = load i32, i32* %1, align 4
  %172 = icmp slt i32 %171, 8
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %175 = load i32, i32* %1, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  store i32 0, i32* %178, align 4
  br label %179

179:                                              ; preds = %173
  %180 = load i32, i32* %1, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %1, align 4
  br label %170

182:                                              ; preds = %170
  br label %183

183:                                              ; preds = %202, %182
  %184 = load i32, i32* %1, align 4
  %185 = load i32, i32* @PLAYER_SLOTS, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %205

187:                                              ; preds = %183
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %189 = load i32, i32* %1, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %201

195:                                              ; preds = %187
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %197 = load i32, i32* %1, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  store i32 2, i32* %200, align 4
  br label %201

201:                                              ; preds = %195, %187
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %1, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %1, align 4
  br label %183

205:                                              ; preds = %183
  store i32 0, i32* %9, align 4
  br label %206

206:                                              ; preds = %205, %69
  %207 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %207)
  %208 = load i32, i32* %9, align 4
  switch i32 %208, label %210 [
    i32 0, label %209
    i32 1, label %209
  ]

209:                                              ; preds = %206, %206
  ret void

210:                                              ; preds = %206
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i8* @UI_GetArenaInfoByMap(i32) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i8* @UI_GetBotInfoByName(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
