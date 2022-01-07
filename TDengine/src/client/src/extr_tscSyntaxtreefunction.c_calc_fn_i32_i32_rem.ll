; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSyntaxtreefunction.c_calc_fn_i32_i32_rem.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSyntaxtreefunction.c_calc_fn_i32_i32_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TSQL_SO_ASC = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_INT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i64 0, align 8
@tDataTypeDesc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_fn_i32_i32_rem(i8* %0, i8* %1, i64 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
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
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %14, align 8
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
  br i1 %44, label %45, label %115

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %107, %45
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
  br i1 %54, label %55, label %114

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
  %64 = load i64*, i64** %14, align 8
  %65 = load i64, i64* %16, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = bitcast i64* %66 to i8*
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
  br label %107

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
  %92 = load i64*, i64** %14, align 8
  %93 = load i64, i64* %16, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = sitofp i64 %95 to double
  %97 = fdiv double %91, %96
  %98 = fptosi double %97 to i64
  %99 = load i64*, i64** %14, align 8
  %100 = load i64, i64* %16, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = mul nsw i64 %98, %102
  %104 = sitofp i64 %103 to double
  %105 = fsub double %86, %104
  %106 = load double*, double** %15, align 8
  store double %105, double* %106, align 8
  br label %107

107:                                              ; preds = %81, %71
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %16, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %16, align 8
  %111 = load i64, i64* %17, align 8
  %112 = load double*, double** %15, align 8
  %113 = getelementptr inbounds double, double* %112, i64 %111
  store double* %113, double** %15, align 8
  br label %46

114:                                              ; preds = %53
  br label %255

115:                                              ; preds = %33
  %116 = load i64, i64* %9, align 8
  %117 = icmp eq i64 %116, 1
  br i1 %117, label %118, label %184

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %176, %118
  %120 = load i64, i64* %16, align 8
  %121 = icmp sge i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %10, align 8
  %125 = icmp slt i64 %123, %124
  br label %126

126:                                              ; preds = %122, %119
  %127 = phi i1 [ false, %119 ], [ %125, %122 ]
  br i1 %127, label %128, label %183

128:                                              ; preds = %126
  %129 = load i64*, i64** %13, align 8
  %130 = bitcast i64* %129 to i8*
  %131 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %132 = call i64 @isNull(i8* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %128
  %135 = load i64*, i64** %14, align 8
  %136 = load i64, i64* %16, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = bitcast i64* %137 to i8*
  %139 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %140 = call i64 @isNull(i8* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %134, %128
  %143 = load double*, double** %15, align 8
  %144 = bitcast double* %143 to i8*
  %145 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tDataTypeDesc, align 8
  %147 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @setNull(i8* %144, i64 %145, i32 %150)
  br label %176

152:                                              ; preds = %134
  %153 = load i64*, i64** %13, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = load i64, i64* %154, align 8
  %156 = sitofp i64 %155 to double
  %157 = load i64*, i64** %13, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  %159 = load i64, i64* %158, align 8
  %160 = sitofp i64 %159 to double
  %161 = load i64*, i64** %14, align 8
  %162 = load i64, i64* %16, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = sitofp i64 %164 to double
  %166 = fdiv double %160, %165
  %167 = fptosi double %166 to i64
  %168 = load i64*, i64** %14, align 8
  %169 = load i64, i64* %16, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = mul nsw i64 %167, %171
  %173 = sitofp i64 %172 to double
  %174 = fsub double %156, %173
  %175 = load double*, double** %15, align 8
  store double %174, double* %175, align 8
  br label %176

176:                                              ; preds = %152, %142
  %177 = load i64, i64* %17, align 8
  %178 = load i64, i64* %16, align 8
  %179 = add nsw i64 %178, %177
  store i64 %179, i64* %16, align 8
  %180 = load i64, i64* %17, align 8
  %181 = load double*, double** %15, align 8
  %182 = getelementptr inbounds double, double* %181, i64 %180
  store double* %182, double** %15, align 8
  br label %119

183:                                              ; preds = %126
  br label %254

184:                                              ; preds = %115
  %185 = load i64, i64* %10, align 8
  %186 = icmp eq i64 %185, 1
  br i1 %186, label %187, label %253

187:                                              ; preds = %184
  br label %188

188:                                              ; preds = %245, %187
  %189 = load i64, i64* %16, align 8
  %190 = icmp sge i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i64, i64* %16, align 8
  %193 = load i64, i64* %9, align 8
  %194 = icmp slt i64 %192, %193
  br label %195

195:                                              ; preds = %191, %188
  %196 = phi i1 [ false, %188 ], [ %194, %191 ]
  br i1 %196, label %197, label %252

197:                                              ; preds = %195
  %198 = load i64*, i64** %13, align 8
  %199 = load i64, i64* %16, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = bitcast i64* %200 to i8*
  %202 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %203 = call i64 @isNull(i8* %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %197
  %206 = load i64*, i64** %14, align 8
  %207 = bitcast i64* %206 to i8*
  %208 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %209 = call i64 @isNull(i8* %207, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %205, %197
  %212 = load double*, double** %15, align 8
  %213 = bitcast double* %212 to i8*
  %214 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tDataTypeDesc, align 8
  %216 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @setNull(i8* %213, i64 %214, i32 %219)
  br label %245

221:                                              ; preds = %205
  %222 = load i64*, i64** %13, align 8
  %223 = load i64, i64* %16, align 8
  %224 = getelementptr inbounds i64, i64* %222, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = sitofp i64 %225 to double
  %227 = load i64*, i64** %13, align 8
  %228 = load i64, i64* %16, align 8
  %229 = getelementptr inbounds i64, i64* %227, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = sitofp i64 %230 to double
  %232 = load i64*, i64** %14, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 0
  %234 = load i64, i64* %233, align 8
  %235 = sitofp i64 %234 to double
  %236 = fdiv double %231, %235
  %237 = fptosi double %236 to i64
  %238 = load i64*, i64** %14, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 0
  %240 = load i64, i64* %239, align 8
  %241 = mul nsw i64 %237, %240
  %242 = sitofp i64 %241 to double
  %243 = fsub double %226, %242
  %244 = load double*, double** %15, align 8
  store double %243, double* %244, align 8
  br label %245

245:                                              ; preds = %221, %211
  %246 = load i64, i64* %17, align 8
  %247 = load i64, i64* %16, align 8
  %248 = add nsw i64 %247, %246
  store i64 %248, i64* %16, align 8
  %249 = load i64, i64* %17, align 8
  %250 = load double*, double** %15, align 8
  %251 = getelementptr inbounds double, double* %250, i64 %249
  store double* %251, double** %15, align 8
  br label %188

252:                                              ; preds = %195
  br label %253

253:                                              ; preds = %252, %184
  br label %254

254:                                              ; preds = %253, %183
  br label %255

255:                                              ; preds = %254, %114
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
