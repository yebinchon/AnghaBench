; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_detect_ps1_game_sub.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_detect_ps1_game_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@MODETEST_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SYSTEM.CNF;1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @detect_ps1_game_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_ps1_game_sub(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4096 x i32], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = getelementptr inbounds [4096 x i32], [4096 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %16, align 16
  store i32 0, i32* %12, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @SEEK_END, align 4
  %19 = call i32 @intfstream_seek(i32* %17, i32 0, i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %264

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @intfstream_tell(i32* %26)
  %28 = and i32 %27, 2047
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  store i32 0, i32* %15, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i32 @intfstream_seek(i32* %31, i32 0, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %264

36:                                               ; preds = %30
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 (i32*, ...) @intfstream_read(i32* %37, i32* %15, i32 4)
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @MODETEST_VAL, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %12, align 4
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %25
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 24
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %58

53:                                               ; preds = %45
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 2048, i32 2352
  br label %58

58:                                               ; preds = %53, %52
  %59 = phi i32 [ 2448, %52 ], [ %57, %53 ]
  store i32 %59, i32* %11, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 156, %61
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 16, %63
  %65 = add nsw i32 %62, %64
  %66 = load i32, i32* @SEEK_SET, align 4
  %67 = call i32 @intfstream_seek(i32* %60, i32 %65, i32 %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %264

70:                                               ; preds = %58
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds [4096 x i32], [4096 x i32]* %14, i64 0, i64 0
  %73 = call i32 (i32*, ...) @intfstream_read(i32* %71, i32* %72, i32 6)
  %74 = getelementptr inbounds [4096 x i32], [4096 x i32]* %14, i64 0, i64 2
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds [4096 x i32], [4096 x i32]* %14, i64 0, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = or i32 %75, %78
  %80 = getelementptr inbounds [4096 x i32], [4096 x i32]* %14, i64 0, i64 4
  %81 = load i32, i32* %80, align 16
  %82 = shl i32 %81, 16
  %83 = or i32 %79, %82
  store i32 %83, i32* %13, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %85, %88
  %90 = load i32, i32* @SEEK_SET, align 4
  %91 = call i32 @intfstream_seek(i32* %84, i32 %89, i32 %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %70
  br label %264

94:                                               ; preds = %70
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds [4096 x i32], [4096 x i32]* %14, i64 0, i64 0
  %97 = call i32 (i32*, ...) @intfstream_read(i32* %95, i32* %96, i32 4096)
  %98 = getelementptr inbounds [4096 x i32], [4096 x i32]* %14, i64 0, i64 0
  store i32* %98, i32** %8, align 8
  br label %99

99:                                               ; preds = %116, %94
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds [4096 x i32], [4096 x i32]* %14, i64 0, i64 0
  %102 = getelementptr inbounds i32, i32* %101, i64 4096
  %103 = icmp ult i32* %100, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  br label %264

109:                                              ; preds = %104
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 33
  %112 = bitcast i32* %111 to i8*
  %113 = call i64 @strncasecmp(i8* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %122

116:                                              ; preds = %109
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %8, align 8
  br label %99

122:                                              ; preds = %115, %99
  %123 = load i32*, i32** %8, align 8
  %124 = getelementptr inbounds [4096 x i32], [4096 x i32]* %14, i64 0, i64 0
  %125 = getelementptr inbounds i32, i32* %124, i64 4096
  %126 = icmp uge i32* %123, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %264

128:                                              ; preds = %122
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 8
  %136 = or i32 %131, %135
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 16
  %141 = or i32 %136, %140
  store i32 %141, i32* %13, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %11, align 4
  %146 = mul nsw i32 %144, %145
  %147 = add nsw i32 %143, %146
  %148 = load i32, i32* @SEEK_SET, align 4
  %149 = call i32 @intfstream_seek(i32* %142, i32 %147, i32 %148)
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %152

151:                                              ; preds = %128
  br label %264

152:                                              ; preds = %128
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds [4096 x i32], [4096 x i32]* %14, i64 0, i64 0
  %155 = call i32 (i32*, ...) @intfstream_read(i32* %153, i32* %154, i32 256)
  %156 = getelementptr inbounds [4096 x i32], [4096 x i32]* %14, i64 0, i64 256
  store i32 0, i32* %156, align 16
  %157 = getelementptr inbounds [4096 x i32], [4096 x i32]* %14, i64 0, i64 0
  store i32* %157, i32** %8, align 8
  br label %158

158:                                              ; preds = %169, %152
  %159 = load i32*, i32** %8, align 8
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i32*, i32** %8, align 8
  %164 = bitcast i32* %163 to i8*
  %165 = call i64 @strncasecmp(i8* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %166 = icmp ne i64 %165, 0
  br label %167

167:                                              ; preds = %162, %158
  %168 = phi i1 [ false, %158 ], [ %166, %162 ]
  br i1 %168, label %169, label %172

169:                                              ; preds = %167
  %170 = load i32*, i32** %8, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %8, align 8
  br label %158

172:                                              ; preds = %167
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  br label %264

177:                                              ; preds = %172
  %178 = load i32*, i32** %8, align 8
  store i32* %178, i32** %9, align 8
  br label %179

179:                                              ; preds = %200, %177
  %180 = load i32*, i32** %8, align 8
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 10
  br label %187

187:                                              ; preds = %183, %179
  %188 = phi i1 [ false, %179 ], [ %186, %183 ]
  br i1 %188, label %189, label %203

189:                                              ; preds = %187
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 92
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 58
  br i1 %196, label %197, label %200

197:                                              ; preds = %193, %189
  %198 = load i32*, i32** %8, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  store i32* %199, i32** %9, align 8
  br label %200

200:                                              ; preds = %197, %193
  %201 = load i32*, i32** %8, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %8, align 8
  br label %179

203:                                              ; preds = %187
  %204 = load i32*, i32** %9, align 8
  store i32* %204, i32** %8, align 8
  %205 = load i32*, i32** %8, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %8, align 8
  %207 = load i32, i32* %205, align 4
  %208 = call i8* @toupper(i32 %207)
  %209 = ptrtoint i8* %208 to i8
  %210 = load i8*, i8** %6, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %6, align 8
  store i8 %209, i8* %210, align 1
  %212 = load i32*, i32** %8, align 8
  %213 = getelementptr inbounds i32, i32* %212, i32 1
  store i32* %213, i32** %8, align 8
  %214 = load i32, i32* %212, align 4
  %215 = call i8* @toupper(i32 %214)
  %216 = ptrtoint i8* %215 to i8
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %6, align 8
  store i8 %216, i8* %217, align 1
  %219 = load i32*, i32** %8, align 8
  %220 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %220, i32** %8, align 8
  %221 = load i32, i32* %219, align 4
  %222 = call i8* @toupper(i32 %221)
  %223 = ptrtoint i8* %222 to i8
  %224 = load i8*, i8** %6, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %6, align 8
  store i8 %223, i8* %224, align 1
  %226 = load i32*, i32** %8, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %8, align 8
  %228 = load i32, i32* %226, align 4
  %229 = call i8* @toupper(i32 %228)
  %230 = ptrtoint i8* %229 to i8
  %231 = load i8*, i8** %6, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %6, align 8
  store i8 %230, i8* %231, align 1
  %233 = load i8*, i8** %6, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %6, align 8
  store i8 45, i8* %233, align 1
  %235 = load i32*, i32** %8, align 8
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @isalnum(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %203
  %240 = load i32*, i32** %8, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %8, align 8
  br label %242

242:                                              ; preds = %239, %203
  br label %243

243:                                              ; preds = %261, %242
  %244 = load i32*, i32** %8, align 8
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @isalnum(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %243
  %249 = load i32*, i32** %8, align 8
  %250 = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %250, i32** %8, align 8
  %251 = load i32, i32* %249, align 4
  %252 = trunc i32 %251 to i8
  %253 = load i8*, i8** %6, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %6, align 8
  store i8 %252, i8* %253, align 1
  %255 = load i32*, i32** %8, align 8
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 46
  br i1 %257, label %258, label %261

258:                                              ; preds = %248
  %259 = load i32*, i32** %8, align 8
  %260 = getelementptr inbounds i32, i32* %259, i32 1
  store i32* %260, i32** %8, align 8
  br label %261

261:                                              ; preds = %258, %248
  br label %243

262:                                              ; preds = %243
  %263 = load i8*, i8** %6, align 8
  store i8 0, i8* %263, align 1
  store i32 1, i32* %4, align 4
  br label %265

264:                                              ; preds = %176, %151, %127, %108, %93, %69, %35, %21
  store i32 0, i32* %4, align 4
  br label %265

265:                                              ; preds = %264, %262
  %266 = load i32, i32* %4, align 4
  ret i32 %266
}

declare dso_local i32 @intfstream_seek(i32*, i32, i32) #1

declare dso_local i32 @intfstream_tell(i32*) #1

declare dso_local i32 @intfstream_read(i32*, ...) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @toupper(i32) #1

declare dso_local i64 @isalnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
