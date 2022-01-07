; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_unify_arithmetic_operands.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_unify_arithmetic_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@type_double = common dso_local global i64 0, align 8
@type_float = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unify_arithmetic_operands(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @type_double, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = load i64, i64* @type_double, align 8
  %14 = call i32 @cast_operand(%struct.TYPE_6__* %12, i64 %13)
  br label %222

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @type_double, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = load i64, i64* @type_double, align 8
  %24 = call i32 @cast_operand(%struct.TYPE_6__* %22, i64 %23)
  br label %221

25:                                               ; preds = %15
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @type_float, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = load i64, i64* @type_float, align 8
  %34 = call i32 @cast_operand(%struct.TYPE_6__* %32, i64 %33)
  br label %220

35:                                               ; preds = %25
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @type_float, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = load i64, i64* @type_float, align 8
  %44 = call i32 @cast_operand(%struct.TYPE_6__* %42, i64 %43)
  br label %219

45:                                               ; preds = %35
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @is_integer_type(i64 %48)
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @is_integer_type(i64 %53)
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = call i32 @promote_operand(%struct.TYPE_6__* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = call i32 @promote_operand(%struct.TYPE_6__* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %218

67:                                               ; preds = %45
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @is_signed_type(i64 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @is_signed_type(i64 %74)
  %76 = icmp eq i64 %71, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %67
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @type_rank(i64 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @type_rank(i64 %84)
  %86 = icmp sle i64 %81, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @cast_operand(%struct.TYPE_6__* %88, i64 %91)
  br label %99

93:                                               ; preds = %77
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @cast_operand(%struct.TYPE_6__* %94, i64 %97)
  br label %99

99:                                               ; preds = %93, %87
  br label %217

100:                                              ; preds = %67
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @is_signed_type(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @type_rank(i64 %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @type_rank(i64 %113)
  %115 = icmp sge i64 %110, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %106
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @cast_operand(%struct.TYPE_6__* %117, i64 %120)
  br label %216

122:                                              ; preds = %106, %100
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @is_signed_type(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %122
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @type_rank(i64 %131)
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @type_rank(i64 %135)
  %137 = icmp sge i64 %132, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %128
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @cast_operand(%struct.TYPE_6__* %139, i64 %142)
  br label %215

144:                                              ; preds = %128, %122
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @is_signed_type(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %144
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @type_sizeof(i64 %153)
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @type_sizeof(i64 %157)
  %159 = icmp sgt i64 %154, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %150
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @cast_operand(%struct.TYPE_6__* %161, i64 %164)
  br label %214

166:                                              ; preds = %150, %144
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @is_signed_type(i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %188

172:                                              ; preds = %166
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @type_sizeof(i64 %175)
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @type_sizeof(i64 %179)
  %181 = icmp sgt i64 %176, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %172
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @cast_operand(%struct.TYPE_6__* %183, i64 %186)
  br label %213

188:                                              ; preds = %172, %166
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @is_signed_type(i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  br label %202

198:                                              ; preds = %188
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  br label %202

202:                                              ; preds = %198, %194
  %203 = phi i64 [ %197, %194 ], [ %201, %198 ]
  %204 = call i32* @unsigned_type(i64 %203)
  store i32* %204, i32** %5, align 8
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %206 = load i32*, i32** %5, align 8
  %207 = ptrtoint i32* %206 to i64
  %208 = call i32 @cast_operand(%struct.TYPE_6__* %205, i64 %207)
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %210 = load i32*, i32** %5, align 8
  %211 = ptrtoint i32* %210 to i64
  %212 = call i32 @cast_operand(%struct.TYPE_6__* %209, i64 %211)
  br label %213

213:                                              ; preds = %202, %182
  br label %214

214:                                              ; preds = %213, %160
  br label %215

215:                                              ; preds = %214, %138
  br label %216

216:                                              ; preds = %215, %116
  br label %217

217:                                              ; preds = %216, %99
  br label %218

218:                                              ; preds = %217, %45
  br label %219

219:                                              ; preds = %218, %41
  br label %220

220:                                              ; preds = %219, %31
  br label %221

221:                                              ; preds = %220, %21
  br label %222

222:                                              ; preds = %221, %11
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %225, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @assert(i32 %230)
  ret void
}

declare dso_local i32 @cast_operand(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_integer_type(i64) #1

declare dso_local i32 @promote_operand(%struct.TYPE_6__*) #1

declare dso_local i64 @is_signed_type(i64) #1

declare dso_local i64 @type_rank(i64) #1

declare dso_local i64 @type_sizeof(i64) #1

declare dso_local i32* @unsigned_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
