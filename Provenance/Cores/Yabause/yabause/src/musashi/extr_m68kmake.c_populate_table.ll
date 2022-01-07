; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kmake.c_populate_table.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kmake.c_populate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8, i8*, i8*, i8*, i8*, i8*, i32, i32, i32* }

@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@ID_TABLE_START = common dso_local global i32 0, align 4
@g_input_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Premature EOF while reading table\00", align 1
@g_opcode_input_table = common dso_local global %struct.TYPE_3__* null, align 8
@ID_INPUT_SEPARATOR = common dso_local global i32 0, align 4
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@MAX_SPEC_PROC_LENGTH = common dso_local global i32 0, align 4
@MAX_SPEC_EA_LENGTH = common dso_local global i32 0, align 4
@EA_ALLOWED_LENGTH = common dso_local global i32 0, align 4
@NUM_CPUS = common dso_local global i32 0, align 4
@UNSPECIFIED_CH = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @populate_table() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [17 x i8], align 16
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %12, align 16
  br label %13

13:                                               ; preds = %24, %0
  %14 = load i32, i32* @ID_TABLE_START, align 4
  %15 = call i64 @strcmp(i8* %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %19 = load i32, i32* @g_input_file, align 4
  %20 = call i64 @fgetline(i8* %11, i32 %18, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @error_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_opcode_input_table, align 8
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %3, align 8
  br label %27

27:                                               ; preds = %254, %25
  %28 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %29 = load i32, i32* @g_input_file, align 4
  %30 = call i64 @fgetline(i8* %11, i32 %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @error_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = call i64 @strlen(i8* %11)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %254

38:                                               ; preds = %34
  %39 = load i32, i32* @ID_INPUT_SEPARATOR, align 4
  %40 = call i64 @strcmp(i8* %11, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %257

43:                                               ; preds = %38
  store i8* %11, i8** %1, align 8
  %44 = load i8*, i8** %1, align 8
  %45 = call i32 @skip_spaces(i8* %44)
  %46 = load i8*, i8** %1, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %1, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %1, align 8
  %53 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %54 = call i32 @check_strsncpy(i8* %51, i8* %52, i32 %53)
  %55 = load i8*, i8** %1, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %1, align 8
  %58 = load i8*, i8** %1, align 8
  %59 = call i32 @skip_spaces(i8* %58)
  %60 = load i8*, i8** %1, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %1, align 8
  %63 = load i8*, i8** %1, align 8
  %64 = call i32 @check_atoi(i8* %63, i32* %7)
  %65 = load i8*, i8** %1, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %1, align 8
  %68 = load i32, i32* %7, align 4
  %69 = trunc i32 %68 to i8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i8 %69, i8* %71, align 8
  %72 = load i8*, i8** %1, align 8
  %73 = call i32 @skip_spaces(i8* %72)
  %74 = load i8*, i8** %1, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %1, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %1, align 8
  %81 = load i32, i32* @MAX_SPEC_PROC_LENGTH, align 4
  %82 = call i32 @check_strsncpy(i8* %79, i8* %80, i32 %81)
  %83 = load i8*, i8** %1, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %1, align 8
  %86 = load i8*, i8** %1, align 8
  %87 = call i32 @skip_spaces(i8* %86)
  %88 = load i8*, i8** %1, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %1, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %1, align 8
  %95 = load i32, i32* @MAX_SPEC_EA_LENGTH, align 4
  %96 = call i32 @check_strsncpy(i8* %93, i8* %94, i32 %95)
  %97 = load i8*, i8** %1, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %1, align 8
  %100 = load i8*, i8** %1, align 8
  %101 = call i32 @skip_spaces(i8* %100)
  %102 = load i8*, i8** %1, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %1, align 8
  %105 = getelementptr inbounds [17 x i8], [17 x i8]* %2, i64 0, i64 0
  %106 = load i8*, i8** %1, align 8
  %107 = call i32 @check_strsncpy(i8* %105, i8* %106, i32 17)
  %108 = load i8*, i8** %1, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %1, align 8
  %111 = load i8*, i8** %1, align 8
  %112 = call i32 @skip_spaces(i8* %111)
  %113 = load i8*, i8** %1, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %1, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %1, align 8
  %120 = load i32, i32* @EA_ALLOWED_LENGTH, align 4
  %121 = call i32 @check_strsncpy(i8* %118, i8* %119, i32 %120)
  %122 = load i8*, i8** %1, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %1, align 8
  %125 = load i8*, i8** %1, align 8
  %126 = call i32 @skip_spaces(i8* %125)
  %127 = load i8*, i8** %1, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %1, align 8
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %150, %43
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @NUM_CPUS, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = load i8*, i8** %1, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %1, align 8
  %137 = load i8, i8* %135, align 1
  %138 = sext i8 %137 to i32
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 9
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %138, i32* %144, align 4
  %145 = load i8*, i8** %1, align 8
  %146 = call i32 @skip_spaces(i8* %145)
  %147 = load i8*, i8** %1, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %1, align 8
  br label %150

150:                                              ; preds = %134
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %130

153:                                              ; preds = %130
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %210, %153
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @NUM_CPUS, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %213

158:                                              ; preds = %154
  %159 = load i8*, i8** %1, align 8
  %160 = call i32 @skip_spaces(i8* %159)
  %161 = load i8*, i8** %1, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %1, align 8
  %164 = load i8*, i8** %1, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = load i8, i8* @UNSPECIFIED_CH, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %158
  %171 = load i8, i8* @UNSPECIFIED_CH, align 1
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 5
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8 %171, i8* %177, align 1
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 6
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  store i8 0, i8* %183, align 1
  %184 = load i8*, i8** %1, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %1, align 8
  br label %209

186:                                              ; preds = %158
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 48, %187
  %189 = trunc i32 %188 to i8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 5
  %192 = load i8*, i8** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  store i8 %189, i8* %195, align 1
  %196 = load i8*, i8** %1, align 8
  %197 = call i32 @check_atoi(i8* %196, i32* %7)
  %198 = load i8*, i8** %1, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %1, align 8
  %201 = load i32, i32* %7, align 4
  %202 = trunc i32 %201 to i8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 6
  %205 = load i8*, i8** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  store i8 %202, i8* %208, align 1
  br label %209

209:                                              ; preds = %186, %170
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  br label %154

213:                                              ; preds = %154
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 7
  store i32 0, i32* %215, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 8
  store i32 0, i32* %217, align 4
  store i32 0, i32* %6, align 4
  br label %218

218:                                              ; preds = %250, %213
  %219 = load i32, i32* %6, align 4
  %220 = icmp slt i32 %219, 16
  br i1 %220, label %221, label %253

221:                                              ; preds = %218
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [17 x i8], [17 x i8]* %2, i64 0, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp ne i32 %226, 46
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %6, align 4
  %230 = sub nsw i32 15, %229
  %231 = shl i32 %228, %230
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [17 x i8], [17 x i8]* %2, i64 0, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %240, 49
  %242 = zext i1 %241 to i32
  %243 = load i32, i32* %6, align 4
  %244 = sub nsw i32 15, %243
  %245 = shl i32 %242, %244
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %221
  %251 = load i32, i32* %6, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %6, align 4
  br label %218

253:                                              ; preds = %218
  br label %254

254:                                              ; preds = %253, %37
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 1
  store %struct.TYPE_3__* %256, %struct.TYPE_3__** %3, align 8
  br label %27

257:                                              ; preds = %42
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 0
  store i8 0, i8* %261, align 1
  %262 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %262)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i64 @fgetline(i8*, i32, i32) #2

declare dso_local i32 @error_exit(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @skip_spaces(i8*) #2

declare dso_local i32 @check_strsncpy(i8*, i8*, i32) #2

declare dso_local i32 @check_atoi(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
