; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-gong/extr_gong.c_save_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-gong/extr_gong.c_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_24__*, i32*, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@g_state = common dso_local global %struct.TYPE_15__* null, align 8
@MAX_PLAYERS = common dso_local global i32 0, align 4
@B_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_state(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %24 = load i8*, i8** %3, align 8
  store i8* %24, i8** %7, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @swap_if_little32(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @swap_if_little32(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @swap_if_little32(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 14
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @swap_if_little32(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 13
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @swap_if_little32(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 12
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @swap_if_little32(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %13, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 11
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @swap_if_little32(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 10
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @swap_if_little32(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %15, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @swap_if_little32(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %16, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @swap_if_little32(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %17, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %18, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %19, align 4
  %88 = load i64, i64* %4, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 (i8*, ...) @memcpy(i8* %89, i32* %8, i64 4)
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 4
  store i8* %92, i8** %7, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 (i8*, ...) @memcpy(i8* %93, i32* %9, i64 4)
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  store i8* %96, i8** %7, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 (i8*, ...) @memcpy(i8* %97, i32* %10, i64 4)
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  store i8* %100, i8** %7, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 (i8*, ...) @memcpy(i8* %101, i32* %11, i64 4)
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 4
  store i8* %104, i8** %7, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 (i8*, ...) @memcpy(i8* %105, i32* %12, i64 4)
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 4
  store i8* %108, i8** %7, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 (i8*, ...) @memcpy(i8* %109, i32* %13, i64 4)
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  store i8* %112, i8** %7, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 (i8*, ...) @memcpy(i8* %113, i32* %14, i64 4)
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 4
  store i8* %116, i8** %7, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 (i8*, ...) @memcpy(i8* %117, i32* %15, i64 4)
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 4
  store i8* %120, i8** %7, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 (i8*, ...) @memcpy(i8* %121, i32* %16, i64 4)
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 4
  store i8* %124, i8** %7, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 (i8*, ...) @memcpy(i8* %125, i32* %17, i64 4)
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 4
  store i8* %128, i8** %7, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 (i8*, ...) @memcpy(i8* %129, i32* %18, i64 4)
  %131 = load i8*, i8** %7, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 4
  store i8* %132, i8** %7, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 (i8*, ...) @memcpy(i8* %133, i32* %19, i64 4)
  %135 = load i8*, i8** %7, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 4
  store i8* %136, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %154, %2
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @MAX_PLAYERS, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %137
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 7
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @swap_if_little16(i32 %148)
  store i32 %149, i32* %20, align 4
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 (i8*, ...) @memcpy(i8* %150, i32* %20, i64 4)
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 4
  store i8* %153, i8** %7, align 8
  br label %154

154:                                              ; preds = %141
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %137

157:                                              ; preds = %137
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %208, %157
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @MAX_PLAYERS, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %211

162:                                              ; preds = %158
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %204, %162
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @B_COUNT, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %207

167:                                              ; preds = %163
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 6
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @swap_if_little32(i32 %180)
  %182 = ptrtoint i8* %181 to i32
  store i32 %182, i32* %21, align 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 6
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %22, align 4
  %196 = load i8*, i8** %7, align 8
  %197 = call i32 (i8*, ...) @memcpy(i8* %196, i32* %21, i64 4)
  %198 = load i8*, i8** %7, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 4
  store i8* %199, i8** %7, align 8
  %200 = load i8*, i8** %7, align 8
  %201 = call i32 (i8*, ...) @memcpy(i8* %200, i32* %22, i64 4)
  %202 = load i8*, i8** %7, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 4
  store i8* %203, i8** %7, align 8
  br label %204

204:                                              ; preds = %167
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  br label %163

207:                                              ; preds = %163
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %5, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %5, align 4
  br label %158

211:                                              ; preds = %158
  store i32 0, i32* %5, align 4
  br label %212

212:                                              ; preds = %232, %211
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @MAX_PLAYERS, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %235

216:                                              ; preds = %212
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_state, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 5
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @swap_if_little32(i32 %225)
  %227 = ptrtoint i8* %226 to i32
  store i32 %227, i32* %23, align 4
  %228 = load i8*, i8** %7, align 8
  %229 = call i32 (i8*, ...) @memcpy(i8* %228, i32* %23, i64 4)
  %230 = load i8*, i8** %7, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 4
  store i8* %231, i8** %7, align 8
  br label %232

232:                                              ; preds = %216
  %233 = load i32, i32* %5, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %5, align 4
  br label %212

235:                                              ; preds = %212
  ret void
}

declare dso_local i8* @swap_if_little32(i32) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i32 @swap_if_little16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
