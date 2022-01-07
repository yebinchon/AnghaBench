; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_disableFunctForSuppleScan.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_disableFunctForSuppleScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_16__, %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@TSDB_FUNC_FIRST = common dso_local global i64 0, align 8
@TSDB_FUNC_FIRST_DST = common dso_local global i64 0, align 8
@TSQL_SO_DESC = common dso_local global i64 0, align 8
@TSDB_FUNC_LAST = common dso_local global i64 0, align 8
@TSDB_FUNC_LAST_DST = common dso_local global i64 0, align 8
@TSQL_SO_ASC = common dso_local global i64 0, align 8
@TSDB_FUNC_TS = common dso_local global i64 0, align 8
@TSDB_FUNC_TAG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disableFunctForSuppleScan(%struct.TYPE_18__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @isGroupbyNormalCol(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %130

22:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %36, 1
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %29
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %23

47:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  br label %48

48:                                               ; preds = %126, %47
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %129

54:                                               ; preds = %48
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i64 %58
  store %struct.TYPE_20__* %59, %struct.TYPE_20__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %60

60:                                               ; preds = %122, %54
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %125

66:                                               ; preds = %60
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @TSDB_FUNC_FIRST, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %66
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @TSDB_FUNC_FIRST_DST, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78, %66
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @TSQL_SO_DESC, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %82, %78
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @TSDB_FUNC_LAST, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @TSDB_FUNC_LAST_DST, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %90, %86
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @TSQL_SO_ASC, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94, %82
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 4
  br label %121

105:                                              ; preds = %94, %90
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @TSDB_FUNC_TS, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @TSDB_FUNC_TAG, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %113, %109, %105
  br label %121

121:                                              ; preds = %120, %98
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %9, align 8
  br label %60

125:                                              ; preds = %60
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %7, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %7, align 8
  br label %48

129:                                              ; preds = %48
  br label %209

130:                                              ; preds = %2
  store i64 0, i64* %11, align 8
  br label %131

131:                                              ; preds = %205, %130
  %132 = load i64, i64* %11, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ult i64 %132, %135
  br i1 %136, label %137, label %208

137:                                              ; preds = %131
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load i64, i64* %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = xor i32 %144, 1
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = load i64, i64* %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  store i32 %145, i32* %151, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = load i64, i64* %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %12, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = load i64, i64* %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i64 %163
  %165 = call %struct.TYPE_17__* @GET_RES_INFO(%struct.TYPE_12__* %164)
  store %struct.TYPE_17__* %165, %struct.TYPE_17__** %13, align 8
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* @TSDB_FUNC_FIRST, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %137
  %170 = load i64, i64* %12, align 8
  %171 = load i64, i64* @TSDB_FUNC_FIRST_DST, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169, %137
  %174 = load i64, i64* %4, align 8
  %175 = load i64, i64* @TSQL_SO_DESC, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %189, label %177

177:                                              ; preds = %173, %169
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* @TSDB_FUNC_LAST, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = load i64, i64* %12, align 8
  %183 = load i64, i64* @TSDB_FUNC_LAST_DST, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %181, %177
  %186 = load i64, i64* %4, align 8
  %187 = load i64, i64* @TSQL_SO_ASC, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %185, %173
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  store i32 0, i32* %191, align 4
  br label %204

192:                                              ; preds = %185, %181
  %193 = load i64, i64* %12, align 8
  %194 = load i64, i64* @TSDB_FUNC_TS, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  %197 = load i64, i64* %12, align 8
  %198 = load i64, i64* @TSDB_FUNC_TAG, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  store i32 1, i32* %202, align 4
  br label %203

203:                                              ; preds = %200, %196, %192
  br label %204

204:                                              ; preds = %203, %189
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %11, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %11, align 8
  br label %131

208:                                              ; preds = %131
  br label %209

209:                                              ; preds = %208, %129
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = xor i32 %213, 1
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  store i32 %214, i32* %217, align 8
  ret void
}

declare dso_local i64 @isGroupbyNormalCol(i32) #1

declare dso_local %struct.TYPE_17__* @GET_RES_INFO(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
