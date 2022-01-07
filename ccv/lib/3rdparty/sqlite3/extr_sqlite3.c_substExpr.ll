; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_substExpr.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_substExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64, i64, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i64, i64, i64, %struct.TYPE_23__, %struct.TYPE_25__*, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i32, i32 }

@EP_FromJoin = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@TK_NULL = common dso_local global i64 0, align 8
@TK_IF_NULL_ROW = common dso_local global i64 0, align 8
@EP_CanBeNull = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_25__* (%struct.TYPE_24__*, %struct.TYPE_25__*)* @substExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_25__* @substExpr(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %11 = icmp eq %struct.TYPE_25__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %3, align 8
  br label %228

13:                                               ; preds = %2
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %15 = load i32, i32* @EP_FromJoin, align 4
  %16 = call i64 @ExprHasProperty(%struct.TYPE_25__* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %18, %13
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TK_COLUMN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %172

38:                                               ; preds = %32
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %172

46:                                               ; preds = %38
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i64, i64* @TK_NULL, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %171

55:                                               ; preds = %46
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %65, align 8
  store %struct.TYPE_25__* %66, %struct.TYPE_25__** %7, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = icmp ne %struct.TYPE_22__* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %55
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %74, %79
  br label %81

81:                                               ; preds = %71, %55
  %82 = phi i1 [ false, %55 ], [ %80, %71 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 6
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %86, align 8
  %88 = icmp eq %struct.TYPE_25__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %91, align 8
  %93 = icmp eq %struct.TYPE_25__* %92, null
  br label %94

94:                                               ; preds = %89, %81
  %95 = phi i1 [ false, %81 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %99 = call i64 @sqlite3ExprIsVector(%struct.TYPE_25__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %106 = call i32 @sqlite3VectorErrorMsg(%struct.TYPE_20__* %104, %struct.TYPE_25__* %105)
  br label %170

107:                                              ; preds = %94
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %9, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %107
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TK_COLUMN, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = call i32 @memset(%struct.TYPE_25__* %8, i32 0, i32 56)
  %125 = load i64, i64* @TK_IF_NULL_ROW, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  store i64 %125, i64* %126, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 6
  store %struct.TYPE_25__* %127, %struct.TYPE_25__** %128, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 2
  store i64 %131, i64* %132, align 8
  store %struct.TYPE_25__* %8, %struct.TYPE_25__** %7, align 8
  br label %133

133:                                              ; preds = %123, %117, %107
  %134 = load i32*, i32** %9, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %136 = call %struct.TYPE_25__* @sqlite3ExprDup(i32* %134, %struct.TYPE_25__* %135, i32 0)
  store %struct.TYPE_25__* %136, %struct.TYPE_25__** %6, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %138 = icmp ne %struct.TYPE_25__* %137, null
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %146 = load i32, i32* @EP_CanBeNull, align 4
  %147 = call i32 @ExprSetProperty(%struct.TYPE_25__* %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %139, %133
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %150 = icmp ne %struct.TYPE_25__* %149, null
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %153 = load i32, i32* @EP_FromJoin, align 4
  %154 = call i64 @ExprHasProperty(%struct.TYPE_25__* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %151
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %163 = load i32, i32* @EP_FromJoin, align 4
  %164 = call i32 @ExprSetProperty(%struct.TYPE_25__* %162, i32 %163)
  br label %165

165:                                              ; preds = %156, %151, %148
  %166 = load i32*, i32** %9, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %168 = call i32 @sqlite3ExprDelete(i32* %166, %struct.TYPE_25__* %167)
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %169, %struct.TYPE_25__** %5, align 8
  br label %170

170:                                              ; preds = %165, %101
  br label %171

171:                                              ; preds = %170, %51
  br label %226

172:                                              ; preds = %38, %32
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @TK_IF_NULL_ROW, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %192

178:                                              ; preds = %172
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %181, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 2
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %186, %178, %172
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %195, align 8
  %197 = call %struct.TYPE_25__* @substExpr(%struct.TYPE_24__* %193, %struct.TYPE_25__* %196)
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 6
  store %struct.TYPE_25__* %197, %struct.TYPE_25__** %199, align 8
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 5
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %202, align 8
  %204 = call %struct.TYPE_25__* @substExpr(%struct.TYPE_24__* %200, %struct.TYPE_25__* %203)
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 5
  store %struct.TYPE_25__* %204, %struct.TYPE_25__** %206, align 8
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %208 = load i32, i32* @EP_xIsSelect, align 4
  %209 = call i64 @ExprHasProperty(%struct.TYPE_25__* %207, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %192
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @substSelect(%struct.TYPE_24__* %212, i32 %216, i32 1)
  br label %225

218:                                              ; preds = %192
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @substExprList(%struct.TYPE_24__* %219, i32 %223)
  br label %225

225:                                              ; preds = %218, %211
  br label %226

226:                                              ; preds = %225, %171
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %227, %struct.TYPE_25__** %3, align 8
  br label %228

228:                                              ; preds = %226, %12
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  ret %struct.TYPE_25__* %229
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3ExprIsVector(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3VectorErrorMsg(%struct.TYPE_20__*, %struct.TYPE_25__*) #1

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local %struct.TYPE_25__* @sqlite3ExprDup(i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @substSelect(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @substExprList(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
