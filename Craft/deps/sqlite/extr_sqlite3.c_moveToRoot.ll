; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_moveToRoot.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_moveToRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i64, i32, i64, i64, i64, i64, %struct.TYPE_11__, i64*, %struct.TYPE_12__**, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i64, i32, i32*, i32, i64 }
%struct.TYPE_13__ = type { i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@CURSOR_INVALID = common dso_local global i64 0, align 8
@CURSOR_REQUIRESEEK = common dso_local global i64 0, align 8
@CURSOR_VALID = common dso_local global i64 0, align 8
@CURSOR_FAULT = common dso_local global i64 0, align 8
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @moveToRoot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moveToRoot(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %10 = load i32, i32* @SQLITE_OK, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 11
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = call i32 @cursorHoldsMutex(%struct.TYPE_14__* %17)
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* @CURSOR_INVALID, align 8
  %21 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %22 = icmp slt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* @CURSOR_VALID, align 8
  %26 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %27 = icmp slt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i64, i64* @CURSOR_FAULT, align 8
  %31 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %32 = icmp sgt i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CURSOR_FAULT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp ne i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %2, align 4
  br label %254

57:                                               ; preds = %40
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = call i32 @sqlite3BtreeClearCursor(%struct.TYPE_14__* %58)
  br label %60

60:                                               ; preds = %57, %1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %82, %65
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sle i64 %68, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 10
  %76 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %76, i64 %78
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = call i32 @releasePage(%struct.TYPE_12__* %80)
  br label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %66

85:                                               ; preds = %66
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  br label %162

88:                                               ; preds = %60
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i64, i64* @CURSOR_INVALID, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* @SQLITE_OK, align 4
  store i32 %97, i32* %2, align 4
  br label %254

98:                                               ; preds = %88
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 10
  %105 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %105, i64 0
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @getAndInitPage(i32* %99, i32 %102, %struct.TYPE_12__** %106, i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %98
  %117 = load i64, i64* @CURSOR_INVALID, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %254

121:                                              ; preds = %98
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 10
  %126 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %126, i64 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %141, label %132

132:                                              ; preds = %121
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 10
  %135 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %135, i64 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 0
  br label %141

141:                                              ; preds = %132, %121
  %142 = phi i1 [ true, %121 ], [ %140, %132 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  %149 = zext i1 %148 to i32
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 10
  %152 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %152, i64 0
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %149, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %141
  %159 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %159, i32* %2, align 4
  br label %254

160:                                              ; preds = %141
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161, %85
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 10
  %165 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %165, i64 0
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  store %struct.TYPE_12__* %167, %struct.TYPE_12__** %4, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %170, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %162
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %184, 0
  %186 = zext i1 %185 to i32
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %186, %189
  br label %191

191:                                              ; preds = %181, %162
  %192 = phi i1 [ false, %162 ], [ %190, %181 ]
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 9
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  store i64 0, i64* %198, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  store i64 0, i64* %201, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 7
  store i64 0, i64* %203, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 6
  store i64 0, i64* %205, align 8
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %239

210:                                              ; preds = %191
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %239, label %215

215:                                              ; preds = %210
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 1
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %221, i32* %2, align 4
  br label %254

222:                                              ; preds = %215
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 4
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, 8
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %225, i64 %230
  %232 = call i32 @get4byte(i32* %231)
  store i32 %232, i32* %9, align 4
  %233 = load i64, i64* @CURSOR_VALID, align 8
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %237 = load i32, i32* %9, align 4
  %238 = call i32 @moveToChild(%struct.TYPE_14__* %236, i32 %237)
  store i32 %238, i32* %5, align 4
  br label %252

239:                                              ; preds = %210, %191
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = icmp sgt i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = load i64, i64* @CURSOR_VALID, align 8
  br label %248

246:                                              ; preds = %239
  %247 = load i64, i64* @CURSOR_INVALID, align 8
  br label %248

248:                                              ; preds = %246, %244
  %249 = phi i64 [ %245, %244 ], [ %247, %246 ]
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  store i64 %249, i64* %251, align 8
  br label %252

252:                                              ; preds = %248, %222
  %253 = load i32, i32* %5, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %252, %220, %158, %116, %93, %46
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cursorHoldsMutex(%struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3BtreeClearCursor(%struct.TYPE_14__*) #1

declare dso_local i32 @releasePage(%struct.TYPE_12__*) #1

declare dso_local i32 @getAndInitPage(i32*, i32, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @moveToChild(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
