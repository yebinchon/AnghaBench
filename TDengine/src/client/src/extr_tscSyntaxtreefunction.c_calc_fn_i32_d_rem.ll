; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSyntaxtreefunction.c_calc_fn_i32_d_rem.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSyntaxtreefunction.c_calc_fn_i32_d_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TSQL_SO_ASC = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_INT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i64 0, align 8
@tDataTypeDesc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_fn_i32_d_rem(i8* %0, i8* %1, i64 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to double*
  store double* %21, double** %14, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to double*
  store double* %23, double** %15, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @TSQL_SO_ASC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  br label %33

28:                                               ; preds = %6
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @MAX(i64 %29, i64 %30)
  %32 = sub nsw i32 %31, 1
  br label %33

33:                                               ; preds = %28, %27
  %34 = phi i32 [ 0, %27 ], [ %32, %28 ]
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @TSQL_SO_ASC, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 -1
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %17, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %112

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %104, %45
  %47 = load i64, i64* %16, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp slt i64 %50, %51
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %111

55:                                               ; preds = %53
  %56 = load i64*, i64** %13, align 8
  %57 = load i64, i64* %16, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = bitcast i64* %58 to i8*
  %60 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %61 = call i64 @isNull(i8* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load double*, double** %14, align 8
  %65 = load i64, i64* %16, align 8
  %66 = getelementptr inbounds double, double* %64, i64 %65
  %67 = bitcast double* %66 to i8*
  %68 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %69 = call i64 @isNull(i8* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %63, %55
  %72 = load double*, double** %15, align 8
  %73 = bitcast double* %72 to i8*
  %74 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tDataTypeDesc, align 8
  %76 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @setNull(i8* %73, i64 %74, i32 %79)
  br label %104

81:                                               ; preds = %63
  %82 = load i64*, i64** %13, align 8
  %83 = load i64, i64* %16, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = sitofp i64 %85 to double
  %87 = load i64*, i64** %13, align 8
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = sitofp i64 %90 to double
  %92 = load double*, double** %14, align 8
  %93 = load i64, i64* %16, align 8
  %94 = getelementptr inbounds double, double* %92, i64 %93
  %95 = load double, double* %94, align 8
  %96 = fdiv double %91, %95
  %97 = load double*, double** %14, align 8
  %98 = load i64, i64* %16, align 8
  %99 = getelementptr inbounds double, double* %97, i64 %98
  %100 = load double, double* %99, align 8
  %101 = fmul double %96, %100
  %102 = fsub double %86, %101
  %103 = load double*, double** %15, align 8
  store double %102, double* %103, align 8
  br label %104

104:                                              ; preds = %81, %71
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* %16, align 8
  %107 = add nsw i64 %106, %105
  store i64 %107, i64* %16, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load double*, double** %15, align 8
  %110 = getelementptr inbounds double, double* %109, i64 %108
  store double* %110, double** %15, align 8
  br label %46

111:                                              ; preds = %53
  br label %246

112:                                              ; preds = %33
  %113 = load i64, i64* %9, align 8
  %114 = icmp eq i64 %113, 1
  br i1 %114, label %115, label %178

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %170, %115
  %117 = load i64, i64* %16, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %10, align 8
  %122 = icmp slt i64 %120, %121
  br label %123

123:                                              ; preds = %119, %116
  %124 = phi i1 [ false, %116 ], [ %122, %119 ]
  br i1 %124, label %125, label %177

125:                                              ; preds = %123
  %126 = load i64*, i64** %13, align 8
  %127 = bitcast i64* %126 to i8*
  %128 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %129 = call i64 @isNull(i8* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %125
  %132 = load double*, double** %14, align 8
  %133 = load i64, i64* %16, align 8
  %134 = getelementptr inbounds double, double* %132, i64 %133
  %135 = bitcast double* %134 to i8*
  %136 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %137 = call i64 @isNull(i8* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %131, %125
  %140 = load double*, double** %15, align 8
  %141 = bitcast double* %140 to i8*
  %142 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tDataTypeDesc, align 8
  %144 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @setNull(i8* %141, i64 %142, i32 %147)
  br label %170

149:                                              ; preds = %131
  %150 = load i64*, i64** %13, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = sitofp i64 %152 to double
  %154 = load i64*, i64** %13, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  %156 = load i64, i64* %155, align 8
  %157 = sitofp i64 %156 to double
  %158 = load double*, double** %14, align 8
  %159 = load i64, i64* %16, align 8
  %160 = getelementptr inbounds double, double* %158, i64 %159
  %161 = load double, double* %160, align 8
  %162 = fdiv double %157, %161
  %163 = load double*, double** %14, align 8
  %164 = load i64, i64* %16, align 8
  %165 = getelementptr inbounds double, double* %163, i64 %164
  %166 = load double, double* %165, align 8
  %167 = fmul double %162, %166
  %168 = fsub double %153, %167
  %169 = load double*, double** %15, align 8
  store double %168, double* %169, align 8
  br label %170

170:                                              ; preds = %149, %139
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* %16, align 8
  %173 = add nsw i64 %172, %171
  store i64 %173, i64* %16, align 8
  %174 = load i64, i64* %17, align 8
  %175 = load double*, double** %15, align 8
  %176 = getelementptr inbounds double, double* %175, i64 %174
  store double* %176, double** %15, align 8
  br label %116

177:                                              ; preds = %123
  br label %245

178:                                              ; preds = %112
  %179 = load i64, i64* %10, align 8
  %180 = icmp eq i64 %179, 1
  br i1 %180, label %181, label %244

181:                                              ; preds = %178
  br label %182

182:                                              ; preds = %236, %181
  %183 = load i64, i64* %16, align 8
  %184 = icmp sge i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i64, i64* %16, align 8
  %187 = load i64, i64* %9, align 8
  %188 = icmp slt i64 %186, %187
  br label %189

189:                                              ; preds = %185, %182
  %190 = phi i1 [ false, %182 ], [ %188, %185 ]
  br i1 %190, label %191, label %243

191:                                              ; preds = %189
  %192 = load i64*, i64** %13, align 8
  %193 = load i64, i64* %16, align 8
  %194 = getelementptr inbounds i64, i64* %192, i64 %193
  %195 = bitcast i64* %194 to i8*
  %196 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %197 = call i64 @isNull(i8* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %191
  %200 = load double*, double** %14, align 8
  %201 = bitcast double* %200 to i8*
  %202 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %203 = call i64 @isNull(i8* %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %199, %191
  %206 = load double*, double** %15, align 8
  %207 = bitcast double* %206 to i8*
  %208 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tDataTypeDesc, align 8
  %210 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @setNull(i8* %207, i64 %208, i32 %213)
  br label %236

215:                                              ; preds = %199
  %216 = load i64*, i64** %13, align 8
  %217 = load i64, i64* %16, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = sitofp i64 %219 to double
  %221 = load i64*, i64** %13, align 8
  %222 = load i64, i64* %16, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = sitofp i64 %224 to double
  %226 = load double*, double** %14, align 8
  %227 = getelementptr inbounds double, double* %226, i64 0
  %228 = load double, double* %227, align 8
  %229 = fdiv double %225, %228
  %230 = load double*, double** %14, align 8
  %231 = getelementptr inbounds double, double* %230, i64 0
  %232 = load double, double* %231, align 8
  %233 = fmul double %229, %232
  %234 = fsub double %220, %233
  %235 = load double*, double** %15, align 8
  store double %234, double* %235, align 8
  br label %236

236:                                              ; preds = %215, %205
  %237 = load i64, i64* %17, align 8
  %238 = load i64, i64* %16, align 8
  %239 = add nsw i64 %238, %237
  store i64 %239, i64* %16, align 8
  %240 = load i64, i64* %17, align 8
  %241 = load double*, double** %15, align 8
  %242 = getelementptr inbounds double, double* %241, i64 %240
  store double* %242, double** %15, align 8
  br label %182

243:                                              ; preds = %189
  br label %244

244:                                              ; preds = %243, %178
  br label %245

245:                                              ; preds = %244, %177
  br label %246

246:                                              ; preds = %245, %111
  ret void
}

declare dso_local i32 @MAX(i64, i64) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local i32 @setNull(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
