; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/extr_shader_utils.c_dump_ps_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/extr_shader_utils.c_dump_ps_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_ps_data(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @DEBUG_INT(i32 %10)
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @DEBUG_VAR(i32 %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DEBUG_INT(i32 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %54, %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 10
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DEBUG_STR(i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 10
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DEBUG_INT(i32 %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 10
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DEBUG_INT(i32 %52)
  br label %54

54:                                               ; preds = %26
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %20

57:                                               ; preds = %20
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @DEBUG_INT(i32 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %114, %57
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %117

68:                                               ; preds = %62
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 9
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @DEBUG_STR(i32 %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 9
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DEBUG_INT(i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 9
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @DEBUG_INT(i32 %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 9
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @DEBUG_INT(i32 %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 9
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @DEBUG_INT(i32 %112)
  br label %114

114:                                              ; preds = %68
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %62

117:                                              ; preds = %62
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @DEBUG_INT(i32 %120)
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %182, %117
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %185

128:                                              ; preds = %122
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @DEBUG_INT(i32 %136)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @DEBUG_FLOAT(i32 %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @DEBUG_FLOAT(i32 %158)
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @DEBUG_FLOAT(i32 %169)
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @DEBUG_FLOAT(i32 %180)
  br label %182

182:                                              ; preds = %128
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %122

185:                                              ; preds = %122
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @DEBUG_INT(i32 %188)
  store i32 0, i32* %6, align 4
  br label %190

190:                                              ; preds = %215, %185
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %218

196:                                              ; preds = %190
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 7
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @DEBUG_INT(i32 %204)
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 7
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @DEBUG_VAR(i32 %213)
  br label %215

215:                                              ; preds = %196
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  br label %190

218:                                              ; preds = %190
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @DEBUG_INT(i32 %221)
  store i32 0, i32* %7, align 4
  br label %223

223:                                              ; preds = %257, %218
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %260

229:                                              ; preds = %223
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 6
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @DEBUG_STR(i32 %237)
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 6
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = load i32, i32* %7, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @DEBUG_INT(i32 %246)
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 6
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @DEBUG_INT(i32 %255)
  br label %257

257:                                              ; preds = %229
  %258 = load i32, i32* %7, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %7, align 4
  br label %223

260:                                              ; preds = %223
  ret void
}

declare dso_local i32 @DEBUG_INT(i32) #1

declare dso_local i32 @DEBUG_VAR(i32) #1

declare dso_local i32 @DEBUG_STR(i32) #1

declare dso_local i32 @DEBUG_FLOAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
