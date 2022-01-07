; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ccaption_dec.c_process_cc608.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ccaption_dec.c_process_cc608.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32, i32, %struct.Screen*, i32, i32, i32 }
%struct.Screen = type { i32 }

@CCMODE_POPON = common dso_local global i32 0, align 4
@CCMODE_ROLLUP = common dso_local global i32 0, align 4
@CCMODE_PAINTON = common dso_local global i32 0, align 4
@CCMODE_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"carriage return\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"handle_eoc\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unknown command 0x%hhx 0x%hhx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i32, i32)* @process_cc608 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_cc608(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Screen*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %11, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %238

27:                                               ; preds = %18, %4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 64
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp sle i32 %44, 95
  br i1 %45, label %58, label %46

46:                                               ; preds = %43, %40, %27
  %47 = load i32, i32* %7, align 4
  %48 = icmp sge i32 %47, 17
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp sle i32 %50, 23
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 64
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp sle i32 %56, 127
  br i1 %57, label %58, label %63

58:                                               ; preds = %55, %43
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @handle_pac(%struct.TYPE_12__* %59, i32 %60, i32 %61)
  br label %238

63:                                               ; preds = %55, %52, %49, %46
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 17
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp sge i32 %67, 32
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = icmp sle i32 %70, 47
  br i1 %71, label %81, label %72

72:                                               ; preds = %69, %66, %63
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 23
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = icmp sge i32 %76, 46
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = icmp sle i32 %79, 47
  br i1 %80, label %81, label %86

81:                                               ; preds = %78, %69
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @handle_textattr(%struct.TYPE_12__* %82, i32 %83, i32 %84)
  br label %237

86:                                               ; preds = %78, %75, %72
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 20
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 21
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 28
  br i1 %94, label %95, label %174

95:                                               ; preds = %92, %89, %86
  %96 = load i32, i32* %8, align 4
  switch i32 %96, label %168 [
    i32 32, label %97
    i32 36, label %101
    i32 37, label %106
    i32 38, label %106
    i32 39, label %106
    i32 41, label %114
    i32 43, label %118
    i32 44, label %122
    i32 45, label %126
    i32 46, label %142
    i32 47, label %162
  ]

97:                                               ; preds = %95
  %98 = load i32, i32* @CCMODE_POPON, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 8
  br label %173

101:                                              ; preds = %95
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @handle_delete_end_of_row(%struct.TYPE_12__* %102, i32 %103, i32 %104)
  br label %173

106:                                              ; preds = %95, %95, %95
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 35
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @CCMODE_ROLLUP, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  br label %173

114:                                              ; preds = %95
  %115 = load i32, i32* @CCMODE_PAINTON, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  br label %173

118:                                              ; preds = %95
  %119 = load i32, i32* @CCMODE_TEXT, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  br label %173

122:                                              ; preds = %95
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @handle_edm(%struct.TYPE_12__* %123, i32 %124)
  br label %173

126:                                              ; preds = %95
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = call i32 (%struct.TYPE_12__*, i8*, ...) @ff_dlog(%struct.TYPE_12__* %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %126
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @reap_screen(%struct.TYPE_12__* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %126
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = call i32 @roll_up(%struct.TYPE_12__* %138)
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 5
  store i32 0, i32* %141, align 4
  br label %173

142:                                              ; preds = %95
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  %150 = load %struct.Screen*, %struct.Screen** %149, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.Screen, %struct.Screen* %150, i64 %157
  store %struct.Screen* %158, %struct.Screen** %9, align 8
  %159 = load %struct.Screen*, %struct.Screen** %9, align 8
  %160 = getelementptr inbounds %struct.Screen, %struct.Screen* %159, i32 0, i32 0
  store i32 0, i32* %160, align 4
  br label %161

161:                                              ; preds = %147, %142
  br label %173

162:                                              ; preds = %95
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = call i32 (%struct.TYPE_12__*, i8*, ...) @ff_dlog(%struct.TYPE_12__* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @handle_eoc(%struct.TYPE_12__* %165, i32 %166)
  br label %173

168:                                              ; preds = %95
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (%struct.TYPE_12__*, i8*, ...) @ff_dlog(%struct.TYPE_12__* %169, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %168, %162, %161, %137, %122, %118, %114, %106, %101, %97
  br label %236

174:                                              ; preds = %92
  %175 = load i32, i32* %7, align 4
  %176 = icmp sge i32 %175, 17
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load i32, i32* %7, align 4
  %179 = icmp sle i32 %178, 19
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = load i32, i32* %7, align 4
  %183 = trunc i32 %182 to i8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @handle_char(%struct.TYPE_12__* %181, i8 signext %183, i32 %184, i32 %185)
  br label %235

187:                                              ; preds = %177, %174
  %188 = load i32, i32* %7, align 4
  %189 = icmp sge i32 %188, 32
  br i1 %189, label %190, label %205

190:                                              ; preds = %187
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %192 = load i32, i32* %7, align 4
  %193 = trunc i32 %192 to i8
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @handle_char(%struct.TYPE_12__* %191, i8 signext %193, i32 %194, i32 %195)
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  store i32 0, i32* %200, align 4
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 0, i32* %204, align 4
  br label %234

205:                                              ; preds = %187
  %206 = load i32, i32* %7, align 4
  %207 = icmp eq i32 %206, 23
  br i1 %207, label %208, label %228

208:                                              ; preds = %205
  %209 = load i32, i32* %8, align 4
  %210 = icmp sge i32 %209, 33
  br i1 %210, label %211, label %228

211:                                              ; preds = %208
  %212 = load i32, i32* %8, align 4
  %213 = icmp sle i32 %212, 35
  br i1 %213, label %214, label %228

214:                                              ; preds = %211
  store i32 0, i32* %10, align 4
  br label %215

215:                                              ; preds = %224, %214
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %8, align 4
  %218 = sub nsw i32 %217, 32
  %219 = icmp slt i32 %216, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %215
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @handle_char(%struct.TYPE_12__* %221, i8 signext 32, i32 0, i32 %222)
  br label %224

224:                                              ; preds = %220
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %215

227:                                              ; preds = %215
  br label %233

228:                                              ; preds = %211, %208, %205
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %8, align 4
  %232 = call i32 (%struct.TYPE_12__*, i8*, ...) @ff_dlog(%struct.TYPE_12__* %229, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %228, %227
  br label %234

234:                                              ; preds = %233, %190
  br label %235

235:                                              ; preds = %234, %180
  br label %236

236:                                              ; preds = %235, %173
  br label %237

237:                                              ; preds = %236, %81
  br label %238

238:                                              ; preds = %26, %237, %58
  ret void
}

declare dso_local i32 @handle_pac(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @handle_textattr(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @handle_delete_end_of_row(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @handle_edm(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @reap_screen(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @roll_up(%struct.TYPE_12__*) #1

declare dso_local i32 @handle_eoc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @handle_char(%struct.TYPE_12__*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
