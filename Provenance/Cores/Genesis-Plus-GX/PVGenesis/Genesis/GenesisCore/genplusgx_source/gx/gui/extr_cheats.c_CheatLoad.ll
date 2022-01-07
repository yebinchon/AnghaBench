; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_cheats.c_CheatLoad.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_cheats.c_CheatLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64*, i64* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32 }

@maxcheats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s/cheats/%s.pat\00", align 1
@DEFAULT_PATH = common dso_local global i8* null, align 8
@rom_filename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MAX_CHEATS = common dso_local global i32 0, align 4
@cheatlist = common dso_local global %struct.TYPE_8__* null, align 8
@MAX_DESC_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@BUTTON_ACTIVE = common dso_local global i32 0, align 4
@menu_cheats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@offset = common dso_local global i64 0, align 8
@selection = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheatLoad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* @maxcheats, align 4
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %6 = load i8*, i8** @DEFAULT_PATH, align 8
  %7 = load i8*, i8** @rom_filename, align 8
  %8 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %6, i8* %7)
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %178

13:                                               ; preds = %0
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 256)
  br label %16

16:                                               ; preds = %162, %13
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @fgets(i8* %17, i32 256, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* @maxcheats, align 4
  %23 = load i32, i32* @MAX_CHEATS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @MAX_CHEATS, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %21, %16
  %30 = phi i1 [ false, %21 ], [ false, %16 ], [ %28, %25 ]
  br i1 %30, label %31, label %163

31:                                               ; preds = %29
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %33 = call i32 @strlen(i8* %32)
  %34 = sub nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 13
  br i1 %39, label %49, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %42 = call i32 @strlen(i8* %41)
  %43 = sub nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %55

49:                                               ; preds = %40, %31
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %51 = call i32 @strlen(i8* %50)
  %52 = sub nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  br label %61

55:                                               ; preds = %40
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %57 = call i32 @strlen(i8* %56)
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %59
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %55, %49
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %63 = load i32, i32* @maxcheats, align 4
  %64 = call i32 @decode_cheat(i8* %62, i32 %63)
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* %1, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %132

67:                                               ; preds = %61
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cheatlist, align 8
  %69 = load i32, i32* @maxcheats, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @strncpy(i64* %73, i8* %74, i32 %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cheatlist, align 8
  %78 = load i32, i32* @maxcheats, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %88

88:                                               ; preds = %104, %67
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 32
  br i1 %94, label %102, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 9
  br label %102

102:                                              ; preds = %95, %88
  %103 = phi i1 [ true, %88 ], [ %101, %95 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i32, i32* %1, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %1, align 4
  br label %88

107:                                              ; preds = %102
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cheatlist, align 8
  %109 = load i32, i32* @maxcheats, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %1, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %115
  %117 = load i32, i32* @MAX_DESC_LENGTH, align 4
  %118 = sub nsw i32 %117, 1
  %119 = call i32 @strncpy(i64* %113, i8* %116, i32 %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cheatlist, align 8
  %121 = load i32, i32* @maxcheats, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* @MAX_DESC_LENGTH, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %125, i64 %128
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* @maxcheats, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* @maxcheats, align 4
  br label %162

132:                                              ; preds = %61
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cheatlist, align 8
  %141 = load i32, i32* %2, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %2, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  br label %161

146:                                              ; preds = %136, %132
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %146
  %151 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cheatlist, align 8
  %155 = load i32, i32* %2, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %2, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i32 0, i32* %159, align 8
  br label %160

160:                                              ; preds = %153, %150, %146
  br label %161

161:                                              ; preds = %160, %139
  br label %162

162:                                              ; preds = %161, %107
  br label %16

163:                                              ; preds = %29
  br label %164

164:                                              ; preds = %168, %163
  %165 = load i32, i32* %2, align 4
  %166 = load i32, i32* @maxcheats, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cheatlist, align 8
  %170 = load i32, i32* %2, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %2, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  store i32 0, i32* %174, align 8
  br label %164

175:                                              ; preds = %164
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 @fclose(i32* %176)
  br label %178

178:                                              ; preds = %175, %0
  %179 = call i32 (...) @apply_cheats()
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %242, %178
  %181 = load i32, i32* %2, align 4
  %182 = icmp slt i32 %181, 10
  br i1 %182, label %183, label %245

183:                                              ; preds = %180
  %184 = load i32, i32* %2, align 4
  %185 = load i32, i32* @maxcheats, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %203

187:                                              ; preds = %183
  %188 = load i32, i32* @BUTTON_ACTIVE, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @menu_cheats, i32 0, i32 0), align 8
  %190 = load i32, i32* %2, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %188
  store i32 %195, i32* %193, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @menu_cheats, i32 0, i32 0), align 8
  %197 = load i32, i32* %2, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  store i32 1, i32* %202, align 4
  br label %241

203:                                              ; preds = %183
  %204 = load i32, i32* %2, align 4
  %205 = load i32, i32* @maxcheats, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %203
  %208 = load i32, i32* @BUTTON_ACTIVE, align 4
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @menu_cheats, i32 0, i32 0), align 8
  %210 = load i32, i32* %2, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %208
  store i32 %215, i32* %213, align 8
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @menu_cheats, i32 0, i32 0), align 8
  %217 = load i32, i32* %2, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 1
  store i32 0, i32* %222, align 4
  br label %240

223:                                              ; preds = %203
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @menu_cheats, i32 0, i32 0), align 8
  %225 = load i32, i32* %2, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  store i32 0, i32* %230, align 4
  %231 = load i32, i32* @BUTTON_ACTIVE, align 4
  %232 = xor i32 %231, -1
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @menu_cheats, i32 0, i32 0), align 8
  %234 = load i32, i32* %2, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = and i32 %238, %232
  store i32 %239, i32* %237, align 8
  br label %240

240:                                              ; preds = %223, %207
  br label %241

241:                                              ; preds = %240, %187
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %2, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %2, align 4
  br label %180

245:                                              ; preds = %180
  store i64 0, i64* @offset, align 8
  store i64 0, i64* @selection, align 8
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @decode_cheat(i8*, i32) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @apply_cheats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
