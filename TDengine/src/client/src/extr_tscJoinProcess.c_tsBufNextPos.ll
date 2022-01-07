; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufNextPos.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufNextPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_18__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@TSQL_SO_ASC = common dso_local global i64 0, align 8
@TSDB_KEYSIZE = common dso_local global i32 0, align 4
@TSQL_SO_DESC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsBufNextPos(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = icmp eq %struct.TYPE_19__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %249

21:                                               ; preds = %15
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %4, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %89

28:                                               ; preds = %21
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TSQL_SO_ASC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %36 = call i32 @tsBufGetBlock(%struct.TYPE_19__* %35, i32 0, i32 0)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %44 = call i32 @tsBufResetPos(%struct.TYPE_19__* %43)
  store i32 0, i32* %2, align 4
  br label %249

45:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %249

46:                                               ; preds = %28
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call %struct.TYPE_17__* @tsBufGetVnodeBlockInfo(%struct.TYPE_19__* %62, i32 %63)
  store %struct.TYPE_17__* %64, %struct.TYPE_17__** %7, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @tsBufGetBlock(%struct.TYPE_19__* %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %46
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = call i32 @tsBufResetPos(%struct.TYPE_19__* %86)
  store i32 0, i32* %2, align 4
  br label %249

88:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %249

89:                                               ; preds = %21
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TSQL_SO_ASC, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 -1
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %89
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TSDB_KEYSIZE, align 4
  %107 = mul nsw i32 %105, %106
  %108 = icmp eq i32 %101, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TSQL_SO_ASC, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %97
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 1
  %125 = icmp sge i32 %119, %124
  br i1 %125, label %137, label %126

126:                                              ; preds = %116, %97
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @TSQL_SO_DESC, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %242

132:                                              ; preds = %126
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %137, label %242

137:                                              ; preds = %132, %116
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %10, align 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call %struct.TYPE_17__* @tsBufGetVnodeBlockInfo(%struct.TYPE_19__* %149, i32 %150)
  store %struct.TYPE_17__* %151, %struct.TYPE_17__** %11, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %153 = icmp eq %struct.TYPE_17__* %152, null
  br i1 %153, label %180, label %154

154:                                              ; preds = %137
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 1
  %162 = icmp sge i32 %157, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %154
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @TSQL_SO_ASC, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %180, label %169

169:                                              ; preds = %163, %154
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp sle i32 %172, 0
  br i1 %173, label %174, label %231

174:                                              ; preds = %169
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TSQL_SO_DESC, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %231

180:                                              ; preds = %174, %163, %137
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sub nsw i32 %186, 1
  %188 = icmp sge i32 %183, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %180
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @TSQL_SO_ASC, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %206, label %195

195:                                              ; preds = %189, %180
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp sle i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %195
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @TSQL_SO_DESC, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %200, %189
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  store i32 -1, i32* %208, align 8
  store i32 0, i32* %2, align 4
  br label %249

209:                                              ; preds = %200, %195
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @TSQL_SO_ASC, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %221

216:                                              ; preds = %209
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 %219, 1
  br label %221

221:                                              ; preds = %216, %215
  %222 = phi i32 [ 0, %215 ], [ %220, %216 ]
  store i32 %222, i32* %12, align 4
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %226, %227
  %229 = load i32, i32* %12, align 4
  %230 = call i32 @tsBufGetBlock(%struct.TYPE_19__* %223, i32 %228, i32 %229)
  br label %248

231:                                              ; preds = %174, %169
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %238, %239
  %241 = call i32 @tsBufGetBlock(%struct.TYPE_19__* %232, i32 %235, i32 %240)
  br label %248

242:                                              ; preds = %132, %126
  %243 = load i32, i32* %9, align 4
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %242, %231, %221
  store i32 1, i32* %2, align 4
  br label %249

249:                                              ; preds = %248, %206, %88, %85, %45, %42, %20
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32 @tsBufGetBlock(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @tsBufResetPos(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_17__* @tsBufGetVnodeBlockInfo(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
