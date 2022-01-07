; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_usbkeyboard.c_USBKeyboard_Scan.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_usbkeyboard.c_USBKeyboard_Scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

@_kbd = common dso_local global %struct.TYPE_4__* null, align 8
@KEY_ERROR = common dso_local global i32 0, align 4
@MODMAPSIZE = common dso_local global i32 0, align 4
@_ukbd_mod_map = common dso_local global i32** null, align 8
@USBKEYBOARD_RELEASED = common dso_local global i32 0, align 4
@USBKEYBOARD_PRESSED = common dso_local global i32 0, align 4
@MAXKEYCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBKeyboard_Scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %243

8:                                                ; preds = %0
  %9 = call i64 (...) @_get_input_report()
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 -2, i32* %1, align 4
  br label %243

12:                                               ; preds = %8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @KEY_ERROR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %243

22:                                               ; preds = %12
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %119

32:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %115, %32
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @MODMAPSIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %118

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32**, i32*** @_ukbd_mod_map, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %41, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %37
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32**, i32*** @_ukbd_mod_map, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %55, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %51
  %66 = load i32, i32* @USBKEYBOARD_RELEASED, align 4
  %67 = load i32**, i32*** @_ukbd_mod_map, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @_submit(i32 %66, i32 %73)
  br label %114

75:                                               ; preds = %51, %37
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32**, i32*** @_ukbd_mod_map, align 8
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %79, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %75
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32**, i32*** @_ukbd_mod_map, align 8
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %93, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %89
  %104 = load i32, i32* @USBKEYBOARD_PRESSED, align 4
  %105 = load i32**, i32*** @_ukbd_mod_map, align 8
  %106 = load i32, i32* %2, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @_submit(i32 %104, i32 %111)
  br label %113

113:                                              ; preds = %103, %89, %75
  br label %114

114:                                              ; preds = %113, %65
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %2, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %2, align 4
  br label %33

118:                                              ; preds = %33
  br label %119

119:                                              ; preds = %118, %22
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %233, %119
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @MAXKEYCODE, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %236

124:                                              ; preds = %120
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %2, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 3
  br i1 %133, label %134, label %178

134:                                              ; preds = %124
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %160, %134
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @MAXKEYCODE, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %135
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %2, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %147, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %139
  %158 = load i32, i32* %3, align 4
  store i32 %158, i32* %4, align 4
  br label %163

159:                                              ; preds = %139
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %3, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %3, align 4
  br label %135

163:                                              ; preds = %157, %135
  %164 = load i32, i32* %4, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %177

166:                                              ; preds = %163
  %167 = load i32, i32* @USBKEYBOARD_RELEASED, align 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @_submit(i32 %167, i32 %175)
  br label %177

177:                                              ; preds = %166, %163
  br label %178

178:                                              ; preds = %177, %124
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %2, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp sgt i32 %186, 3
  br i1 %187, label %188, label %232

188:                                              ; preds = %178
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %214, %188
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* @MAXKEYCODE, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %217

193:                                              ; preds = %189
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %2, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %3, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %201, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %193
  %212 = load i32, i32* %3, align 4
  store i32 %212, i32* %4, align 4
  br label %217

213:                                              ; preds = %193
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %3, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %3, align 4
  br label %189

217:                                              ; preds = %211, %189
  %218 = load i32, i32* %4, align 4
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %231

220:                                              ; preds = %217
  %221 = load i32, i32* @USBKEYBOARD_PRESSED, align 4
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %2, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @_submit(i32 %221, i32 %229)
  br label %231

231:                                              ; preds = %220, %217
  br label %232

232:                                              ; preds = %231, %178
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %2, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %2, align 4
  br label %120

236:                                              ; preds = %120
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_kbd, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = bitcast %struct.TYPE_3__* %238 to i8*
  %242 = bitcast %struct.TYPE_3__* %240 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %241, i8* align 8 %242, i64 16, i1 false)
  store i32 0, i32* %1, align 4
  br label %243

243:                                              ; preds = %236, %21, %11, %7
  %244 = load i32, i32* %1, align 4
  ret i32 %244
}

declare dso_local i64 @_get_input_report(...) #1

declare dso_local i32 @_submit(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
