; ModuleID = '/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_refreshMultiLine.c'
source_filename = "/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_refreshMultiLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i8*, i32, i32, i32, i32, i32, i8*, i32 }
%struct.abuf = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"go down %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[%dB\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"clear+up\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\0D\1B[0K\1B[1A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\0D\1B[0K\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"<newline>\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"rpos2 %d\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"go-up %d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\1B[%dA\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"set col %d\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\0D\1B[%dC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linenoiseState*)* @refreshMultiLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refreshMultiLine(%struct.linenoiseState* %0) #0 {
  %2 = alloca %struct.linenoiseState*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.abuf, align 4
  store %struct.linenoiseState* %0, %struct.linenoiseState** %2, align 8
  %13 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %14 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %19 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %17, %20
  %22 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %23 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %28 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %26, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %33 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %31, %34
  %36 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %37 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %41 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %39, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %45 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %48 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %52 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %1
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %58 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %1
  %60 = call i32 @abInit(%struct.abuf* %12)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %70, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %77 = call i32 @strlen(i8* %76)
  %78 = call i32 @abAppend(%struct.abuf* %12, i8* %75, i32 %77)
  br label %79

79:                                               ; preds = %65, %59
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %93, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %88 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %87, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %91 = call i32 @strlen(i8* %90)
  %92 = call i32 @abAppend(%struct.abuf* %12, i8* %89, i32 %91)
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %80

96:                                               ; preds = %80
  %97 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %99 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %98, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %102 = call i32 @strlen(i8* %101)
  %103 = call i32 @abAppend(%struct.abuf* %12, i8* %100, i32 %102)
  %104 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %105 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %108 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = call i32 @abAppend(%struct.abuf* %12, i8* %106, i32 %110)
  %112 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %113 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %112, i32 0, i32 6
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %116 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @abAppend(%struct.abuf* %12, i8* %114, i32 %117)
  %119 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %120 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %163

123:                                              ; preds = %96
  %124 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %125 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %128 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %131, label %163

131:                                              ; preds = %123
  %132 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %133 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %134, %135
  %137 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %138 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = srem i32 %136, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %131
  %143 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %144 = call i32 @abAppend(%struct.abuf* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %146 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %145, i32 64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %149 = call i32 @strlen(i8* %148)
  %150 = call i32 @abAppend(%struct.abuf* %12, i8* %147, i32 %149)
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %155 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %153, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %142
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %161 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %142
  br label %163

163:                                              ; preds = %162, %131, %123, %96
  %164 = load i32, i32* %4, align 4
  %165 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %166 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %164, %167
  %169 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %170 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %168, %171
  %173 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %174 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %172, %175
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %7, align 4
  %181 = sub nsw i32 %179, %180
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %163
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %7, align 4
  %186 = sub nsw i32 %184, %185
  %187 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %186)
  %188 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* %7, align 4
  %191 = sub nsw i32 %189, %190
  %192 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %188, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %191)
  %193 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %194 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %195 = call i32 @strlen(i8* %194)
  %196 = call i32 @abAppend(%struct.abuf* %12, i8* %193, i32 %195)
  br label %197

197:                                              ; preds = %183, %163
  %198 = load i32, i32* %4, align 4
  %199 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %200 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %198, %201
  %203 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %204 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = srem i32 %202, %205
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 1, %207
  %209 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %197
  %213 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %214 = load i32, i32* %8, align 4
  %215 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %213, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %214)
  br label %219

216:                                              ; preds = %197
  %217 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %218 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %217, i32 64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %212
  %220 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %221 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %222 = call i32 @strlen(i8* %221)
  %223 = call i32 @abAppend(%struct.abuf* %12, i8* %220, i32 %222)
  %224 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %225 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %226 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %229 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* %10, align 4
  %231 = getelementptr inbounds %struct.abuf, %struct.abuf* %12, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds %struct.abuf, %struct.abuf* %12, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @write(i32 %230, i32 %232, i32 %234)
  %236 = icmp eq i32 %235, -1
  br i1 %236, label %237, label %238

237:                                              ; preds = %219
  br label %238

238:                                              ; preds = %237, %219
  %239 = call i32 @abFree(%struct.abuf* %12)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @abInit(%struct.abuf*) #1

declare dso_local i32 @lndebug(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @abAppend(%struct.abuf*, i8*, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @abFree(%struct.abuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
