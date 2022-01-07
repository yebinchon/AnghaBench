; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSyntaxtreefunction.c_calc_fn_i32_i32_add.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSyntaxtreefunction.c_calc_fn_i32_i32_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TSQL_SO_ASC = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_INT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i64 0, align 8
@tDataTypeDesc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_fn_i32_i32_add(i8* %0, i8* %1, i64 %2, i64 %3, i8* %4, i64 %5) #0 {
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
  br i1 %44, label %45, label %102

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %94, %45
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
  br i1 %54, label %55, label %101

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
  br label %94

81:                                               ; preds = %63
  %82 = load i64*, i64** %13, align 8
  %83 = load i64, i64* %16, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = sitofp i64 %85 to double
  %87 = load i64*, i64** %14, align 8
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = sitofp i64 %90 to double
  %92 = fadd double %86, %91
  %93 = load double*, double** %15, align 8
  store double %92, double* %93, align 8
  br label %94

94:                                               ; preds = %81, %71
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* %16, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %16, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load double*, double** %15, align 8
  %100 = getelementptr inbounds double, double* %99, i64 %98
  store double* %100, double** %15, align 8
  br label %46

101:                                              ; preds = %53
  br label %218

102:                                              ; preds = %33
  %103 = load i64, i64* %9, align 8
  %104 = icmp eq i64 %103, 1
  br i1 %104, label %105, label %159

105:                                              ; preds = %102
  br label %106

106:                                              ; preds = %151, %105
  %107 = load i64, i64* %16, align 8
  %108 = icmp sge i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp slt i64 %110, %111
  br label %113

113:                                              ; preds = %109, %106
  %114 = phi i1 [ false, %106 ], [ %112, %109 ]
  br i1 %114, label %115, label %158

115:                                              ; preds = %113
  %116 = load i64*, i64** %13, align 8
  %117 = bitcast i64* %116 to i8*
  %118 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %119 = call i64 @isNull(i8* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %115
  %122 = load i64*, i64** %14, align 8
  %123 = load i64, i64* %16, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = bitcast i64* %124 to i8*
  %126 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %127 = call i64 @isNull(i8* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %121, %115
  %130 = load double*, double** %15, align 8
  %131 = bitcast double* %130 to i8*
  %132 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tDataTypeDesc, align 8
  %134 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @setNull(i8* %131, i64 %132, i32 %137)
  br label %151

139:                                              ; preds = %121
  %140 = load i64*, i64** %13, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  %142 = load i64, i64* %141, align 8
  %143 = sitofp i64 %142 to double
  %144 = load i64*, i64** %14, align 8
  %145 = load i64, i64* %16, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = sitofp i64 %147 to double
  %149 = fadd double %143, %148
  %150 = load double*, double** %15, align 8
  store double %149, double* %150, align 8
  br label %151

151:                                              ; preds = %139, %129
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* %16, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %16, align 8
  %155 = load i64, i64* %17, align 8
  %156 = load double*, double** %15, align 8
  %157 = getelementptr inbounds double, double* %156, i64 %155
  store double* %157, double** %15, align 8
  br label %106

158:                                              ; preds = %113
  br label %217

159:                                              ; preds = %102
  %160 = load i64, i64* %10, align 8
  %161 = icmp eq i64 %160, 1
  br i1 %161, label %162, label %216

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %208, %162
  %164 = load i64, i64* %16, align 8
  %165 = icmp sge i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i64, i64* %16, align 8
  %168 = load i64, i64* %9, align 8
  %169 = icmp slt i64 %167, %168
  br label %170

170:                                              ; preds = %166, %163
  %171 = phi i1 [ false, %163 ], [ %169, %166 ]
  br i1 %171, label %172, label %215

172:                                              ; preds = %170
  %173 = load i64*, i64** %13, align 8
  %174 = load i64, i64* %16, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = bitcast i64* %175 to i8*
  %177 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %178 = call i64 @isNull(i8* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %172
  %181 = load i64*, i64** %14, align 8
  %182 = bitcast i64* %181 to i8*
  %183 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %184 = call i64 @isNull(i8* %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %180, %172
  %187 = load double*, double** %15, align 8
  %188 = bitcast double* %187 to i8*
  %189 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tDataTypeDesc, align 8
  %191 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @setNull(i8* %188, i64 %189, i32 %194)
  br label %208

196:                                              ; preds = %180
  %197 = load i64*, i64** %13, align 8
  %198 = load i64, i64* %16, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = sitofp i64 %200 to double
  %202 = load i64*, i64** %14, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 0
  %204 = load i64, i64* %203, align 8
  %205 = sitofp i64 %204 to double
  %206 = fadd double %201, %205
  %207 = load double*, double** %15, align 8
  store double %206, double* %207, align 8
  br label %208

208:                                              ; preds = %196, %186
  %209 = load i64, i64* %17, align 8
  %210 = load i64, i64* %16, align 8
  %211 = add nsw i64 %210, %209
  store i64 %211, i64* %16, align 8
  %212 = load i64, i64* %17, align 8
  %213 = load double*, double** %15, align 8
  %214 = getelementptr inbounds double, double* %213, i64 %212
  store double* %214, double** %15, align 8
  br label %163

215:                                              ; preds = %170
  br label %216

216:                                              ; preds = %215, %159
  br label %217

217:                                              ; preds = %216, %158
  br label %218

218:                                              ; preds = %217, %101
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
