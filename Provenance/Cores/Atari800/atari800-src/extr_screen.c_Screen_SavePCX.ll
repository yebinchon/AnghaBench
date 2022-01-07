; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_SavePCX.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_SavePCX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATARI_VISIBLE_WIDTH = common dso_local global i32 0, align 4
@Screen_HEIGHT = common dso_local global i32 0, align 4
@Colours_table = common dso_local global i64* null, align 8
@Screen_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64*)* @Screen_SavePCX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Screen_SavePCX(i32* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 16, i64* %10, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @fputc(i32 10, i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @fputc(i32 5, i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @fputc(i32 1, i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @fputc(i32 8, i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @fputw(i32 0, i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @fputw(i32 0, i32* %23)
  %25 = load i32, i32* @ATARI_VISIBLE_WIDTH, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fputw(i32 %26, i32* %27)
  %29 = load i32, i32* @Screen_HEIGHT, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @fputw(i32 %30, i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @fputw(i32 0, i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @fputw(i32 0, i32* %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %43, %3
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 48
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @fputc(i32 0, i32* %41)
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %37

46:                                               ; preds = %37
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @fputc(i32 0, i32* %47)
  %49 = load i64*, i64** %6, align 8
  %50 = icmp ne i64* %49, null
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 3, i32 1
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @fputc(i32 %52, i32* %53)
  %55 = load i32, i32* @ATARI_VISIBLE_WIDTH, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @fputw(i32 %55, i32* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @fputw(i32 1, i32* %58)
  %60 = load i32, i32* @ATARI_VISIBLE_WIDTH, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @fputw(i32 %60, i32* %61)
  %63 = load i32, i32* @Screen_HEIGHT, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @fputw(i32 %63, i32* %64)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %72, %46
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 54
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @fputc(i32 0, i32* %70)
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %66

75:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %217, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @Screen_HEIGHT, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %218

80:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %175, %80
  %82 = load i64*, i64** %6, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %84, label %103

84:                                               ; preds = %81
  %85 = load i64*, i64** @Colours_table, align 8
  %86 = load i64*, i64** %5, align 8
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = lshr i64 %89, %90
  %92 = and i64 %91, 255
  %93 = load i64*, i64** @Colours_table, align 8
  %94 = load i64*, i64** %6, align 8
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = lshr i64 %97, %98
  %100 = and i64 %99, 255
  %101 = add i64 %92, %100
  %102 = lshr i64 %101, 1
  br label %106

103:                                              ; preds = %81
  %104 = load i64*, i64** %5, align 8
  %105 = load i64, i64* %104, align 8
  br label %106

106:                                              ; preds = %103, %84
  %107 = phi i64 [ %102, %84 ], [ %105, %103 ]
  store i64 %107, i64* %11, align 8
  store i64 192, i64* %12, align 8
  br label %108

108:                                              ; preds = %157, %106
  %109 = load i64*, i64** %5, align 8
  %110 = getelementptr inbounds i64, i64* %109, i32 1
  store i64* %110, i64** %5, align 8
  %111 = load i64*, i64** %6, align 8
  %112 = icmp ne i64* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i64*, i64** %6, align 8
  %115 = getelementptr inbounds i64, i64* %114, i32 1
  store i64* %115, i64** %6, align 8
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %12, align 8
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %116
  %122 = load i64, i64* %11, align 8
  %123 = load i64*, i64** %6, align 8
  %124 = icmp ne i64* %123, null
  br i1 %124, label %125, label %144

125:                                              ; preds = %121
  %126 = load i64*, i64** @Colours_table, align 8
  %127 = load i64*, i64** %5, align 8
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %10, align 8
  %132 = lshr i64 %130, %131
  %133 = and i64 %132, 255
  %134 = load i64*, i64** @Colours_table, align 8
  %135 = load i64*, i64** %6, align 8
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = lshr i64 %138, %139
  %141 = and i64 %140, 255
  %142 = add i64 %133, %141
  %143 = lshr i64 %142, 1
  br label %147

144:                                              ; preds = %121
  %145 = load i64*, i64** %5, align 8
  %146 = load i64, i64* %145, align 8
  br label %147

147:                                              ; preds = %144, %125
  %148 = phi i64 [ %143, %125 ], [ %146, %144 ]
  %149 = icmp eq i64 %122, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i64, i64* %12, align 8
  %152 = icmp ult i64 %151, 255
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @ATARI_VISIBLE_WIDTH, align 4
  %156 = icmp slt i32 %154, %155
  br label %157

157:                                              ; preds = %153, %150, %147
  %158 = phi i1 [ false, %150 ], [ false, %147 ], [ %156, %153 ]
  br i1 %158, label %108, label %159

159:                                              ; preds = %157
  %160 = load i64, i64* %12, align 8
  %161 = icmp ugt i64 %160, 193
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i64, i64* %11, align 8
  %164 = icmp uge i64 %163, 192
  br i1 %164, label %165, label %170

165:                                              ; preds = %162, %159
  %166 = load i64, i64* %12, align 8
  %167 = trunc i64 %166 to i32
  %168 = load i32*, i32** %4, align 8
  %169 = call i32 @fputc(i32 %167, i32* %168)
  br label %170

170:                                              ; preds = %165, %162
  %171 = load i64, i64* %11, align 8
  %172 = trunc i64 %171 to i32
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @fputc(i32 %172, i32* %173)
  br label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @ATARI_VISIBLE_WIDTH, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %81, label %179

179:                                              ; preds = %175
  %180 = load i64*, i64** %6, align 8
  %181 = icmp ne i64* %180, null
  br i1 %181, label %182, label %198

182:                                              ; preds = %179
  %183 = load i64, i64* %10, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %182
  %186 = load i32, i32* @ATARI_VISIBLE_WIDTH, align 4
  %187 = load i64*, i64** %5, align 8
  %188 = sext i32 %186 to i64
  %189 = sub i64 0, %188
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  store i64* %190, i64** %5, align 8
  %191 = load i32, i32* @ATARI_VISIBLE_WIDTH, align 4
  %192 = load i64*, i64** %6, align 8
  %193 = sext i32 %191 to i64
  %194 = sub i64 0, %193
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  store i64* %195, i64** %6, align 8
  %196 = load i64, i64* %10, align 8
  %197 = sub i64 %196, 8
  store i64 %197, i64* %10, align 8
  br label %217

198:                                              ; preds = %182, %179
  %199 = load i32, i32* @Screen_WIDTH, align 4
  %200 = load i32, i32* @ATARI_VISIBLE_WIDTH, align 4
  %201 = sub nsw i32 %199, %200
  %202 = load i64*, i64** %5, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  store i64* %204, i64** %5, align 8
  %205 = load i64*, i64** %6, align 8
  %206 = icmp ne i64* %205, null
  br i1 %206, label %207, label %214

207:                                              ; preds = %198
  %208 = load i32, i32* @Screen_WIDTH, align 4
  %209 = load i32, i32* @ATARI_VISIBLE_WIDTH, align 4
  %210 = sub nsw i32 %208, %209
  %211 = load i64*, i64** %6, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i64, i64* %211, i64 %212
  store i64* %213, i64** %6, align 8
  store i64 16, i64* %10, align 8
  br label %214

214:                                              ; preds = %207, %198
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %214, %185
  br label %76

218:                                              ; preds = %76
  %219 = load i64*, i64** %6, align 8
  %220 = icmp eq i64* %219, null
  br i1 %220, label %221, label %244

221:                                              ; preds = %218
  %222 = load i32*, i32** %4, align 8
  %223 = call i32 @fputc(i32 12, i32* %222)
  store i32 0, i32* %7, align 4
  br label %224

224:                                              ; preds = %240, %221
  %225 = load i32, i32* %7, align 4
  %226 = icmp slt i32 %225, 256
  br i1 %226, label %227, label %243

227:                                              ; preds = %224
  %228 = load i32, i32* %7, align 4
  %229 = call i32 @Colours_GetR(i32 %228)
  %230 = load i32*, i32** %4, align 8
  %231 = call i32 @fputc(i32 %229, i32* %230)
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @Colours_GetG(i32 %232)
  %234 = load i32*, i32** %4, align 8
  %235 = call i32 @fputc(i32 %233, i32* %234)
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @Colours_GetB(i32 %236)
  %238 = load i32*, i32** %4, align 8
  %239 = call i32 @fputc(i32 %237, i32* %238)
  br label %240

240:                                              ; preds = %227
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %7, align 4
  br label %224

243:                                              ; preds = %224
  br label %244

244:                                              ; preds = %243, %218
  ret void
}

declare dso_local i32 @fputc(i32, i32*) #1

declare dso_local i32 @fputw(i32, i32*) #1

declare dso_local i32 @Colours_GetR(i32) #1

declare dso_local i32 @Colours_GetG(i32) #1

declare dso_local i32 @Colours_GetB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
