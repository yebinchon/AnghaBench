; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tsParseTime.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tsParseTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i32 }

@TK_NOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@TK_INTEGER = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@TK_MINUS = common dso_local global i64 0, align 8
@TK_PLUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"value is expected\00", align 1
@TSDB_TIME_PRECISION_MILLI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsParseTime(%struct.TYPE_4__* %0, i32* %1, i8** %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__, align 8
  %21 = alloca %struct.TYPE_4__, align 8
  %22 = alloca %struct.TYPE_4__, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %17, align 4
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %18, align 8
  store i64 0, i64* %14, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TK_NOW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @taosGetTimestamp(i64 %31)
  store i32 %32, i32* %17, align 4
  br label %75

33:                                               ; preds = %5
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %74

45:                                               ; preds = %39, %33
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TK_INTEGER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @str2int64(i8* %54)
  store i32 %55, i32* %17, align 4
  br label %73

56:                                               ; preds = %45
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @taosParseTime(i8* %59, i32* %60, i32 %63, i64 %64)
  %66 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %69, i32* %6, align 4
  br label %204

70:                                               ; preds = %56
  %71 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %204

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %73, %44
  br label %75

75:                                               ; preds = %74, %30
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %19, align 4
  br label %79

79:                                               ; preds = %126, %75
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %129

89:                                               ; preds = %79
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %109, label %99

99:                                               ; preds = %89
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %19, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 9
  br i1 %108, label %109, label %110

109:                                              ; preds = %99, %89
  br label %126

110:                                              ; preds = %99
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 44
  br i1 %119, label %120, label %125

120:                                              ; preds = %110
  %121 = load i8*, i8** %18, align 8
  %122 = load i8**, i8*** %9, align 8
  store i8* %121, i8** %122, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load i32*, i32** %8, align 8
  store i32 %123, i32* %124, align 4
  store i32 0, i32* %6, align 4
  br label %204

125:                                              ; preds = %110
  br label %129

126:                                              ; preds = %109
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %19, align 4
  br label %79

129:                                              ; preds = %125, %79
  store i64 0, i64* %14, align 8
  %130 = load i8*, i8** %18, align 8
  call void @tStrGetToken(%struct.TYPE_4__* sret %21, i8* %130, i64* %14, i32 0, i32 0, i32* null)
  %131 = bitcast %struct.TYPE_4__* %15 to i8*
  %132 = bitcast %struct.TYPE_4__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 24, i1 false)
  %133 = load i64, i64* %14, align 8
  %134 = load i8*, i8** %18, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 %133
  store i8* %135, i8** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @TK_MINUS, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %145, label %140

140:                                              ; preds = %129
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @TK_PLUS, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %199

145:                                              ; preds = %140, %129
  store i64 0, i64* %14, align 8
  %146 = load i8*, i8** %18, align 8
  call void @tStrGetToken(%struct.TYPE_4__* sret %22, i8* %146, i64* %14, i32 0, i32 0, i32* null)
  %147 = bitcast %struct.TYPE_4__* %20 to i8*
  %148 = bitcast %struct.TYPE_4__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 24, i1 false)
  %149 = load i64, i64* %14, align 8
  %150 = load i8*, i8** %18, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 %149
  store i8* %151, i8** %18, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %153, 2
  br i1 %154, label %155, label %159

155:                                              ; preds = %145
  %156 = load i8*, i8** %10, align 8
  %157 = call i32 @strcpy(i8* %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %158 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %158, i32* %6, align 4
  br label %204

159:                                              ; preds = %145
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @getTimestampInUsFromStr(i8* %161, i32 %163, i32* %16)
  %165 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %168, i32* %6, align 4
  br label %204

169:                                              ; preds = %159
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* @TSDB_TIME_PRECISION_MILLI, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* %16, align 4
  %175 = sdiv i32 %174, 1000
  store i32 %175, i32* %16, align 4
  br label %176

176:                                              ; preds = %173, %169
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @TK_PLUS, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %17, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %17, align 4
  br label %196

185:                                              ; preds = %176
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* %16, align 4
  %188 = icmp sge i32 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %16, align 4
  %192 = sub nsw i32 %190, %191
  br label %194

193:                                              ; preds = %185
  br label %194

194:                                              ; preds = %193, %189
  %195 = phi i32 [ %192, %189 ], [ 0, %193 ]
  store i32 %195, i32* %17, align 4
  br label %196

196:                                              ; preds = %194, %181
  %197 = load i8*, i8** %18, align 8
  %198 = load i8**, i8*** %9, align 8
  store i8* %197, i8** %198, align 8
  br label %199

199:                                              ; preds = %196, %140
  %200 = load i32, i32* %17, align 4
  %201 = load i32*, i32** %8, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %6, align 4
  br label %204

204:                                              ; preds = %199, %167, %155, %120, %70, %68
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i32 @taosGetTimestamp(i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @str2int64(i8*) #1

declare dso_local i64 @taosParseTime(i8*, i32*, i32, i64) #1

declare dso_local void @tStrGetToken(%struct.TYPE_4__* sret, i8*, i64*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @getTimestampInUsFromStr(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
