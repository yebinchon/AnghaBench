; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_taos_print_row.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_taos_print_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@TSDB_DATA_NULL_STR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%lld \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lf \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taos_print_row(i8* %0, i32** %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %218, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %221

17:                                               ; preds = %13
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8*, i8** @TSDB_DATA_NULL_STR, align 8
  %30 = call i64 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  br label %218

35:                                               ; preds = %17
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %216 [
    i32 128, label %42
    i32 130, label %60
    i32 132, label %78
    i32 137, label %94
    i32 133, label %110
    i32 134, label %128
    i32 136, label %145
    i32 131, label %145
    i32 129, label %184
    i32 135, label %200
  ]

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32**, i32*** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = call i64 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  br label %217

60:                                               ; preds = %35
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32**, i32*** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = bitcast i32* %69 to i16*
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  %73 = call i64 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %9, align 4
  br label %217

78:                                               ; preds = %35
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32**, i32*** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i64 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %9, align 4
  br label %217

94:                                               ; preds = %35
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i32**, i32*** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i64 (i8*, i8*, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %9, align 4
  br label %217

110:                                              ; preds = %35
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i32**, i32*** %6, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = bitcast i32* %119 to float*
  %121 = load float, float* %120, align 4
  %122 = fpext float %121 to double
  %123 = call i64 (i8*, i8*, ...) @sprintf(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %122)
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %9, align 4
  br label %217

128:                                              ; preds = %35
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32**, i32*** %6, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = bitcast i32* %137 to double*
  %139 = load double, double* %138, align 8
  %140 = call i64 (i8*, i8*, ...) @sprintf(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %139)
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %9, align 4
  br label %217

145:                                              ; preds = %35, %35
  %146 = load i32**, i32*** %6, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = call i64 @strlen(i32* %150)
  store i64 %151, i64* %11, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @MIN(i64 %152, i32 %158)
  store i64 %159, i64* %12, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i32**, i32*** %6, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = bitcast i32* %168 to i8*
  %170 = load i64, i64* %12, align 8
  %171 = call i32 @memcpy(i8* %163, i8* %169, i64 %170)
  %172 = load i8*, i8** %5, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* %12, align 8
  %176 = add i64 %174, %175
  %177 = getelementptr inbounds i8, i8* %172, i64 %176
  store i8 32, i8* %177, align 1
  %178 = load i64, i64* %12, align 8
  %179 = add i64 %178, 1
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = add i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %9, align 4
  br label %217

184:                                              ; preds = %35
  %185 = load i8*, i8** %5, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i32**, i32*** %6, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %193, align 4
  %195 = call i64 (i8*, i8*, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %195
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %9, align 4
  br label %217

200:                                              ; preds = %35
  %201 = load i8*, i8** %5, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i32**, i32*** %6, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %209, align 4
  %211 = call i64 (i8*, i8*, ...) @sprintf(i8* %204, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %35, %200
  br label %217

217:                                              ; preds = %216, %184, %145, %128, %110, %94, %78, %60, %42
  br label %218

218:                                              ; preds = %217, %24
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %10, align 4
  br label %13

221:                                              ; preds = %13
  %222 = load i32, i32* %9, align 4
  ret i32 %222
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
