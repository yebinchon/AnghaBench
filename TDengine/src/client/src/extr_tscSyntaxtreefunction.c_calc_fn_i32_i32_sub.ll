; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSyntaxtreefunction.c_calc_fn_i32_i32_sub.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSyntaxtreefunction.c_calc_fn_i32_i32_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TSQL_SO_ASC = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_INT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i64 0, align 8
@tDataTypeDesc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_fn_i32_i32_sub(i8* %0, i8* %1, i64 %2, i64 %3, i8* %4, i64 %5) #0 {
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
  br i1 %44, label %45, label %104

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %96, %45
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
  br i1 %54, label %55, label %103

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
  br i1 %70, label %71, label %83

71:                                               ; preds = %63, %55
  %72 = load double*, double** %15, align 8
  %73 = load i64, i64* %16, align 8
  %74 = getelementptr inbounds double, double* %72, i64 %73
  %75 = bitcast double* %74 to i8*
  %76 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tDataTypeDesc, align 8
  %78 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @setNull(i8* %75, i64 %76, i32 %81)
  br label %96

83:                                               ; preds = %63
  %84 = load i64*, i64** %13, align 8
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = sitofp i64 %87 to double
  %89 = load i64*, i64** %14, align 8
  %90 = load i64, i64* %16, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = sitofp i64 %92 to double
  %94 = fsub double %88, %93
  %95 = load double*, double** %15, align 8
  store double %94, double* %95, align 8
  br label %96

96:                                               ; preds = %83, %71
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %16, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %16, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load double*, double** %15, align 8
  %102 = getelementptr inbounds double, double* %101, i64 %100
  store double* %102, double** %15, align 8
  br label %46

103:                                              ; preds = %53
  br label %220

104:                                              ; preds = %33
  %105 = load i64, i64* %9, align 8
  %106 = icmp eq i64 %105, 1
  br i1 %106, label %107, label %161

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %153, %107
  %109 = load i64, i64* %16, align 8
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %10, align 8
  %114 = icmp slt i64 %112, %113
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi i1 [ false, %108 ], [ %114, %111 ]
  br i1 %116, label %117, label %160

117:                                              ; preds = %115
  %118 = load i64*, i64** %13, align 8
  %119 = bitcast i64* %118 to i8*
  %120 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %121 = call i64 @isNull(i8* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %117
  %124 = load i64*, i64** %14, align 8
  %125 = load i64, i64* %16, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = bitcast i64* %126 to i8*
  %128 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %129 = call i64 @isNull(i8* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %123, %117
  %132 = load double*, double** %15, align 8
  %133 = bitcast double* %132 to i8*
  %134 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tDataTypeDesc, align 8
  %136 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @setNull(i8* %133, i64 %134, i32 %139)
  br label %153

141:                                              ; preds = %123
  %142 = load i64*, i64** %13, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = sitofp i64 %144 to double
  %146 = load i64*, i64** %14, align 8
  %147 = load i64, i64* %16, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = sitofp i64 %149 to double
  %151 = fsub double %145, %150
  %152 = load double*, double** %15, align 8
  store double %151, double* %152, align 8
  br label %153

153:                                              ; preds = %141, %131
  %154 = load i64, i64* %17, align 8
  %155 = load i64, i64* %16, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %16, align 8
  %157 = load i64, i64* %17, align 8
  %158 = load double*, double** %15, align 8
  %159 = getelementptr inbounds double, double* %158, i64 %157
  store double* %159, double** %15, align 8
  br label %108

160:                                              ; preds = %115
  br label %219

161:                                              ; preds = %104
  %162 = load i64, i64* %10, align 8
  %163 = icmp eq i64 %162, 1
  br i1 %163, label %164, label %218

164:                                              ; preds = %161
  br label %165

165:                                              ; preds = %210, %164
  %166 = load i64, i64* %16, align 8
  %167 = icmp sge i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* %9, align 8
  %171 = icmp slt i64 %169, %170
  br label %172

172:                                              ; preds = %168, %165
  %173 = phi i1 [ false, %165 ], [ %171, %168 ]
  br i1 %173, label %174, label %217

174:                                              ; preds = %172
  %175 = load i64*, i64** %13, align 8
  %176 = load i64, i64* %16, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = bitcast i64* %177 to i8*
  %179 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %180 = call i64 @isNull(i8* %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %174
  %183 = load i64*, i64** %14, align 8
  %184 = bitcast i64* %183 to i8*
  %185 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %186 = call i64 @isNull(i8* %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %182, %174
  %189 = load double*, double** %15, align 8
  %190 = bitcast double* %189 to i8*
  %191 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tDataTypeDesc, align 8
  %193 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @setNull(i8* %190, i64 %191, i32 %196)
  br label %210

198:                                              ; preds = %182
  %199 = load i64*, i64** %13, align 8
  %200 = load i64, i64* %16, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = sitofp i64 %202 to double
  %204 = load i64*, i64** %14, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 0
  %206 = load i64, i64* %205, align 8
  %207 = sitofp i64 %206 to double
  %208 = fsub double %203, %207
  %209 = load double*, double** %15, align 8
  store double %208, double* %209, align 8
  br label %210

210:                                              ; preds = %198, %188
  %211 = load i64, i64* %17, align 8
  %212 = load i64, i64* %16, align 8
  %213 = add nsw i64 %212, %211
  store i64 %213, i64* %16, align 8
  %214 = load i64, i64* %17, align 8
  %215 = load double*, double** %15, align 8
  %216 = getelementptr inbounds double, double* %215, i64 %214
  store double* %216, double** %15, align 8
  br label %165

217:                                              ; preds = %172
  br label %218

218:                                              ; preds = %217, %161
  br label %219

219:                                              ; preds = %218, %160
  br label %220

220:                                              ; preds = %219, %103
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
