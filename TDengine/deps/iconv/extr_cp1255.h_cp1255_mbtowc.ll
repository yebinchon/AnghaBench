; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1255.h_cp1255_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1255.h_cp1255_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i16, i16 }
%struct.TYPE_5__ = type { i16 }

@cp1255_2uni = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@cp1255_comp_table = common dso_local global %struct.TYPE_7__* null, align 8
@cp1255_comp_table_data = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64*, i8*, i32)* @cp1255_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1255_mbtowc(%struct.TYPE_5__* %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %10, align 1
  %19 = load i8, i8* %10, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i16
  store i16 %24, i16* %11, align 2
  br label %39

25:                                               ; preds = %4
  %26 = load i16*, i16** @cp1255_2uni, align 8
  %27 = load i8, i8* %10, align 1
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %28, 128
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %26, i64 %30
  %32 = load i16, i16* %31, align 2
  store i16 %32, i16* %11, align 2
  %33 = load i16, i16* %11, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %34, 65533
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %37, i32* %5, align 4
  br label %224

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i16, i16* %41, align 2
  store i16 %42, i16* %12, align 2
  %43 = load i16, i16* %12, align 2
  %44 = icmp ne i16 %43, 0
  br i1 %44, label %45, label %196

45:                                               ; preds = %39
  %46 = load i16, i16* %11, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp sge i32 %47, 1456
  br i1 %48, label %49, label %189

49:                                               ; preds = %45
  %50 = load i16, i16* %11, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp slt i32 %51, 1477
  br i1 %52, label %53, label %189

53:                                               ; preds = %49
  %54 = load i16, i16* %11, align 2
  %55 = zext i16 %54 to i32
  switch i32 %55, label %64 [
    i32 1460, label %56
    i32 1463, label %57
    i32 1464, label %58
    i32 1465, label %59
    i32 1468, label %60
    i32 1471, label %61
    i32 1473, label %62
    i32 1474, label %63
  ]

56:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %65

57:                                               ; preds = %53
  store i32 1, i32* %13, align 4
  br label %65

58:                                               ; preds = %53
  store i32 2, i32* %13, align 4
  br label %65

59:                                               ; preds = %53
  store i32 3, i32* %13, align 4
  br label %65

60:                                               ; preds = %53
  store i32 4, i32* %13, align 4
  br label %65

61:                                               ; preds = %53
  store i32 5, i32* %13, align 4
  br label %65

62:                                               ; preds = %53
  store i32 6, i32* %13, align 4
  br label %65

63:                                               ; preds = %53
  store i32 7, i32* %13, align 4
  br label %65

64:                                               ; preds = %53
  br label %190

65:                                               ; preds = %63, %62, %61, %60, %59, %58, %57, %56
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cp1255_comp_table, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cp1255_comp_table, align 8
  %74 = load i32, i32* %13, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add i32 %72, %78
  %80 = sub i32 %79, 1
  store i32 %80, i32* %15, align 4
  %81 = load i16, i16* %12, align 2
  %82 = zext i16 %81 to i32
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cp1255_comp_table_data, align 8
  %84 = load i32, i32* %14, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i16, i16* %87, align 2
  %89 = zext i16 %88 to i32
  %90 = icmp sge i32 %82, %89
  br i1 %90, label %91, label %188

91:                                               ; preds = %65
  %92 = load i16, i16* %12, align 2
  %93 = zext i16 %92 to i32
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cp1255_comp_table_data, align 8
  %95 = load i32, i32* %15, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i16, i16* %98, align 2
  %100 = zext i16 %99 to i32
  %101 = icmp sle i32 %93, %100
  br i1 %101, label %102, label %188

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %158, %102
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add i32 %104, %105
  %107 = lshr i32 %106, 1
  store i32 %107, i32* %16, align 4
  %108 = load i16, i16* %12, align 2
  %109 = zext i16 %108 to i32
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cp1255_comp_table_data, align 8
  %111 = load i32, i32* %16, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i16, i16* %114, align 2
  %116 = zext i16 %115 to i32
  %117 = icmp eq i32 %109, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  br label %159

119:                                              ; preds = %103
  %120 = load i16, i16* %12, align 2
  %121 = zext i16 %120 to i32
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cp1255_comp_table_data, align 8
  %123 = load i32, i32* %16, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i16, i16* %126, align 2
  %128 = zext i16 %127 to i32
  %129 = icmp slt i32 %121, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %119
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %190

135:                                              ; preds = %130
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %15, align 4
  br label %158

137:                                              ; preds = %119
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %14, align 4
  br label %157

143:                                              ; preds = %137
  %144 = load i32, i32* %15, align 4
  store i32 %144, i32* %16, align 4
  %145 = load i16, i16* %12, align 2
  %146 = zext i16 %145 to i32
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cp1255_comp_table_data, align 8
  %148 = load i32, i32* %16, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i16, i16* %151, align 2
  %153 = zext i16 %152 to i32
  %154 = icmp eq i32 %146, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %143
  br label %159

156:                                              ; preds = %143
  br label %190

157:                                              ; preds = %141
  br label %158

158:                                              ; preds = %157, %135
  br label %103

159:                                              ; preds = %155, %118
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cp1255_comp_table_data, align 8
  %161 = load i32, i32* %16, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i16, i16* %164, align 2
  store i16 %165, i16* %12, align 2
  %166 = load i16, i16* %12, align 2
  %167 = zext i16 %166 to i32
  %168 = icmp eq i32 %167, 64298
  br i1 %168, label %177, label %169

169:                                              ; preds = %159
  %170 = load i16, i16* %12, align 2
  %171 = zext i16 %170 to i32
  %172 = icmp eq i32 %171, 64299
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load i16, i16* %12, align 2
  %175 = zext i16 %174 to i32
  %176 = icmp eq i32 %175, 64329
  br i1 %176, label %177, label %182

177:                                              ; preds = %173, %169, %159
  %178 = load i16, i16* %12, align 2
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  store i16 %178, i16* %180, align 2
  %181 = call i32 @RET_TOOFEW(i32 1)
  store i32 %181, i32* %5, align 4
  br label %224

182:                                              ; preds = %173
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  store i16 0, i16* %184, align 2
  %185 = load i16, i16* %12, align 2
  %186 = zext i16 %185 to i64
  %187 = load i64*, i64** %7, align 8
  store i64 %186, i64* %187, align 8
  store i32 1, i32* %5, align 4
  br label %224

188:                                              ; preds = %91, %65
  br label %189

189:                                              ; preds = %188, %49, %45
  br label %190

190:                                              ; preds = %189, %156, %134, %64
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  store i16 0, i16* %192, align 2
  %193 = load i16, i16* %12, align 2
  %194 = zext i16 %193 to i64
  %195 = load i64*, i64** %7, align 8
  store i64 %194, i64* %195, align 8
  store i32 0, i32* %5, align 4
  br label %224

196:                                              ; preds = %39
  %197 = load i16, i16* %11, align 2
  %198 = zext i16 %197 to i32
  %199 = icmp sge i32 %198, 1488
  br i1 %199, label %200, label %211

200:                                              ; preds = %196
  %201 = load i16, i16* %11, align 2
  %202 = zext i16 %201 to i32
  %203 = icmp sle i32 %202, 1514
  br i1 %203, label %204, label %211

204:                                              ; preds = %200
  %205 = load i16, i16* %11, align 2
  %206 = zext i16 %205 to i32
  %207 = sub nsw i32 %206, 1488
  %208 = ashr i32 131817343, %207
  %209 = and i32 %208, 1
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %204, %200, %196
  %212 = load i16, i16* %11, align 2
  %213 = zext i16 %212 to i32
  %214 = icmp eq i32 %213, 1522
  br i1 %214, label %215, label %220

215:                                              ; preds = %211, %204
  %216 = load i16, i16* %11, align 2
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  store i16 %216, i16* %218, align 2
  %219 = call i32 @RET_TOOFEW(i32 1)
  store i32 %219, i32* %5, align 4
  br label %224

220:                                              ; preds = %211
  %221 = load i16, i16* %11, align 2
  %222 = zext i16 %221 to i64
  %223 = load i64*, i64** %7, align 8
  store i64 %222, i64* %223, align 8
  store i32 1, i32* %5, align 4
  br label %224

224:                                              ; preds = %220, %215, %190, %182, %177, %36
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
