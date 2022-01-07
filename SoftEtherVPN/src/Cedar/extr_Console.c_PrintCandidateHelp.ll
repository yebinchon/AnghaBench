; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_PrintCandidateHelp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_PrintCandidateHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i8*)* }
%struct.TYPE_11__ = type { i32, i8** }
%struct.TYPE_10__ = type { i32, i32* }

@CompareCandidateStr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i32] [i32 37, i32 83, i32 37, i32 83, i32 37, i32 83, i32 32, i32 45, i32 32, i32 37, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [10 x i32] [i32 37, i32 83, i32 37, i32 83, i32 32, i32 32, i32 32, i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintCandidateHelp(%struct.TYPE_12__* %0, i8* %1, %struct.TYPE_11__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [128 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32 %3, i32* %8, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = icmp eq %struct.TYPE_12__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = icmp eq %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %4
  br label %267

33:                                               ; preds = %29
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = call i32 @GetConsoleWidth(%struct.TYPE_12__* %34)
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 32
  %39 = sext i32 %38 to i64
  %40 = mul i64 1, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i8* @Malloc(i32 %42)
  store i8* %43, i8** %13, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @MakeCharArray(i8 signext 32, i32 %44)
  store i8* %45, i8** %15, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32*, i32** @CompareCandidateStr, align 8
  br label %51

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32* [ %49, %48 ], [ null, %50 ]
  %53 = call i32* @NewListFast(i32* %52)
  store i32* %53, i32** %11, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %103, %51
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %106

60:                                               ; preds = %54
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @Insert(i32* %61, i8* %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @StrWidth(i8* %76)
  store i32 %77, i32* %17, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %99

80:                                               ; preds = %60
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 91
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %17, align 4
  br label %98

95:                                               ; preds = %80
  %96 = load i32, i32* %17, align 4
  %97 = sub nsw i32 %96, 2
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %60
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @MAX(i32 %100, i32 %101)
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %54

106:                                              ; preds = %54
  %107 = load i32, i32* %10, align 4
  %108 = call i8* @MakeCharArray(i8 signext 32, i32 %107)
  store i8* %108, i8** %16, align 8
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %255, %106
  %110 = load i32, i32* %12, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 @LIST_NUM(i32* %111)
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %258

114:                                              ; preds = %109
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i8* @LIST_DATA(i32* %115, i32 %116)
  store i8* %117, i8** %19, align 8
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %23, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %119, %120
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %24, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %24, align 4
  %125 = add nsw i32 %124, 5
  %126 = icmp sge i32 %123, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %114
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %24, align 4
  %130 = sub nsw i32 %128, %129
  %131 = sub nsw i32 %130, 3
  store i32 %131, i32* %25, align 4
  br label %133

132:                                              ; preds = %114
  store i32 2, i32* %25, align 4
  br label %133

133:                                              ; preds = %132, %127
  %134 = load i8*, i8** %6, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load i8*, i8** %19, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 91
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %144 = load i8*, i8** %19, align 8
  %145 = call i32 @Format(i8* %143, i32 128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %144)
  br label %169

146:                                              ; preds = %136, %133
  %147 = load i8*, i8** %6, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %151 = load i8*, i8** %19, align 8
  %152 = call i32 @StrCpy(i8* %150, i32 128, i8* %151)
  br label %168

153:                                              ; preds = %146
  %154 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %155 = load i8*, i8** %19, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = call i32 @StrCpy(i8* %154, i32 128, i8* %156)
  %158 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %159 = call i32 @StrLen(i8* %158)
  %160 = icmp sge i32 %159, 1
  br i1 %160, label %161, label %167

161:                                              ; preds = %153
  %162 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %163 = call i32 @StrLen(i8* %162)
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 %165
  store i8 0, i8* %166, align 1
  br label %167

167:                                              ; preds = %161, %153
  br label %168

168:                                              ; preds = %167, %149
  br label %169

169:                                              ; preds = %168, %142
  %170 = load i8*, i8** %6, align 8
  %171 = icmp eq i8* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i8*, i8** %19, align 8
  %174 = call i32 @GetCommandHelpStr(i8* %173, i8** %21, i32* null, i32* null)
  br label %179

175:                                              ; preds = %169
  %176 = load i8*, i8** %6, align 8
  %177 = load i8*, i8** %19, align 8
  %178 = call i32 @GetCommandParamHelpStr(i8* %176, i8* %177, i8** %21)
  br label %179

179:                                              ; preds = %175, %172
  %180 = load i32, i32* %10, align 4
  %181 = load i8*, i8** %19, align 8
  %182 = call i32 @StrWidth(i8* %181)
  %183 = sub nsw i32 %180, %182
  %184 = load i8*, i8** %6, align 8
  %185 = icmp eq i8* %184, null
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %195

187:                                              ; preds = %179
  %188 = load i8*, i8** %19, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 91
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 1, i32 -2
  br label %195

195:                                              ; preds = %187, %186
  %196 = phi i32 [ 0, %186 ], [ %194, %187 ]
  %197 = sub nsw i32 %183, %196
  %198 = call i8* @MakeCharArray(i8 signext 32, i32 %197)
  store i8* %198, i8** %26, align 8
  %199 = load i8*, i8** %21, align 8
  %200 = load i32, i32* %25, align 4
  %201 = call %struct.TYPE_10__* @SeparateStringByWidth(i8* %199, i32 %200)
  store %struct.TYPE_10__* %201, %struct.TYPE_10__** %20, align 8
  store i32 0, i32* %22, align 4
  br label %202

202:                                              ; preds = %247, %195
  %203 = load i32, i32* %22, align 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %250

208:                                              ; preds = %202
  %209 = load i32, i32* %22, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %208
  %212 = load i8*, i8** %13, align 8
  %213 = load i32, i32* %14, align 4
  %214 = load i8*, i8** %15, align 8
  %215 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %216 = load i8*, i8** %26, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %22, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @UniFormat(i8* %212, i32 %213, i8* bitcast ([12 x i32]* @.str.1 to i8*), i8* %214, i8* %215, i8* %216, i32 %223)
  br label %240

225:                                              ; preds = %208
  %226 = load i8*, i8** %13, align 8
  %227 = load i32, i32* %14, align 4
  %228 = load i8*, i8** %15, align 8
  %229 = load i8*, i8** %16, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %22, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to i8*
  %239 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @UniFormat(i8* %226, i32 %227, i8* bitcast ([10 x i32]* @.str.2 to i8*), i8* %228, i8* %229, i8* %238)
  br label %240

240:                                              ; preds = %225, %211
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load i32 (%struct.TYPE_12__*, i8*)*, i32 (%struct.TYPE_12__*, i8*)** %242, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %245 = load i8*, i8** %13, align 8
  %246 = call i32 %243(%struct.TYPE_12__* %244, i8* %245)
  br label %247

247:                                              ; preds = %240
  %248 = load i32, i32* %22, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %22, align 4
  br label %202

250:                                              ; preds = %202
  %251 = load i8*, i8** %26, align 8
  %252 = call i32 @Free(i8* %251)
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %254 = call i32 @UniFreeToken(%struct.TYPE_10__* %253)
  br label %255

255:                                              ; preds = %250
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %12, align 4
  br label %109

258:                                              ; preds = %109
  %259 = load i32*, i32** %11, align 8
  %260 = call i32 @ReleaseList(i32* %259)
  %261 = load i8*, i8** %16, align 8
  %262 = call i32 @Free(i8* %261)
  %263 = load i8*, i8** %13, align 8
  %264 = call i32 @Free(i8* %263)
  %265 = load i8*, i8** %15, align 8
  %266 = call i32 @Free(i8* %265)
  br label %267

267:                                              ; preds = %258, %32
  ret void
}

declare dso_local i32 @GetConsoleWidth(%struct.TYPE_12__*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i8* @MakeCharArray(i8 signext, i32) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Insert(i32*, i8*) #1

declare dso_local i32 @StrWidth(i8*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @LIST_NUM(i32*) #1

declare dso_local i8* @LIST_DATA(i32*, i32) #1

declare dso_local i32 @Format(i8*, i32, i8*, i8*) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @GetCommandHelpStr(i8*, i8**, i32*, i32*) #1

declare dso_local i32 @GetCommandParamHelpStr(i8*, i8*, i8**) #1

declare dso_local %struct.TYPE_10__* @SeparateStringByWidth(i8*, i32) #1

declare dso_local i32 @UniFormat(i8*, i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @UniFreeToken(%struct.TYPE_10__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
