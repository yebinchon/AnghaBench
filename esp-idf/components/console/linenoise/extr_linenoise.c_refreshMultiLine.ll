; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_refreshMultiLine.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_refreshMultiLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i32, i32, i32, i32, i32, i8*, i8*, i32 }
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
@stdout = common dso_local global i32 0, align 4
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
  %11 = alloca %struct.abuf, align 4
  store %struct.linenoiseState* %0, %struct.linenoiseState** %2, align 8
  %12 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %13 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %17 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %21 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %26 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %24, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %31 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %35 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %39 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %37, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %43 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %47 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %1
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %53 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %1
  %55 = call i32 @abInit(%struct.abuf* %11)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %56, %57
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %65, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %72 = call i32 @strlen(i8* %71)
  %73 = call i32 @abAppend(%struct.abuf* %11, i8* %70, i32 %72)
  br label %74

74:                                               ; preds = %60, %54
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %88, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, 1
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %83 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %82, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %86 = call i32 @strlen(i8* %85)
  %87 = call i32 @abAppend(%struct.abuf* %11, i8* %84, i32 %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %75

91:                                               ; preds = %75
  %92 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %94 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %93, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %97 = call i32 @strlen(i8* %96)
  %98 = call i32 @abAppend(%struct.abuf* %11, i8* %95, i32 %97)
  %99 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %100 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %99, i32 0, i32 5
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %103 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %102, i32 0, i32 5
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = call i32 @abAppend(%struct.abuf* %11, i8* %101, i32 %105)
  %107 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %108 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %107, i32 0, i32 6
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %111 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @abAppend(%struct.abuf* %11, i8* %109, i32 %112)
  %114 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @refreshShowHints(%struct.abuf* %11, %struct.linenoiseState* %114, i32 %115)
  %117 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %118 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %161

121:                                              ; preds = %91
  %122 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %123 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %126 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %161

129:                                              ; preds = %121
  %130 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %131 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %132, %133
  %135 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %136 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = srem i32 %134, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %129
  %141 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %142 = call i32 @abAppend(%struct.abuf* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %144 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %143, i32 64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %147 = call i32 @strlen(i8* %146)
  %148 = call i32 @abAppend(%struct.abuf* %11, i8* %145, i32 %147)
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %153 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = icmp sgt i32 %151, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %140
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %159 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %140
  br label %161

161:                                              ; preds = %160, %129, %121, %91
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %164 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %162, %165
  %167 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %168 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %166, %169
  %171 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %172 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = sdiv i32 %170, %173
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* %7, align 4
  %179 = sub nsw i32 %177, %178
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %161
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* %7, align 4
  %184 = sub nsw i32 %182, %183
  %185 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %184)
  %186 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* %7, align 4
  %189 = sub nsw i32 %187, %188
  %190 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %186, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %189)
  %191 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %192 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %193 = call i32 @strlen(i8* %192)
  %194 = call i32 @abAppend(%struct.abuf* %11, i8* %191, i32 %193)
  br label %195

195:                                              ; preds = %181, %161
  %196 = load i32, i32* %4, align 4
  %197 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %198 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %196, %199
  %201 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %202 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = srem i32 %200, %203
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 1, %205
  %207 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %195
  %211 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %212 = load i32, i32* %8, align 4
  %213 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %211, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %212)
  br label %217

214:                                              ; preds = %195
  %215 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %216 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %215, i32 64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %210
  %218 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %219 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %220 = call i32 @strlen(i8* %219)
  %221 = call i32 @abAppend(%struct.abuf* %11, i8* %218, i32 %220)
  %222 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %223 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %224 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %227 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  %228 = getelementptr inbounds %struct.abuf, %struct.abuf* %11, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.abuf, %struct.abuf* %11, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @stdout, align 4
  %233 = call i32 @fwrite(i32 %229, i32 %231, i32 1, i32 %232)
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %236

235:                                              ; preds = %217
  br label %236

236:                                              ; preds = %235, %217
  %237 = call i32 @abFree(%struct.abuf* %11)
  ret void
}

declare dso_local i32 @abInit(%struct.abuf*) #1

declare dso_local i32 @lndebug(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @abAppend(%struct.abuf*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @refreshShowHints(%struct.abuf*, %struct.linenoiseState*, i32) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @abFree(%struct.abuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
