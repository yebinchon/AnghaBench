; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_updateOffsetVal.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_updateOffsetVal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { i64* }

@QUERY_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_18__*, i8*)* @updateOffsetVal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateOffsetVal(%struct.TYPE_15__* %0, %struct.TYPE_18__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_16__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %187

32:                                               ; preds = %24
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_16__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %187, label %36

36:                                               ; preds = %32, %20
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %38 = call i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_16__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = call i32 @getTimestampInDiskBlock(%struct.TYPE_15__* %41, i32 0)
  br label %43

43:                                               ; preds = %40, %36
  store i64* null, i64** %8, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = call i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_16__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64* %53, i64** %8, align 8
  br label %62

54:                                               ; preds = %43
  %55 = load i8*, i8** %6, align 8
  %56 = bitcast i8* %55 to %struct.TYPE_17__*
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i64*
  store i64* %61, i64** %8, align 8
  br label %62

62:                                               ; preds = %54, %47
  store i64 0, i64* %9, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_16__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %105

66:                                               ; preds = %62
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %101, %66
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br label %82

82:                                               ; preds = %76, %70
  %83 = phi i1 [ false, %70 ], [ %81, %76 ]
  br i1 %83, label %84, label %104

84:                                               ; preds = %82
  %85 = load i64*, i64** %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sle i64 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %84
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  br label %100

99:                                               ; preds = %84
  br label %104

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %9, align 8
  br label %70

104:                                              ; preds = %99, %82
  br label %141

105:                                              ; preds = %62
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %9, align 8
  br label %109

109:                                              ; preds = %137, %105
  %110 = load i64, i64* %9, align 8
  %111 = icmp uge i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br label %118

118:                                              ; preds = %112, %109
  %119 = phi i1 [ false, %109 ], [ %117, %112 ]
  br i1 %119, label %120, label %140

120:                                              ; preds = %118
  %121 = load i64*, i64** %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sge i64 %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %120
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %133, 1
  store i64 %134, i64* %132, align 8
  br label %136

135:                                              ; preds = %120
  br label %140

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, -1
  store i64 %139, i64* %9, align 8
  br label %109

140:                                              ; preds = %135, %118
  br label %141

141:                                              ; preds = %140, %104
  %142 = load i64, i64* %9, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %142, %145
  br i1 %146, label %156, label %147

147:                                              ; preds = %141
  %148 = load i64*, i64** %8, align 8
  %149 = load i64, i64* %9, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %151, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %147, %141
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %158 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_16__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %176, label %160

160:                                              ; preds = %156, %147
  %161 = load i64, i64* %9, align 8
  %162 = icmp ult i64 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %160
  %164 = load i64*, i64** %8, align 8
  %165 = load i64, i64* %9, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp slt i64 %167, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %163, %160
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %174 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_16__* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %172, %156
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %178 = load i32, i32* @QUERY_COMPLETED, align 4
  %179 = call i32 @setQueryStatus(%struct.TYPE_16__* %177, i32 %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  store i64 -1, i64* %181, align 8
  br label %186

182:                                              ; preds = %172, %163
  %183 = load i64, i64* %9, align 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %182, %176
  br label %257

187:                                              ; preds = %32, %24
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %189 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_16__* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, %195
  store i64 %199, i64* %197, align 8
  br label %209

200:                                              ; preds = %187
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = sub i64 %207, %204
  store i64 %208, i64* %206, align 8
  br label %209

209:                                              ; preds = %200, %191
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp uge i64 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %209
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = sub i64 %220, 1
  %222 = icmp ule i64 %217, %221
  br label %223

223:                                              ; preds = %214, %209
  %224 = phi i1 [ false, %209 ], [ %222, %214 ]
  %225 = zext i1 %224 to i32
  %226 = call i32 @assert(i32 %225)
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %228 = call i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_16__* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %223
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 @getTimestampInDiskBlock(%struct.TYPE_15__* %231, i32 %235)
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 8
  br label %248

239:                                              ; preds = %223
  %240 = load i8*, i8** %6, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = trunc i64 %243 to i32
  %245 = call i32 @getTimestampInCacheBlock(i8* %240, i32 %244)
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 8
  br label %248

248:                                              ; preds = %239, %230
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 4
  store i32 %251, i32* %253, align 4
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  store i64 0, i64* %256, align 8
  br label %257

257:                                              ; preds = %248, %186
  ret void
}

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_16__*) #1

declare dso_local i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @getTimestampInDiskBlock(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @setQueryStatus(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @getTimestampInCacheBlock(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
