; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellLinux.c_shellReadCommand.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellLinux.c_shellReadCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i8** }
%struct.TYPE_16__ = type { i8*, i8* }

@history = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SIGINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@MAX_HISTORY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shellReadCommand(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8], align 1
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @history, i32 0, i32 0), align 8
  store i32 %12, i32* %5, align 4
  %13 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 0, i64 10, i1 false)
  %14 = call i32 @memset(%struct.TYPE_16__* %7, i32 0, i32 16)
  %15 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %16 = call i64 @calloc(i32 1, i32 %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %20 = call i64 @calloc(i32 1, i32 %19)
  %21 = inttoptr i64 %20 to i8*
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = call i32 @showOnScreen(%struct.TYPE_16__* %7)
  br label %24

24:                                               ; preds = %2, %233
  %25 = call signext i8 (...) @getchar()
  store i8 %25, i8* %8, align 1
  %26 = load i8, i8* %8, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = load i8, i8* %8, align 1
  %31 = call i32 @countPrefixOnes(i8 signext %30)
  store i32 %31, i32* %9, align 4
  %32 = load i8, i8* %8, align 1
  %33 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  store i8 %32, i8* %33, align 1
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %44, %29
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = call signext i8 (...) @getchar()
  store i8 %39, i8* %8, align 1
  %40 = load i8, i8* %8, align 1
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %42
  store i8 %40, i8* %43, align 1
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %34

47:                                               ; preds = %34
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @insertChar(%struct.TYPE_16__* %7, i8* %48, i32 %49)
  br label %233

51:                                               ; preds = %24
  %52 = load i8, i8* %8, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp slt i32 %53, 27
  br i1 %54, label %55, label %99

55:                                               ; preds = %51
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  switch i32 %57, label %98 [
    i32 1, label %58
    i32 3, label %60
    i32 4, label %65
    i32 5, label %71
    i32 8, label %73
    i32 10, label %75
    i32 13, label %75
    i32 12, label %95
  ]

58:                                               ; preds = %55
  %59 = call i32 @positionCursorHome(%struct.TYPE_16__* %7)
  br label %98

60:                                               ; preds = %55
  %61 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @resetCommand(%struct.TYPE_16__* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @SIGINT, align 4
  %64 = call i32 @kill(i32 0, i32 %63)
  br label %98

65:                                               ; preds = %55
  %66 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @taos_close(i32* %67)
  %69 = call i32 (...) @write_history()
  %70 = call i32 (...) @exitShell()
  br label %98

71:                                               ; preds = %55
  %72 = call i32 @positionCursorEnd(%struct.TYPE_16__* %7)
  br label %98

73:                                               ; preds = %55
  %74 = call i32 @backspaceChar(%struct.TYPE_16__* %7)
  br label %98

75:                                               ; preds = %55, %55
  %76 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @isReadyGo(%struct.TYPE_16__* %7)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %82, i8* %84)
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @tfree(i8* %87)
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @tfree(i8* %90)
  ret void

92:                                               ; preds = %75
  %93 = call i32 @updateBuffer(%struct.TYPE_16__* %7)
  br label %94

94:                                               ; preds = %92
  br label %98

95:                                               ; preds = %55
  %96 = call i32 @system(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %97 = call i32 @showOnScreen(%struct.TYPE_16__* %7)
  br label %98

98:                                               ; preds = %55, %95, %94, %73, %71, %65, %60, %58
  br label %232

99:                                               ; preds = %51
  %100 = load i8, i8* %8, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 27
  br i1 %102, label %103, label %222

103:                                              ; preds = %99
  %104 = call signext i8 (...) @getchar()
  store i8 %104, i8* %8, align 1
  %105 = load i8, i8* %8, align 1
  %106 = sext i8 %105 to i32
  switch i32 %106, label %221 [
    i32 91, label %107
  ]

107:                                              ; preds = %103
  %108 = call signext i8 (...) @getchar()
  store i8 %108, i8* %8, align 1
  %109 = load i8, i8* %8, align 1
  %110 = sext i8 %109 to i32
  switch i32 %110, label %220 [
    i32 65, label %111
    i32 66, label %139
    i32 67, label %173
    i32 68, label %175
    i32 49, label %177
    i32 50, label %184
    i32 51, label %190
    i32 52, label %197
    i32 53, label %204
    i32 54, label %210
    i32 72, label %216
    i32 70, label %218
  ]

111:                                              ; preds = %107
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @history, i32 0, i32 1), align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %138

115:                                              ; preds = %111
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %118 = add i32 %116, %117
  %119 = sub i32 %118, 1
  %120 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %121 = urem i32 %119, %120
  store i32 %121, i32* %5, align 4
  %122 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @history, i32 0, i32 2), align 8
  %123 = load i32, i32* %5, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  br label %135

129:                                              ; preds = %115
  %130 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @history, i32 0, i32 2), align 8
  %131 = load i32, i32* %5, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  br label %135

135:                                              ; preds = %129, %128
  %136 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %128 ], [ %134, %129 ]
  %137 = call i32 @resetCommand(%struct.TYPE_16__* %7, i8* %136)
  br label %138

138:                                              ; preds = %135, %111
  br label %220

139:                                              ; preds = %107
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @history, i32 0, i32 0), align 8
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %172

143:                                              ; preds = %139
  %144 = load i32, i32* %5, align 4
  %145 = add i32 %144, 1
  %146 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %147 = urem i32 %145, %146
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @history, i32 0, i32 0), align 8
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %168

151:                                              ; preds = %143
  %152 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @history, i32 0, i32 2), align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %165

159:                                              ; preds = %151
  %160 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @history, i32 0, i32 2), align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  br label %165

165:                                              ; preds = %159, %158
  %166 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %158 ], [ %164, %159 ]
  %167 = call i32 @resetCommand(%struct.TYPE_16__* %7, i8* %166)
  br label %170

168:                                              ; preds = %143
  %169 = call i32 @resetCommand(%struct.TYPE_16__* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %165
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %170, %139
  br label %220

173:                                              ; preds = %107
  %174 = call i32 @moveCursorRight(%struct.TYPE_16__* %7)
  br label %220

175:                                              ; preds = %107
  %176 = call i32 @moveCursorLeft(%struct.TYPE_16__* %7)
  br label %220

177:                                              ; preds = %107
  %178 = call signext i8 (...) @getchar()
  store i8 %178, i8* %8, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 126
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = call i32 @positionCursorHome(%struct.TYPE_16__* %7)
  br label %183

183:                                              ; preds = %181, %177
  br label %220

184:                                              ; preds = %107
  %185 = call signext i8 (...) @getchar()
  store i8 %185, i8* %8, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 126
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188, %184
  br label %220

190:                                              ; preds = %107
  %191 = call signext i8 (...) @getchar()
  store i8 %191, i8* %8, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 126
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = call i32 @deleteChar(%struct.TYPE_16__* %7)
  br label %196

196:                                              ; preds = %194, %190
  br label %220

197:                                              ; preds = %107
  %198 = call signext i8 (...) @getchar()
  store i8 %198, i8* %8, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 126
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = call i32 @positionCursorEnd(%struct.TYPE_16__* %7)
  br label %203

203:                                              ; preds = %201, %197
  br label %220

204:                                              ; preds = %107
  %205 = call signext i8 (...) @getchar()
  store i8 %205, i8* %8, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 126
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %209

209:                                              ; preds = %208, %204
  br label %220

210:                                              ; preds = %107
  %211 = call signext i8 (...) @getchar()
  store i8 %211, i8* %8, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 126
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  br label %215

215:                                              ; preds = %214, %210
  br label %220

216:                                              ; preds = %107
  %217 = call i32 @positionCursorHome(%struct.TYPE_16__* %7)
  br label %220

218:                                              ; preds = %107
  %219 = call i32 @positionCursorEnd(%struct.TYPE_16__* %7)
  br label %220

220:                                              ; preds = %107, %218, %216, %215, %209, %203, %196, %189, %183, %175, %173, %172, %138
  br label %221

221:                                              ; preds = %103, %220
  br label %231

222:                                              ; preds = %99
  %223 = load i8, i8* %8, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 127
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = call i32 @backspaceChar(%struct.TYPE_16__* %7)
  br label %230

228:                                              ; preds = %222
  %229 = call i32 @insertChar(%struct.TYPE_16__* %7, i8* %8, i32 1)
  br label %230

230:                                              ; preds = %228, %226
  br label %231

231:                                              ; preds = %230, %221
  br label %232

232:                                              ; preds = %231, %98
  br label %233

233:                                              ; preds = %232, %47
  br label %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @showOnScreen(%struct.TYPE_16__*) #2

declare dso_local signext i8 @getchar(...) #2

declare dso_local i32 @countPrefixOnes(i8 signext) #2

declare dso_local i32 @insertChar(%struct.TYPE_16__*, i8*, i32) #2

declare dso_local i32 @positionCursorHome(%struct.TYPE_16__*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @resetCommand(%struct.TYPE_16__*, i8*) #2

declare dso_local i32 @kill(i32, i32) #2

declare dso_local i32 @taos_close(i32*) #2

declare dso_local i32 @write_history(...) #2

declare dso_local i32 @exitShell(...) #2

declare dso_local i32 @positionCursorEnd(%struct.TYPE_16__*) #2

declare dso_local i32 @backspaceChar(%struct.TYPE_16__*) #2

declare dso_local i32 @isReadyGo(%struct.TYPE_16__*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @tfree(i8*) #2

declare dso_local i32 @updateBuffer(%struct.TYPE_16__*) #2

declare dso_local i32 @system(i8*) #2

declare dso_local i32 @moveCursorRight(%struct.TYPE_16__*) #2

declare dso_local i32 @moveCursorLeft(%struct.TYPE_16__*) #2

declare dso_local i32 @deleteChar(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
