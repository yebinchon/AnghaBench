; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscPrepare.c_insertStmtBindParam.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscPrepare.c_insertStmtBindParam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64, i64, i8*, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"param %d: type mismatch or invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @insertStmtBindParam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insertStmtBindParam(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %6, align 8
  store i64 1, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  %36 = sdiv i32 %35, 2
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %7, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 2
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %31, %2
  store i64 0, i64* %9, align 8
  br label %44

44:                                               ; preds = %156, %43
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %45, %50
  br i1 %51, label %52, label %159

52:                                               ; preds = %44
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %57, i64 %58
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %10, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %63, 8
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %7, align 8
  %67 = udiv i64 %65, %66
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %7, align 8
  %70 = mul i64 %68, %69
  %71 = load i64, i64* %11, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %52
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, 8
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %83, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %78
  store double 1.500000e+00, double* %13, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = uitofp i64 %92 to double
  %94 = fmul double %93, 1.500000e+00
  %95 = fptoui double %94 to i64
  %96 = call i8* @realloc(i8* %91, i64 %95)
  store i8* %96, i8** %14, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  store i32 %100, i32* %3, align 4
  br label %218

101:                                              ; preds = %88
  %102 = load i8*, i8** %14, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load i64, i64* %11, align 8
  %106 = uitofp i64 %105 to double
  %107 = fmul double %106, 1.500000e+00
  %108 = fptoui double %107 to i64
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %101, %78
  br label %112

112:                                              ; preds = %111, %52
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 8
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %8, align 8
  %119 = mul i64 %117, %118
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8* %120, i8** %15, align 8
  store i64 0, i64* %16, align 8
  br label %121

121:                                              ; preds = %152, %112
  %122 = load i64, i64* %16, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ult i64 %122, %125
  br i1 %126, label %127, label %155

127:                                              ; preds = %121
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = load i64, i64* %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i64 %131
  store %struct.TYPE_16__* %132, %struct.TYPE_16__** %17, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = call i32 @doBindParam(i8* %133, %struct.TYPE_16__* %134, i32* %140)
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %127
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @tscTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %18, align 4
  store i32 %150, i32* %3, align 4
  br label %218

151:                                              ; preds = %127
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* %16, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %16, align 8
  br label %121

155:                                              ; preds = %121
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %9, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %9, align 8
  br label %44

159:                                              ; preds = %44
  %160 = load i64, i64* %8, align 8
  %161 = mul i64 %160, 2
  %162 = add i64 %161, 1
  %163 = trunc i64 %162 to i32
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i64, i64* %8, align 8
  %167 = load i64, i64* %7, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %159
  %170 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %170, i32* %3, align 4
  br label %218

171:                                              ; preds = %159
  store i64 0, i64* %19, align 8
  br label %172

172:                                              ; preds = %213, %171
  %173 = load i64, i64* %19, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ult i64 %173, %178
  br i1 %179, label %180, label %216

180:                                              ; preds = %172
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %184, align 8
  %186 = load i64, i64* %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %185, i64 %186
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  store %struct.TYPE_13__* %188, %struct.TYPE_13__** %20, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = sub i64 %191, 8
  store i64 %192, i64* %21, align 8
  %193 = load i64, i64* %21, align 8
  %194 = load i64, i64* %7, align 8
  %195 = udiv i64 %193, %194
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, %195
  store i64 %199, i64* %197, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = bitcast i8* %202 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %203, %struct.TYPE_15__** %22, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %7, align 8
  %208 = udiv i64 %206, %207
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %211, %208
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %180
  %214 = load i64, i64* %19, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %19, align 8
  br label %172

216:                                              ; preds = %172
  %217 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %216, %169, %145, %99
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @doBindParam(i8*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @tscTrace(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
