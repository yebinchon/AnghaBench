; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterReplicateJob.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterReplicateJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { i32*, i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_22__ = type { i32*, %struct.TYPE_19__, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8*, i8*, i8* }

@server = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@DICT_OK = common dso_local global i64 0, align 8
@SER_MESSAGE = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_REPLJOB = common dso_local global i32 0, align 4
@myself = common dso_local global %struct.TYPE_21__* null, align 8
@CLUSTERMSG_FLAG0_NOREPLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clusterReplicateJob(%struct.TYPE_20__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca [40 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %211

23:                                               ; preds = %3
  %24 = call i32 (...) @clusterShuffleReachableNodes()
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %64, %23
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %25
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %34, i64 %36
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %10, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %64

44:                                               ; preds = %31
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %52 = call i64 @dictAdd(i32 %47, i32 %50, %struct.TYPE_21__* %51)
  %53 = load i64, i64* @DICT_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %67

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %25

67:                                               ; preds = %61, %25
  %68 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %69 = bitcast i8* %68 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %13, align 8
  %70 = call i32 (...) @sdsempty()
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = load i32, i32* @SER_MESSAGE, align 4
  %73 = call i8* @serializeJob(i32 %70, %struct.TYPE_20__* %71, i32 %72)
  store i8* %73, i8** %15, align 8
  store i32 36, i32* %14, align 4
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @sdslen(i8* %74)
  %76 = sext i32 %75 to i64
  %77 = add i64 -4, %76
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %14, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %83 = load i32, i32* @CLUSTERMSG_TYPE_REPLJOB, align 4
  %84 = call i32 @clusterBuildMessageHdr(%struct.TYPE_22__* %82, i32 %83)
  %85 = call i8* @htonl(i32 1)
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  store i8* %85, i8** %90, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = call i32 @sdslen(i8* %91)
  %93 = call i8* @htonl(i32 %92)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  store i8* %93, i8** %98, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i8* @htonl(i32 %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ult i64 %104, 40
  br i1 %105, label %106, label %108

106:                                              ; preds = %67
  %107 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  store i8* %107, i8** %12, align 8
  br label %116

108:                                              ; preds = %67
  %109 = load i32, i32* %14, align 4
  %110 = call i8* @zmalloc(i32 %109)
  store i8* %110, i8** %12, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %113 = call i32 @memcpy(i8* %111, i8* %112, i32 40)
  %114 = load i8*, i8** %12, align 8
  %115 = bitcast i8* %114 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %115, %struct.TYPE_22__** %13, align 8
  br label %116

116:                                              ; preds = %108, %106
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = call i32 @sdslen(i8* %124)
  %126 = call i32 @memcpy(i8* %122, i8* %123, i32 %125)
  %127 = load i8*, i8** %15, align 8
  %128 = call i32 @sdsfree(i8* %127)
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32* @dictGetIterator(i32 %131)
  store i32* %132, i32** %16, align 8
  br label %133

133:                                              ; preds = %199, %143, %116
  %134 = load i32*, i32** %16, align 8
  %135 = call i32* @dictNext(i32* %134)
  store i32* %135, i32** %17, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %200

137:                                              ; preds = %133
  %138 = load i32*, i32** %17, align 8
  %139 = call %struct.TYPE_21__* @dictGetVal(i32* %138)
  store %struct.TYPE_21__* %139, %struct.TYPE_21__** %18, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** @myself, align 8
  %142 = icmp eq %struct.TYPE_21__* %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %133

144:                                              ; preds = %137
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %154 = call i64 @dictFind(i64 %152, %struct.TYPE_21__* %153)
  %155 = icmp ne i64 %154, 0
  br label %156

156:                                              ; preds = %149, %144
  %157 = phi i1 [ false, %144 ], [ %155, %149 ]
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %19, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %19, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %161, %156
  %165 = load i32, i32* @CLUSTERMSG_FLAG0_NOREPLY, align 4
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %165
  store i32 %171, i32* %169, align 4
  br label %181

172:                                              ; preds = %161
  %173 = load i32, i32* @CLUSTERMSG_FLAG0_NOREPLY, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, %174
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %172, %164
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %199

186:                                              ; preds = %181
  %187 = load i32, i32* %19, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32, i32* %9, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %189, %186
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @clusterSendMessage(i32* %195, i8* %196, i32 %197)
  br label %199

199:                                              ; preds = %192, %189, %181
  br label %133

200:                                              ; preds = %133
  %201 = load i32*, i32** %16, align 8
  %202 = call i32 @dictReleaseIterator(i32* %201)
  %203 = load i8*, i8** %12, align 8
  %204 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %205 = icmp ne i8* %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %200
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 @zfree(i8* %207)
  br label %209

209:                                              ; preds = %206, %200
  %210 = load i32, i32* %9, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %209, %22
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @clusterShuffleReachableNodes(...) #1

declare dso_local i64 @dictAdd(i32, i32, %struct.TYPE_21__*) #1

declare dso_local i8* @serializeJob(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @clusterBuildMessageHdr(%struct.TYPE_22__*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_21__* @dictGetVal(i32*) #1

declare dso_local i64 @dictFind(i64, %struct.TYPE_21__*) #1

declare dso_local i32 @clusterSendMessage(i32*, i8*, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @zfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
