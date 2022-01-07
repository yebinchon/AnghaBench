; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_qscanCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_qscanCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i8* }
%struct.qscanFilter = type { i32, i32, i32, i64, i64, i64 }

@QSCAN_DEFAULT_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"count\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"busyloop\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"minlen\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"importrate\00", align 1
@shared = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@C_ERR = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@qscanCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qscanCommand(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.qscanFilter, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [2 x i8*], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %16 = bitcast %struct.qscanFilter* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 40, i1 false)
  %17 = bitcast i8* %16 to %struct.qscanFilter*
  %18 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %17, i32 0, i32 1
  store i32 -1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %17, i32 0, i32 2
  store i32 -1, i32* %20, align 8
  store i32 0, i32* %4, align 4
  %21 = load i64, i64* @QSCAN_DEFAULT_COUNT, align 8
  store i64 %21, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %22

22:                                               ; preds = %173, %1
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %176

28:                                               ; preds = %22
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %37, i64 %39
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @strcasecmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %28
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %54, i64 %57
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = call i64 @getLongFromObjectOrReply(%struct.TYPE_13__* %51, %struct.TYPE_16__* %59, i64* %5, i32* null)
  %61 = load i64, i64* @C_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %241

64:                                               ; preds = %50
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %172

67:                                               ; preds = %47, %28
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @strcasecmp(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %171

72:                                               ; preds = %67
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @strcasecmp(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %97, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %83, i64 %86
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %3, i32 0, i32 3
  %90 = call i64 @getLongFromObjectOrReply(%struct.TYPE_13__* %80, %struct.TYPE_16__* %88, i64* %89, i32* null)
  %91 = load i64, i64* @C_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  br label %241

94:                                               ; preds = %79
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %170

97:                                               ; preds = %76, %72
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @strcasecmp(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %122, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %101
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %108, i64 %111
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %3, i32 0, i32 4
  %115 = call i64 @getLongFromObjectOrReply(%struct.TYPE_13__* %105, %struct.TYPE_16__* %113, i64* %114, i32* null)
  %116 = load i64, i64* @C_OK, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  br label %241

119:                                              ; preds = %104
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %169

122:                                              ; preds = %101, %97
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @strcasecmp(i8* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %147, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %126
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %133, i64 %136
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %3, i32 0, i32 5
  %140 = call i64 @getLongFromObjectOrReply(%struct.TYPE_13__* %130, %struct.TYPE_16__* %138, i64* %139, i32* null)
  %141 = load i64, i64* @C_OK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %129
  br label %241

144:                                              ; preds = %129
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %168

147:                                              ; preds = %126, %122
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 4
  %153 = call i32 @addReply(%struct.TYPE_13__* %151, i32 %152)
  br label %241

154:                                              ; preds = %147
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %158, i64 %160
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = call i64 @parseScanCursorOrReply(%struct.TYPE_13__* %155, %struct.TYPE_16__* %162, i64* %7)
  %164 = load i64, i64* @C_ERR, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %154
  br label %241

167:                                              ; preds = %154
  store i32 1, i32* %8, align 4
  br label %168

168:                                              ; preds = %167, %144
  br label %169

169:                                              ; preds = %168, %119
  br label %170

170:                                              ; preds = %169, %94
  br label %171

171:                                              ; preds = %170, %71
  br label %172

172:                                              ; preds = %171, %64
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %22

176:                                              ; preds = %22
  %177 = load i64, i64* %5, align 8
  %178 = mul nsw i64 %177, 10
  store i64 %178, i64* %6, align 8
  %179 = call i32* (...) @listCreate()
  store i32* %179, i32** %13, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = bitcast i32* %180 to i8*
  %182 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  store i8* %181, i8** %182, align 16
  %183 = bitcast %struct.qscanFilter* %3 to i8*
  %184 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 1
  store i8* %183, i8** %184, align 8
  br label %185

185:                                              ; preds = %211, %176
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 0), align 4
  %187 = load i64, i64* %7, align 8
  %188 = load i32, i32* @qscanCallback, align 4
  %189 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %190 = call i64 @dictScan(i32 %186, i64 %187, i32 %188, i8** %189)
  store i64 %190, i64* %7, align 8
  br label %191

191:                                              ; preds = %185
  %192 = load i64, i64* %7, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %211

194:                                              ; preds = %191
  %195 = load i32, i32* %4, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %209, label %197

197:                                              ; preds = %194
  %198 = load i64, i64* %6, align 8
  %199 = add nsw i64 %198, -1
  store i64 %199, i64* %6, align 8
  %200 = icmp ne i64 %198, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load i32*, i32** %13, align 8
  %203 = call i32 @listLength(i32* %202)
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* %5, align 8
  %206 = icmp ult i64 %204, %205
  br label %207

207:                                              ; preds = %201, %197
  %208 = phi i1 [ false, %197 ], [ %206, %201 ]
  br label %209

209:                                              ; preds = %207, %194
  %210 = phi i1 [ true, %194 ], [ %208, %207 ]
  br label %211

211:                                              ; preds = %209, %191
  %212 = phi i1 [ false, %191 ], [ %210, %209 ]
  br i1 %212, label %185, label %213

213:                                              ; preds = %211
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %215 = call i32 @addReplyMultiBulkLen(%struct.TYPE_13__* %214, i32 2)
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %217 = load i64, i64* %7, align 8
  %218 = call i32 @addReplyBulkLongLong(%struct.TYPE_13__* %216, i64 %217)
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %220 = load i32*, i32** %13, align 8
  %221 = call i32 @listLength(i32* %220)
  %222 = call i32 @addReplyMultiBulkLen(%struct.TYPE_13__* %219, i32 %221)
  br label %223

223:                                              ; preds = %227, %213
  %224 = load i32*, i32** %13, align 8
  %225 = call i32* @listFirst(i32* %224)
  store i32* %225, i32** %14, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %238

227:                                              ; preds = %223
  %228 = load i32*, i32** %14, align 8
  %229 = call i32* @listNodeValue(i32* %228)
  store i32* %229, i32** %15, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %231 = load i32*, i32** %15, align 8
  %232 = call i32 @addReplyBulk(%struct.TYPE_13__* %230, i32* %231)
  %233 = load i32*, i32** %15, align 8
  %234 = call i32 @decrRefCount(i32* %233)
  %235 = load i32*, i32** %13, align 8
  %236 = load i32*, i32** %14, align 8
  %237 = call i32 @listDelNode(i32* %235, i32* %236)
  br label %223

238:                                              ; preds = %223
  %239 = load i32*, i32** %13, align 8
  %240 = call i32 @listRelease(i32* %239)
  br label %241

241:                                              ; preds = %238, %166, %150, %143, %118, %93, %63
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_13__*, %struct.TYPE_16__*, i64*, i32*) #2

declare dso_local i32 @addReply(%struct.TYPE_13__*, i32) #2

declare dso_local i64 @parseScanCursorOrReply(%struct.TYPE_13__*, %struct.TYPE_16__*, i64*) #2

declare dso_local i32* @listCreate(...) #2

declare dso_local i64 @dictScan(i32, i64, i32, i8**) #2

declare dso_local i32 @listLength(i32*) #2

declare dso_local i32 @addReplyMultiBulkLen(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @addReplyBulkLongLong(%struct.TYPE_13__*, i64) #2

declare dso_local i32* @listFirst(i32*) #2

declare dso_local i32* @listNodeValue(i32*) #2

declare dso_local i32 @addReplyBulk(%struct.TYPE_13__*, i32*) #2

declare dso_local i32 @decrRefCount(i32*) #2

declare dso_local i32 @listDelNode(i32*, i32*) #2

declare dso_local i32 @listRelease(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
