; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_handle_command.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.eia608_screen = type { i8**, i32 }

@cc_channel = common dso_local global i64 0, align 8
@COM_UNKNOWN = common dso_local global i32 0, align 4
@debug_608 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"\0DCommand: %02X %02X (%s)\0A\00", align 1
@command_type = common dso_local global i32* null, align 8
@MODE_POPUP = common dso_local global i32 0, align 4
@MODE_TEXT = common dso_local global i32 0, align 4
@default_color = common dso_local global i8* null, align 8
@FONT_REGULAR = common dso_local global i8* null, align 8
@MODE_ROLLUP_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Two RU2, current line not empty. Simulating a CR\0A\00", align 1
@MODE_ROLLUP_3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Two RU3, current line not empty. Simulating a CR\0A\00", align 1
@MODE_ROLLUP_4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Two RU4, current line not empty. Simulating a CR\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"\0DNot yet implemented.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8, %struct.s_write*)* @handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_command(i8 zeroext %0, i8 zeroext %1, %struct.s_write* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.s_write*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eia608_screen*, align 8
  %9 = alloca %struct.eia608_screen*, align 8
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store %struct.s_write* %2, %struct.s_write** %6, align 8
  %10 = load %struct.s_write*, %struct.s_write** %6, align 8
  %11 = getelementptr inbounds %struct.s_write, %struct.s_write* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.s_write*, %struct.s_write** %6, align 8
  %14 = getelementptr inbounds %struct.s_write, %struct.s_write* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 %12, i64* %16, align 8
  %17 = load %struct.s_write*, %struct.s_write** %6, align 8
  %18 = getelementptr inbounds %struct.s_write, %struct.s_write* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @cc_channel, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %845

25:                                               ; preds = %3
  %26 = load i32, i32* @COM_UNKNOWN, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i8, i8* %4, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 21
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8 20, i8* %4, align 1
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i8, i8* %4, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 20
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8, i8* %4, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 28
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %31
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 44
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 137, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %39, %35
  %45 = load i8, i8* %4, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 20
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i8, i8* %4, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 28
  br i1 %51, label %52, label %57

52:                                               ; preds = %48, %44
  %53 = load i8, i8* %5, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 135, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %52, %48
  %58 = load i8, i8* %4, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 20
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i8, i8* %4, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 28
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %57
  %66 = load i8, i8* %5, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 47
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 138, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %65, %61
  %71 = load i8, i8* %4, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 23
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i8, i8* %4, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 31
  br i1 %77, label %78, label %83

78:                                               ; preds = %74, %70
  %79 = load i8, i8* %5, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 33
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 130, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %78, %74
  %84 = load i8, i8* %4, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 23
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i8, i8* %4, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 31
  br i1 %90, label %91, label %96

91:                                               ; preds = %87, %83
  %92 = load i8, i8* %5, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 34
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 129, i32* %7, align 4
  br label %96

96:                                               ; preds = %95, %91, %87
  %97 = load i8, i8* %4, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 23
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i8, i8* %4, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 31
  br i1 %103, label %104, label %109

104:                                              ; preds = %100, %96
  %105 = load i8, i8* %5, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 35
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 128, i32* %7, align 4
  br label %109

109:                                              ; preds = %108, %104, %100
  %110 = load i8, i8* %4, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 20
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i8, i8* %4, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 28
  br i1 %116, label %117, label %122

117:                                              ; preds = %113, %109
  %118 = load i8, i8* %5, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 37
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 133, i32* %7, align 4
  br label %122

122:                                              ; preds = %121, %117, %113
  %123 = load i8, i8* %4, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 20
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i8, i8* %4, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 28
  br i1 %129, label %130, label %135

130:                                              ; preds = %126, %122
  %131 = load i8, i8* %5, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 38
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 132, i32* %7, align 4
  br label %135

135:                                              ; preds = %134, %130, %126
  %136 = load i8, i8* %4, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 20
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i8, i8* %4, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %141, 28
  br i1 %142, label %143, label %148

143:                                              ; preds = %139, %135
  %144 = load i8, i8* %5, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 39
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 131, i32* %7, align 4
  br label %148

148:                                              ; preds = %147, %143, %139
  %149 = load i8, i8* %4, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %150, 20
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i8, i8* %4, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 28
  br i1 %155, label %156, label %161

156:                                              ; preds = %152, %148
  %157 = load i8, i8* %5, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 45
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 139, i32* %7, align 4
  br label %161

161:                                              ; preds = %160, %156, %152
  %162 = load i8, i8* %4, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp eq i32 %163, 20
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load i8, i8* %4, align 1
  %167 = zext i8 %166 to i32
  %168 = icmp eq i32 %167, 28
  br i1 %168, label %169, label %174

169:                                              ; preds = %165, %161
  %170 = load i8, i8* %5, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %171, 46
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i32 136, i32* %7, align 4
  br label %174

174:                                              ; preds = %173, %169, %165
  %175 = load i8, i8* %4, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %176, 20
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i8, i8* %4, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 28
  br i1 %181, label %182, label %187

182:                                              ; preds = %178, %174
  %183 = load i8, i8* %5, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp eq i32 %184, 33
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  store i32 140, i32* %7, align 4
  br label %187

187:                                              ; preds = %186, %182, %178
  %188 = load i8, i8* %4, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp eq i32 %189, 20
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = load i8, i8* %4, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %193, 28
  br i1 %194, label %195, label %200

195:                                              ; preds = %191, %187
  %196 = load i8, i8* %5, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp eq i32 %197, 43
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  store i32 134, i32* %7, align 4
  br label %200

200:                                              ; preds = %199, %195, %191
  %201 = load i64, i64* @debug_608, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %200
  %204 = load i8, i8* %4, align 1
  %205 = zext i8 %204 to i32
  %206 = load i8, i8* %5, align 1
  %207 = zext i8 %206 to i32
  %208 = load i32*, i32** @command_type, align 8
  %209 = load i32, i32* %7, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %205, i32 %207, i32 %212)
  br label %214

214:                                              ; preds = %203, %200
  %215 = load i32, i32* %7, align 4
  switch i32 %215, label %839 [
    i32 140, label %216
    i32 130, label %255
    i32 129, label %270
    i32 128, label %289
    i32 135, label %308
    i32 134, label %328
    i32 133, label %348
    i32 132, label %454
    i32 131, label %558
    i32 139, label %662
    i32 136, label %720
    i32 137, label %723
    i32 138, label %773
  ]

216:                                              ; preds = %214
  %217 = load %struct.s_write*, %struct.s_write** %6, align 8
  %218 = getelementptr inbounds %struct.s_write, %struct.s_write* %217, i32 0, i32 2
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp ugt i64 %221, 0
  br i1 %222, label %223, label %254

223:                                              ; preds = %216
  %224 = load %struct.s_write*, %struct.s_write** %6, align 8
  %225 = call %struct.eia608_screen* @get_writing_buffer(%struct.s_write* %224)
  store %struct.eia608_screen* %225, %struct.eia608_screen** %8, align 8
  %226 = load %struct.eia608_screen*, %struct.eia608_screen** %8, align 8
  %227 = icmp ne %struct.eia608_screen* %226, null
  br i1 %227, label %228, label %253

228:                                              ; preds = %223
  %229 = load %struct.s_write*, %struct.s_write** %6, align 8
  %230 = getelementptr inbounds %struct.s_write, %struct.s_write* %229, i32 0, i32 2
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = add i64 %233, -1
  store i64 %234, i64* %232, align 8
  %235 = load %struct.eia608_screen*, %struct.eia608_screen** %8, align 8
  %236 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %235, i32 0, i32 0
  %237 = load i8**, i8*** %236, align 8
  %238 = load %struct.s_write*, %struct.s_write** %6, align 8
  %239 = getelementptr inbounds %struct.s_write, %struct.s_write* %238, i32 0, i32 2
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds i8*, i8** %237, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.s_write*, %struct.s_write** %6, align 8
  %246 = getelementptr inbounds %struct.s_write, %struct.s_write* %245, i32 0, i32 2
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds i8, i8* %244, i64 %249
  store i8 32, i8* %250, align 1
  %251 = load %struct.eia608_screen*, %struct.eia608_screen** %8, align 8
  %252 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %251, i32 0, i32 1
  store i32 1, i32* %252, align 8
  br label %253

253:                                              ; preds = %228, %223
  br label %254

254:                                              ; preds = %253, %216
  br label %845

255:                                              ; preds = %214
  %256 = load %struct.s_write*, %struct.s_write** %6, align 8
  %257 = getelementptr inbounds %struct.s_write, %struct.s_write* %256, i32 0, i32 2
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ult i64 %260, 31
  br i1 %261, label %262, label %269

262:                                              ; preds = %255
  %263 = load %struct.s_write*, %struct.s_write** %6, align 8
  %264 = getelementptr inbounds %struct.s_write, %struct.s_write* %263, i32 0, i32 2
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %266, align 8
  br label %269

269:                                              ; preds = %262, %255
  br label %845

270:                                              ; preds = %214
  %271 = load %struct.s_write*, %struct.s_write** %6, align 8
  %272 = getelementptr inbounds %struct.s_write, %struct.s_write* %271, i32 0, i32 2
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = add i64 %275, 2
  store i64 %276, i64* %274, align 8
  %277 = load %struct.s_write*, %struct.s_write** %6, align 8
  %278 = getelementptr inbounds %struct.s_write, %struct.s_write* %277, i32 0, i32 2
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ugt i64 %281, 31
  br i1 %282, label %283, label %288

283:                                              ; preds = %270
  %284 = load %struct.s_write*, %struct.s_write** %6, align 8
  %285 = getelementptr inbounds %struct.s_write, %struct.s_write* %284, i32 0, i32 2
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 1
  store i64 31, i64* %287, align 8
  br label %288

288:                                              ; preds = %283, %270
  br label %845

289:                                              ; preds = %214
  %290 = load %struct.s_write*, %struct.s_write** %6, align 8
  %291 = getelementptr inbounds %struct.s_write, %struct.s_write* %290, i32 0, i32 2
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = add i64 %294, 3
  store i64 %295, i64* %293, align 8
  %296 = load %struct.s_write*, %struct.s_write** %6, align 8
  %297 = getelementptr inbounds %struct.s_write, %struct.s_write* %296, i32 0, i32 2
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = icmp ugt i64 %300, 31
  br i1 %301, label %302, label %307

302:                                              ; preds = %289
  %303 = load %struct.s_write*, %struct.s_write** %6, align 8
  %304 = getelementptr inbounds %struct.s_write, %struct.s_write* %303, i32 0, i32 2
  %305 = load %struct.TYPE_2__*, %struct.TYPE_2__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 1
  store i64 31, i64* %306, align 8
  br label %307

307:                                              ; preds = %302, %289
  br label %845

308:                                              ; preds = %214
  %309 = load i32, i32* @MODE_POPUP, align 4
  %310 = load %struct.s_write*, %struct.s_write** %6, align 8
  %311 = getelementptr inbounds %struct.s_write, %struct.s_write* %310, i32 0, i32 2
  %312 = load %struct.TYPE_2__*, %struct.TYPE_2__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 6
  store i32 %309, i32* %313, align 8
  %314 = load %struct.s_write*, %struct.s_write** %6, align 8
  %315 = getelementptr inbounds %struct.s_write, %struct.s_write* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.s_write*, %struct.s_write** %6, align 8
  %318 = getelementptr inbounds %struct.s_write, %struct.s_write* %317, i32 0, i32 2
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 9
  store i32 %316, i32* %320, align 4
  %321 = load %struct.s_write*, %struct.s_write** %6, align 8
  %322 = getelementptr inbounds %struct.s_write, %struct.s_write* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.s_write*, %struct.s_write** %6, align 8
  %325 = getelementptr inbounds %struct.s_write, %struct.s_write* %324, i32 0, i32 2
  %326 = load %struct.TYPE_2__*, %struct.TYPE_2__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 8
  store i32 %323, i32* %327, align 8
  br label %845

328:                                              ; preds = %214
  %329 = load i32, i32* @MODE_TEXT, align 4
  %330 = load %struct.s_write*, %struct.s_write** %6, align 8
  %331 = getelementptr inbounds %struct.s_write, %struct.s_write* %330, i32 0, i32 2
  %332 = load %struct.TYPE_2__*, %struct.TYPE_2__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 6
  store i32 %329, i32* %333, align 8
  %334 = load %struct.s_write*, %struct.s_write** %6, align 8
  %335 = getelementptr inbounds %struct.s_write, %struct.s_write* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.s_write*, %struct.s_write** %6, align 8
  %338 = getelementptr inbounds %struct.s_write, %struct.s_write* %337, i32 0, i32 2
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 9
  store i32 %336, i32* %340, align 4
  %341 = load %struct.s_write*, %struct.s_write** %6, align 8
  %342 = getelementptr inbounds %struct.s_write, %struct.s_write* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.s_write*, %struct.s_write** %6, align 8
  %345 = getelementptr inbounds %struct.s_write, %struct.s_write* %344, i32 0, i32 2
  %346 = load %struct.TYPE_2__*, %struct.TYPE_2__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 8
  store i32 %343, i32* %347, align 8
  br label %845

348:                                              ; preds = %214
  %349 = load %struct.s_write*, %struct.s_write** %6, align 8
  %350 = getelementptr inbounds %struct.s_write, %struct.s_write* %349, i32 0, i32 2
  %351 = load %struct.TYPE_2__*, %struct.TYPE_2__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 8
  %354 = add nsw i32 %353, 1
  %355 = icmp slt i32 %354, 2
  br i1 %355, label %356, label %363

356:                                              ; preds = %348
  %357 = load %struct.s_write*, %struct.s_write** %6, align 8
  %358 = call i32 @move_roll_up(%struct.s_write* %357, i32 1)
  %359 = load %struct.s_write*, %struct.s_write** %6, align 8
  %360 = getelementptr inbounds %struct.s_write, %struct.s_write* %359, i32 0, i32 2
  %361 = load %struct.TYPE_2__*, %struct.TYPE_2__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 3
  store i32 1, i32* %362, align 8
  br label %363

363:                                              ; preds = %356, %348
  %364 = load %struct.s_write*, %struct.s_write** %6, align 8
  %365 = getelementptr inbounds %struct.s_write, %struct.s_write* %364, i32 0, i32 2
  %366 = load %struct.TYPE_2__*, %struct.TYPE_2__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 6
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @MODE_POPUP, align 4
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %371, label %387

371:                                              ; preds = %363
  %372 = load %struct.s_write*, %struct.s_write** %6, align 8
  %373 = call i32 @swap_visible_buffer(%struct.s_write* %372)
  %374 = load %struct.s_write*, %struct.s_write** %6, align 8
  %375 = call i32 @write_cc_buffer(%struct.s_write* %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %371
  %378 = load %struct.s_write*, %struct.s_write** %6, align 8
  %379 = getelementptr inbounds %struct.s_write, %struct.s_write* %378, i32 0, i32 2
  %380 = load %struct.TYPE_2__*, %struct.TYPE_2__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %380, i32 0, i32 7
  %382 = load i32, i32* %381, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %381, align 4
  br label %384

384:                                              ; preds = %377, %371
  %385 = load %struct.s_write*, %struct.s_write** %6, align 8
  %386 = call i32 @erase_memory(%struct.s_write* %385, i32 1)
  br label %387

387:                                              ; preds = %384, %363
  %388 = load i8*, i8** @default_color, align 8
  %389 = load %struct.s_write*, %struct.s_write** %6, align 8
  %390 = getelementptr inbounds %struct.s_write, %struct.s_write* %389, i32 0, i32 2
  %391 = load %struct.TYPE_2__*, %struct.TYPE_2__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %391, i32 0, i32 5
  store i8* %388, i8** %392, align 8
  %393 = load i8*, i8** @FONT_REGULAR, align 8
  %394 = load %struct.s_write*, %struct.s_write** %6, align 8
  %395 = getelementptr inbounds %struct.s_write, %struct.s_write* %394, i32 0, i32 2
  %396 = load %struct.TYPE_2__*, %struct.TYPE_2__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i32 0, i32 4
  store i8* %393, i8** %397, align 8
  %398 = load %struct.s_write*, %struct.s_write** %6, align 8
  %399 = getelementptr inbounds %struct.s_write, %struct.s_write* %398, i32 0, i32 2
  %400 = load %struct.TYPE_2__*, %struct.TYPE_2__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i32 0, i32 6
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* @MODE_ROLLUP_2, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %405, label %418

405:                                              ; preds = %387
  %406 = load %struct.s_write*, %struct.s_write** %6, align 8
  %407 = call i32 @is_current_row_empty(%struct.s_write* %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %418, label %409

409:                                              ; preds = %405
  %410 = load i64, i64* @debug_608, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  %413 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %414

414:                                              ; preds = %412, %409
  %415 = load %struct.s_write*, %struct.s_write** %6, align 8
  call void @handle_command(i8 zeroext 20, i8 zeroext 45, %struct.s_write* %415)
  %416 = load %struct.s_write*, %struct.s_write** %6, align 8
  %417 = getelementptr inbounds %struct.s_write, %struct.s_write* %416, i32 0, i32 1
  store i32 1, i32* %417, align 8
  br label %418

418:                                              ; preds = %414, %405, %387
  %419 = load %struct.s_write*, %struct.s_write** %6, align 8
  %420 = getelementptr inbounds %struct.s_write, %struct.s_write* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.s_write*, %struct.s_write** %6, align 8
  %423 = getelementptr inbounds %struct.s_write, %struct.s_write* %422, i32 0, i32 2
  %424 = load %struct.TYPE_2__*, %struct.TYPE_2__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %424, i32 0, i32 9
  store i32 %421, i32* %425, align 4
  %426 = load %struct.s_write*, %struct.s_write** %6, align 8
  %427 = getelementptr inbounds %struct.s_write, %struct.s_write* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 8
  %429 = load %struct.s_write*, %struct.s_write** %6, align 8
  %430 = getelementptr inbounds %struct.s_write, %struct.s_write* %429, i32 0, i32 2
  %431 = load %struct.TYPE_2__*, %struct.TYPE_2__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %431, i32 0, i32 8
  store i32 %428, i32* %432, align 8
  %433 = load i32, i32* @MODE_ROLLUP_2, align 4
  %434 = load %struct.s_write*, %struct.s_write** %6, align 8
  %435 = getelementptr inbounds %struct.s_write, %struct.s_write* %434, i32 0, i32 2
  %436 = load %struct.TYPE_2__*, %struct.TYPE_2__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %436, i32 0, i32 6
  store i32 %433, i32* %437, align 8
  %438 = load %struct.s_write*, %struct.s_write** %6, align 8
  %439 = call i32 @erase_memory(%struct.s_write* %438, i32 0)
  %440 = load %struct.s_write*, %struct.s_write** %6, align 8
  %441 = getelementptr inbounds %struct.s_write, %struct.s_write* %440, i32 0, i32 2
  %442 = load %struct.TYPE_2__*, %struct.TYPE_2__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %442, i32 0, i32 1
  store i64 0, i64* %443, align 8
  %444 = load %struct.s_write*, %struct.s_write** %6, align 8
  %445 = getelementptr inbounds %struct.s_write, %struct.s_write* %444, i32 0, i32 2
  %446 = load %struct.TYPE_2__*, %struct.TYPE_2__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %446, i32 0, i32 3
  %448 = load i32, i32* %447, align 8
  %449 = sext i32 %448 to i64
  %450 = load %struct.s_write*, %struct.s_write** %6, align 8
  %451 = getelementptr inbounds %struct.s_write, %struct.s_write* %450, i32 0, i32 2
  %452 = load %struct.TYPE_2__*, %struct.TYPE_2__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %452, i32 0, i32 2
  store i64 %449, i64* %453, align 8
  br label %845

454:                                              ; preds = %214
  %455 = load %struct.s_write*, %struct.s_write** %6, align 8
  %456 = getelementptr inbounds %struct.s_write, %struct.s_write* %455, i32 0, i32 2
  %457 = load %struct.TYPE_2__*, %struct.TYPE_2__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %457, i32 0, i32 3
  %459 = load i32, i32* %458, align 8
  %460 = add nsw i32 %459, 1
  %461 = icmp slt i32 %460, 3
  br i1 %461, label %462, label %469

462:                                              ; preds = %454
  %463 = load %struct.s_write*, %struct.s_write** %6, align 8
  %464 = call i32 @move_roll_up(%struct.s_write* %463, i32 2)
  %465 = load %struct.s_write*, %struct.s_write** %6, align 8
  %466 = getelementptr inbounds %struct.s_write, %struct.s_write* %465, i32 0, i32 2
  %467 = load %struct.TYPE_2__*, %struct.TYPE_2__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %467, i32 0, i32 3
  store i32 2, i32* %468, align 8
  br label %469

469:                                              ; preds = %462, %454
  %470 = load %struct.s_write*, %struct.s_write** %6, align 8
  %471 = getelementptr inbounds %struct.s_write, %struct.s_write* %470, i32 0, i32 2
  %472 = load %struct.TYPE_2__*, %struct.TYPE_2__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %472, i32 0, i32 6
  %474 = load i32, i32* %473, align 8
  %475 = load i32, i32* @MODE_POPUP, align 4
  %476 = icmp eq i32 %474, %475
  br i1 %476, label %477, label %491

477:                                              ; preds = %469
  %478 = load %struct.s_write*, %struct.s_write** %6, align 8
  %479 = call i32 @write_cc_buffer(%struct.s_write* %478)
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %488

481:                                              ; preds = %477
  %482 = load %struct.s_write*, %struct.s_write** %6, align 8
  %483 = getelementptr inbounds %struct.s_write, %struct.s_write* %482, i32 0, i32 2
  %484 = load %struct.TYPE_2__*, %struct.TYPE_2__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %484, i32 0, i32 7
  %486 = load i32, i32* %485, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %485, align 4
  br label %488

488:                                              ; preds = %481, %477
  %489 = load %struct.s_write*, %struct.s_write** %6, align 8
  %490 = call i32 @erase_memory(%struct.s_write* %489, i32 1)
  br label %491

491:                                              ; preds = %488, %469
  %492 = load i8*, i8** @default_color, align 8
  %493 = load %struct.s_write*, %struct.s_write** %6, align 8
  %494 = getelementptr inbounds %struct.s_write, %struct.s_write* %493, i32 0, i32 2
  %495 = load %struct.TYPE_2__*, %struct.TYPE_2__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %495, i32 0, i32 5
  store i8* %492, i8** %496, align 8
  %497 = load i8*, i8** @FONT_REGULAR, align 8
  %498 = load %struct.s_write*, %struct.s_write** %6, align 8
  %499 = getelementptr inbounds %struct.s_write, %struct.s_write* %498, i32 0, i32 2
  %500 = load %struct.TYPE_2__*, %struct.TYPE_2__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %500, i32 0, i32 4
  store i8* %497, i8** %501, align 8
  %502 = load %struct.s_write*, %struct.s_write** %6, align 8
  %503 = getelementptr inbounds %struct.s_write, %struct.s_write* %502, i32 0, i32 2
  %504 = load %struct.TYPE_2__*, %struct.TYPE_2__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %504, i32 0, i32 6
  %506 = load i32, i32* %505, align 8
  %507 = load i32, i32* @MODE_ROLLUP_3, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %522

509:                                              ; preds = %491
  %510 = load %struct.s_write*, %struct.s_write** %6, align 8
  %511 = call i32 @is_current_row_empty(%struct.s_write* %510)
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %522, label %513

513:                                              ; preds = %509
  %514 = load i64, i64* @debug_608, align 8
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %518

516:                                              ; preds = %513
  %517 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %518

518:                                              ; preds = %516, %513
  %519 = load %struct.s_write*, %struct.s_write** %6, align 8
  call void @handle_command(i8 zeroext 20, i8 zeroext 45, %struct.s_write* %519)
  %520 = load %struct.s_write*, %struct.s_write** %6, align 8
  %521 = getelementptr inbounds %struct.s_write, %struct.s_write* %520, i32 0, i32 1
  store i32 1, i32* %521, align 8
  br label %522

522:                                              ; preds = %518, %509, %491
  %523 = load %struct.s_write*, %struct.s_write** %6, align 8
  %524 = getelementptr inbounds %struct.s_write, %struct.s_write* %523, i32 0, i32 4
  %525 = load i32, i32* %524, align 4
  %526 = load %struct.s_write*, %struct.s_write** %6, align 8
  %527 = getelementptr inbounds %struct.s_write, %struct.s_write* %526, i32 0, i32 2
  %528 = load %struct.TYPE_2__*, %struct.TYPE_2__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %528, i32 0, i32 9
  store i32 %525, i32* %529, align 4
  %530 = load %struct.s_write*, %struct.s_write** %6, align 8
  %531 = getelementptr inbounds %struct.s_write, %struct.s_write* %530, i32 0, i32 3
  %532 = load i32, i32* %531, align 8
  %533 = load %struct.s_write*, %struct.s_write** %6, align 8
  %534 = getelementptr inbounds %struct.s_write, %struct.s_write* %533, i32 0, i32 2
  %535 = load %struct.TYPE_2__*, %struct.TYPE_2__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %535, i32 0, i32 8
  store i32 %532, i32* %536, align 8
  %537 = load i32, i32* @MODE_ROLLUP_3, align 4
  %538 = load %struct.s_write*, %struct.s_write** %6, align 8
  %539 = getelementptr inbounds %struct.s_write, %struct.s_write* %538, i32 0, i32 2
  %540 = load %struct.TYPE_2__*, %struct.TYPE_2__** %539, align 8
  %541 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %540, i32 0, i32 6
  store i32 %537, i32* %541, align 8
  %542 = load %struct.s_write*, %struct.s_write** %6, align 8
  %543 = call i32 @erase_memory(%struct.s_write* %542, i32 0)
  %544 = load %struct.s_write*, %struct.s_write** %6, align 8
  %545 = getelementptr inbounds %struct.s_write, %struct.s_write* %544, i32 0, i32 2
  %546 = load %struct.TYPE_2__*, %struct.TYPE_2__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %546, i32 0, i32 1
  store i64 0, i64* %547, align 8
  %548 = load %struct.s_write*, %struct.s_write** %6, align 8
  %549 = getelementptr inbounds %struct.s_write, %struct.s_write* %548, i32 0, i32 2
  %550 = load %struct.TYPE_2__*, %struct.TYPE_2__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %550, i32 0, i32 3
  %552 = load i32, i32* %551, align 8
  %553 = sext i32 %552 to i64
  %554 = load %struct.s_write*, %struct.s_write** %6, align 8
  %555 = getelementptr inbounds %struct.s_write, %struct.s_write* %554, i32 0, i32 2
  %556 = load %struct.TYPE_2__*, %struct.TYPE_2__** %555, align 8
  %557 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %556, i32 0, i32 2
  store i64 %553, i64* %557, align 8
  br label %845

558:                                              ; preds = %214
  %559 = load %struct.s_write*, %struct.s_write** %6, align 8
  %560 = getelementptr inbounds %struct.s_write, %struct.s_write* %559, i32 0, i32 2
  %561 = load %struct.TYPE_2__*, %struct.TYPE_2__** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %561, i32 0, i32 3
  %563 = load i32, i32* %562, align 8
  %564 = add nsw i32 %563, 1
  %565 = icmp slt i32 %564, 4
  br i1 %565, label %566, label %573

566:                                              ; preds = %558
  %567 = load %struct.s_write*, %struct.s_write** %6, align 8
  %568 = call i32 @move_roll_up(%struct.s_write* %567, i32 3)
  %569 = load %struct.s_write*, %struct.s_write** %6, align 8
  %570 = getelementptr inbounds %struct.s_write, %struct.s_write* %569, i32 0, i32 2
  %571 = load %struct.TYPE_2__*, %struct.TYPE_2__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %571, i32 0, i32 3
  store i32 3, i32* %572, align 8
  br label %573

573:                                              ; preds = %566, %558
  %574 = load %struct.s_write*, %struct.s_write** %6, align 8
  %575 = getelementptr inbounds %struct.s_write, %struct.s_write* %574, i32 0, i32 2
  %576 = load %struct.TYPE_2__*, %struct.TYPE_2__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %576, i32 0, i32 6
  %578 = load i32, i32* %577, align 8
  %579 = load i32, i32* @MODE_POPUP, align 4
  %580 = icmp eq i32 %578, %579
  br i1 %580, label %581, label %595

581:                                              ; preds = %573
  %582 = load %struct.s_write*, %struct.s_write** %6, align 8
  %583 = call i32 @write_cc_buffer(%struct.s_write* %582)
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %592

585:                                              ; preds = %581
  %586 = load %struct.s_write*, %struct.s_write** %6, align 8
  %587 = getelementptr inbounds %struct.s_write, %struct.s_write* %586, i32 0, i32 2
  %588 = load %struct.TYPE_2__*, %struct.TYPE_2__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %588, i32 0, i32 7
  %590 = load i32, i32* %589, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %589, align 4
  br label %592

592:                                              ; preds = %585, %581
  %593 = load %struct.s_write*, %struct.s_write** %6, align 8
  %594 = call i32 @erase_memory(%struct.s_write* %593, i32 1)
  br label %595

595:                                              ; preds = %592, %573
  %596 = load i8*, i8** @default_color, align 8
  %597 = load %struct.s_write*, %struct.s_write** %6, align 8
  %598 = getelementptr inbounds %struct.s_write, %struct.s_write* %597, i32 0, i32 2
  %599 = load %struct.TYPE_2__*, %struct.TYPE_2__** %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %599, i32 0, i32 5
  store i8* %596, i8** %600, align 8
  %601 = load i8*, i8** @FONT_REGULAR, align 8
  %602 = load %struct.s_write*, %struct.s_write** %6, align 8
  %603 = getelementptr inbounds %struct.s_write, %struct.s_write* %602, i32 0, i32 2
  %604 = load %struct.TYPE_2__*, %struct.TYPE_2__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %604, i32 0, i32 4
  store i8* %601, i8** %605, align 8
  %606 = load %struct.s_write*, %struct.s_write** %6, align 8
  %607 = getelementptr inbounds %struct.s_write, %struct.s_write* %606, i32 0, i32 2
  %608 = load %struct.TYPE_2__*, %struct.TYPE_2__** %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %608, i32 0, i32 6
  %610 = load i32, i32* %609, align 8
  %611 = load i32, i32* @MODE_ROLLUP_4, align 4
  %612 = icmp eq i32 %610, %611
  br i1 %612, label %613, label %626

613:                                              ; preds = %595
  %614 = load %struct.s_write*, %struct.s_write** %6, align 8
  %615 = call i32 @is_current_row_empty(%struct.s_write* %614)
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %626, label %617

617:                                              ; preds = %613
  %618 = load i64, i64* @debug_608, align 8
  %619 = icmp ne i64 %618, 0
  br i1 %619, label %620, label %622

620:                                              ; preds = %617
  %621 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %622

622:                                              ; preds = %620, %617
  %623 = load %struct.s_write*, %struct.s_write** %6, align 8
  call void @handle_command(i8 zeroext 20, i8 zeroext 45, %struct.s_write* %623)
  %624 = load %struct.s_write*, %struct.s_write** %6, align 8
  %625 = getelementptr inbounds %struct.s_write, %struct.s_write* %624, i32 0, i32 1
  store i32 1, i32* %625, align 8
  br label %626

626:                                              ; preds = %622, %613, %595
  %627 = load %struct.s_write*, %struct.s_write** %6, align 8
  %628 = getelementptr inbounds %struct.s_write, %struct.s_write* %627, i32 0, i32 4
  %629 = load i32, i32* %628, align 4
  %630 = load %struct.s_write*, %struct.s_write** %6, align 8
  %631 = getelementptr inbounds %struct.s_write, %struct.s_write* %630, i32 0, i32 2
  %632 = load %struct.TYPE_2__*, %struct.TYPE_2__** %631, align 8
  %633 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %632, i32 0, i32 9
  store i32 %629, i32* %633, align 4
  %634 = load %struct.s_write*, %struct.s_write** %6, align 8
  %635 = getelementptr inbounds %struct.s_write, %struct.s_write* %634, i32 0, i32 3
  %636 = load i32, i32* %635, align 8
  %637 = load %struct.s_write*, %struct.s_write** %6, align 8
  %638 = getelementptr inbounds %struct.s_write, %struct.s_write* %637, i32 0, i32 2
  %639 = load %struct.TYPE_2__*, %struct.TYPE_2__** %638, align 8
  %640 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %639, i32 0, i32 8
  store i32 %636, i32* %640, align 8
  %641 = load i32, i32* @MODE_ROLLUP_4, align 4
  %642 = load %struct.s_write*, %struct.s_write** %6, align 8
  %643 = getelementptr inbounds %struct.s_write, %struct.s_write* %642, i32 0, i32 2
  %644 = load %struct.TYPE_2__*, %struct.TYPE_2__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %644, i32 0, i32 6
  store i32 %641, i32* %645, align 8
  %646 = load %struct.s_write*, %struct.s_write** %6, align 8
  %647 = getelementptr inbounds %struct.s_write, %struct.s_write* %646, i32 0, i32 2
  %648 = load %struct.TYPE_2__*, %struct.TYPE_2__** %647, align 8
  %649 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %648, i32 0, i32 1
  store i64 0, i64* %649, align 8
  %650 = load %struct.s_write*, %struct.s_write** %6, align 8
  %651 = getelementptr inbounds %struct.s_write, %struct.s_write* %650, i32 0, i32 2
  %652 = load %struct.TYPE_2__*, %struct.TYPE_2__** %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %652, i32 0, i32 3
  %654 = load i32, i32* %653, align 8
  %655 = sext i32 %654 to i64
  %656 = load %struct.s_write*, %struct.s_write** %6, align 8
  %657 = getelementptr inbounds %struct.s_write, %struct.s_write* %656, i32 0, i32 2
  %658 = load %struct.TYPE_2__*, %struct.TYPE_2__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %658, i32 0, i32 2
  store i64 %655, i64* %659, align 8
  %660 = load %struct.s_write*, %struct.s_write** %6, align 8
  %661 = call i32 @erase_memory(%struct.s_write* %660, i32 0)
  br label %845

662:                                              ; preds = %214
  %663 = load %struct.s_write*, %struct.s_write** %6, align 8
  %664 = getelementptr inbounds %struct.s_write, %struct.s_write* %663, i32 0, i32 1
  %665 = load i32, i32* %664, align 8
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %688

667:                                              ; preds = %662
  %668 = load %struct.s_write*, %struct.s_write** %6, align 8
  %669 = call i32 @is_current_row_empty(%struct.s_write* %668)
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %688

671:                                              ; preds = %667
  %672 = load %struct.s_write*, %struct.s_write** %6, align 8
  %673 = getelementptr inbounds %struct.s_write, %struct.s_write* %672, i32 0, i32 1
  store i32 0, i32* %673, align 8
  %674 = load %struct.s_write*, %struct.s_write** %6, align 8
  %675 = getelementptr inbounds %struct.s_write, %struct.s_write* %674, i32 0, i32 4
  %676 = load i32, i32* %675, align 4
  %677 = load %struct.s_write*, %struct.s_write** %6, align 8
  %678 = getelementptr inbounds %struct.s_write, %struct.s_write* %677, i32 0, i32 2
  %679 = load %struct.TYPE_2__*, %struct.TYPE_2__** %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %679, i32 0, i32 9
  store i32 %676, i32* %680, align 4
  %681 = load %struct.s_write*, %struct.s_write** %6, align 8
  %682 = getelementptr inbounds %struct.s_write, %struct.s_write* %681, i32 0, i32 3
  %683 = load i32, i32* %682, align 8
  %684 = load %struct.s_write*, %struct.s_write** %6, align 8
  %685 = getelementptr inbounds %struct.s_write, %struct.s_write* %684, i32 0, i32 2
  %686 = load %struct.TYPE_2__*, %struct.TYPE_2__** %685, align 8
  %687 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %686, i32 0, i32 8
  store i32 %683, i32* %687, align 8
  br label %845

688:                                              ; preds = %667, %662
  %689 = load %struct.s_write*, %struct.s_write** %6, align 8
  %690 = call i32 @write_cc_buffer(%struct.s_write* %689)
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %699

692:                                              ; preds = %688
  %693 = load %struct.s_write*, %struct.s_write** %6, align 8
  %694 = getelementptr inbounds %struct.s_write, %struct.s_write* %693, i32 0, i32 2
  %695 = load %struct.TYPE_2__*, %struct.TYPE_2__** %694, align 8
  %696 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %695, i32 0, i32 7
  %697 = load i32, i32* %696, align 4
  %698 = add nsw i32 %697, 1
  store i32 %698, i32* %696, align 4
  br label %699

699:                                              ; preds = %692, %688
  %700 = load %struct.s_write*, %struct.s_write** %6, align 8
  %701 = call i32 @roll_up(%struct.s_write* %700)
  %702 = load %struct.s_write*, %struct.s_write** %6, align 8
  %703 = getelementptr inbounds %struct.s_write, %struct.s_write* %702, i32 0, i32 2
  %704 = load %struct.TYPE_2__*, %struct.TYPE_2__** %703, align 8
  %705 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %704, i32 0, i32 1
  store i64 0, i64* %705, align 8
  %706 = load %struct.s_write*, %struct.s_write** %6, align 8
  %707 = getelementptr inbounds %struct.s_write, %struct.s_write* %706, i32 0, i32 4
  %708 = load i32, i32* %707, align 4
  %709 = load %struct.s_write*, %struct.s_write** %6, align 8
  %710 = getelementptr inbounds %struct.s_write, %struct.s_write* %709, i32 0, i32 2
  %711 = load %struct.TYPE_2__*, %struct.TYPE_2__** %710, align 8
  %712 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %711, i32 0, i32 9
  store i32 %708, i32* %712, align 4
  %713 = load %struct.s_write*, %struct.s_write** %6, align 8
  %714 = getelementptr inbounds %struct.s_write, %struct.s_write* %713, i32 0, i32 3
  %715 = load i32, i32* %714, align 8
  %716 = load %struct.s_write*, %struct.s_write** %6, align 8
  %717 = getelementptr inbounds %struct.s_write, %struct.s_write* %716, i32 0, i32 2
  %718 = load %struct.TYPE_2__*, %struct.TYPE_2__** %717, align 8
  %719 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %718, i32 0, i32 8
  store i32 %715, i32* %719, align 8
  br label %845

720:                                              ; preds = %214
  %721 = load %struct.s_write*, %struct.s_write** %6, align 8
  %722 = call i32 @erase_memory(%struct.s_write* %721, i32 0)
  br label %845

723:                                              ; preds = %214
  %724 = load %struct.s_write*, %struct.s_write** %6, align 8
  %725 = getelementptr inbounds %struct.s_write, %struct.s_write* %724, i32 0, i32 2
  %726 = load %struct.TYPE_2__*, %struct.TYPE_2__** %725, align 8
  %727 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %726, i32 0, i32 6
  %728 = load i32, i32* %727, align 8
  %729 = load i32, i32* @MODE_ROLLUP_2, align 4
  %730 = icmp eq i32 %728, %729
  br i1 %730, label %747, label %731

731:                                              ; preds = %723
  %732 = load %struct.s_write*, %struct.s_write** %6, align 8
  %733 = getelementptr inbounds %struct.s_write, %struct.s_write* %732, i32 0, i32 2
  %734 = load %struct.TYPE_2__*, %struct.TYPE_2__** %733, align 8
  %735 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %734, i32 0, i32 6
  %736 = load i32, i32* %735, align 8
  %737 = load i32, i32* @MODE_ROLLUP_3, align 4
  %738 = icmp eq i32 %736, %737
  br i1 %738, label %747, label %739

739:                                              ; preds = %731
  %740 = load %struct.s_write*, %struct.s_write** %6, align 8
  %741 = getelementptr inbounds %struct.s_write, %struct.s_write* %740, i32 0, i32 2
  %742 = load %struct.TYPE_2__*, %struct.TYPE_2__** %741, align 8
  %743 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %742, i32 0, i32 6
  %744 = load i32, i32* %743, align 8
  %745 = load i32, i32* @MODE_ROLLUP_4, align 4
  %746 = icmp eq i32 %744, %745
  br i1 %746, label %747, label %750

747:                                              ; preds = %739, %731, %723
  %748 = load %struct.s_write*, %struct.s_write** %6, align 8
  %749 = call i32 @write_cc_buffer(%struct.s_write* %748)
  br label %750

750:                                              ; preds = %747, %739
  %751 = load %struct.s_write*, %struct.s_write** %6, align 8
  %752 = call i32 @erase_memory(%struct.s_write* %751, i32 1)
  %753 = load %struct.s_write*, %struct.s_write** %6, align 8
  %754 = getelementptr inbounds %struct.s_write, %struct.s_write* %753, i32 0, i32 4
  %755 = load i32, i32* %754, align 4
  %756 = load %struct.s_write*, %struct.s_write** %6, align 8
  %757 = getelementptr inbounds %struct.s_write, %struct.s_write* %756, i32 0, i32 2
  %758 = load %struct.TYPE_2__*, %struct.TYPE_2__** %757, align 8
  %759 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %758, i32 0, i32 9
  store i32 %755, i32* %759, align 4
  %760 = load %struct.s_write*, %struct.s_write** %6, align 8
  %761 = getelementptr inbounds %struct.s_write, %struct.s_write* %760, i32 0, i32 3
  %762 = load i32, i32* %761, align 8
  %763 = load %struct.s_write*, %struct.s_write** %6, align 8
  %764 = getelementptr inbounds %struct.s_write, %struct.s_write* %763, i32 0, i32 2
  %765 = load %struct.TYPE_2__*, %struct.TYPE_2__** %764, align 8
  %766 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %765, i32 0, i32 8
  store i32 %762, i32* %766, align 8
  %767 = load %struct.s_write*, %struct.s_write** %6, align 8
  %768 = call %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write* %767)
  store %struct.eia608_screen* %768, %struct.eia608_screen** %9, align 8
  %769 = load %struct.eia608_screen*, %struct.eia608_screen** %9, align 8
  %770 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %769, i32 0, i32 1
  store i32 1, i32* %770, align 8
  %771 = load %struct.s_write*, %struct.s_write** %6, align 8
  %772 = call i32 @write_cc_buffer(%struct.s_write* %771)
  br label %845

773:                                              ; preds = %214
  %774 = load %struct.s_write*, %struct.s_write** %6, align 8
  %775 = getelementptr inbounds %struct.s_write, %struct.s_write* %774, i32 0, i32 2
  %776 = load %struct.TYPE_2__*, %struct.TYPE_2__** %775, align 8
  %777 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %776, i32 0, i32 6
  %778 = load i32, i32* %777, align 8
  %779 = load i32, i32* @MODE_POPUP, align 4
  %780 = icmp eq i32 %778, %779
  br i1 %780, label %781, label %798

781:                                              ; preds = %773
  %782 = load %struct.s_write*, %struct.s_write** %6, align 8
  %783 = call i32 @swap_visible_buffer(%struct.s_write* %782)
  %784 = load %struct.s_write*, %struct.s_write** %6, align 8
  %785 = getelementptr inbounds %struct.s_write, %struct.s_write* %784, i32 0, i32 4
  %786 = load i32, i32* %785, align 4
  %787 = load %struct.s_write*, %struct.s_write** %6, align 8
  %788 = getelementptr inbounds %struct.s_write, %struct.s_write* %787, i32 0, i32 2
  %789 = load %struct.TYPE_2__*, %struct.TYPE_2__** %788, align 8
  %790 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %789, i32 0, i32 9
  store i32 %786, i32* %790, align 4
  %791 = load %struct.s_write*, %struct.s_write** %6, align 8
  %792 = getelementptr inbounds %struct.s_write, %struct.s_write* %791, i32 0, i32 3
  %793 = load i32, i32* %792, align 8
  %794 = load %struct.s_write*, %struct.s_write** %6, align 8
  %795 = getelementptr inbounds %struct.s_write, %struct.s_write* %794, i32 0, i32 2
  %796 = load %struct.TYPE_2__*, %struct.TYPE_2__** %795, align 8
  %797 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %796, i32 0, i32 8
  store i32 %793, i32* %797, align 8
  br label %798

798:                                              ; preds = %781, %773
  %799 = load %struct.s_write*, %struct.s_write** %6, align 8
  %800 = call i32 @write_cc_buffer(%struct.s_write* %799)
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %802, label %809

802:                                              ; preds = %798
  %803 = load %struct.s_write*, %struct.s_write** %6, align 8
  %804 = getelementptr inbounds %struct.s_write, %struct.s_write* %803, i32 0, i32 2
  %805 = load %struct.TYPE_2__*, %struct.TYPE_2__** %804, align 8
  %806 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %805, i32 0, i32 7
  %807 = load i32, i32* %806, align 4
  %808 = add nsw i32 %807, 1
  store i32 %808, i32* %806, align 4
  br label %809

809:                                              ; preds = %802, %798
  %810 = load %struct.s_write*, %struct.s_write** %6, align 8
  %811 = getelementptr inbounds %struct.s_write, %struct.s_write* %810, i32 0, i32 2
  %812 = load %struct.TYPE_2__*, %struct.TYPE_2__** %811, align 8
  %813 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %812, i32 0, i32 6
  %814 = load i32, i32* %813, align 8
  %815 = load i32, i32* @MODE_POPUP, align 4
  %816 = icmp ne i32 %814, %815
  br i1 %816, label %817, label %820

817:                                              ; preds = %809
  %818 = load %struct.s_write*, %struct.s_write** %6, align 8
  %819 = call i32 @swap_visible_buffer(%struct.s_write* %818)
  br label %820

820:                                              ; preds = %817, %809
  %821 = load %struct.s_write*, %struct.s_write** %6, align 8
  %822 = getelementptr inbounds %struct.s_write, %struct.s_write* %821, i32 0, i32 2
  %823 = load %struct.TYPE_2__*, %struct.TYPE_2__** %822, align 8
  %824 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %823, i32 0, i32 1
  store i64 0, i64* %824, align 8
  %825 = load %struct.s_write*, %struct.s_write** %6, align 8
  %826 = getelementptr inbounds %struct.s_write, %struct.s_write* %825, i32 0, i32 2
  %827 = load %struct.TYPE_2__*, %struct.TYPE_2__** %826, align 8
  %828 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %827, i32 0, i32 2
  store i64 0, i64* %828, align 8
  %829 = load i8*, i8** @default_color, align 8
  %830 = load %struct.s_write*, %struct.s_write** %6, align 8
  %831 = getelementptr inbounds %struct.s_write, %struct.s_write* %830, i32 0, i32 2
  %832 = load %struct.TYPE_2__*, %struct.TYPE_2__** %831, align 8
  %833 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %832, i32 0, i32 5
  store i8* %829, i8** %833, align 8
  %834 = load i8*, i8** @FONT_REGULAR, align 8
  %835 = load %struct.s_write*, %struct.s_write** %6, align 8
  %836 = getelementptr inbounds %struct.s_write, %struct.s_write* %835, i32 0, i32 2
  %837 = load %struct.TYPE_2__*, %struct.TYPE_2__** %836, align 8
  %838 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %837, i32 0, i32 4
  store i8* %834, i8** %838, align 8
  br label %845

839:                                              ; preds = %214
  %840 = load i64, i64* @debug_608, align 8
  %841 = icmp ne i64 %840, 0
  br i1 %841, label %842, label %844

842:                                              ; preds = %839
  %843 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %844

844:                                              ; preds = %842, %839
  br label %845

845:                                              ; preds = %24, %844, %820, %750, %720, %699, %671, %626, %522, %418, %328, %308, %307, %288, %269, %254
  ret void
}

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local %struct.eia608_screen* @get_writing_buffer(%struct.s_write*) #1

declare dso_local i32 @move_roll_up(%struct.s_write*, i32) #1

declare dso_local i32 @swap_visible_buffer(%struct.s_write*) #1

declare dso_local i32 @write_cc_buffer(%struct.s_write*) #1

declare dso_local i32 @erase_memory(%struct.s_write*, i32) #1

declare dso_local i32 @is_current_row_empty(%struct.s_write*) #1

declare dso_local i32 @roll_up(%struct.s_write*) #1

declare dso_local %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
