; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterSendPing.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterSendPing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { i8*, i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i8*, i8*, i32, i8*, i8*, i32 }

@server = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@CLUSTERMSG_TYPE_PING = common dso_local global i32 0, align 4
@myself = common dso_local global %struct.TYPE_19__* null, align 8
@CLUSTER_NODE_PFAIL = common dso_local global i32 0, align 4
@CLUSTER_NODE_FAIL = common dso_local global i32 0, align 4
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4
@CLUSTER_NODE_NOADDR = common dso_local global i32 0, align 4
@CLUSTER_NAMELEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterSendPing(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dictSize(i32 %18)
  %20 = sub nsw i32 %19, 2
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dictSize(i32 %23)
  %25 = sdiv i32 %24, 10
  %26 = call i32 @floor(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 3, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %30
  store i32 20, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 64, %38
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 24
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 24, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @zcalloc(i32 %48)
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %51, %struct.TYPE_21__** %6, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = icmp ne %struct.TYPE_15__* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %47
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @CLUSTERMSG_TYPE_PING, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = call i32 (...) @mstime()
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %56, %47
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @clusterBuildMessageHdr(%struct.TYPE_21__* %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 %70, 3
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %160, %159, %125, %110, %95, %66
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %11, align 4
  %82 = icmp ne i32 %80, 0
  br label %83

83:                                               ; preds = %79, %75, %72
  %84 = phi i1 [ false, %75 ], [ false, %72 ], [ %82, %79 ]
  br i1 %84, label %85, label %216

85:                                               ; preds = %83
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32* @dictGetRandomKey(i32 %88)
  store i32* %89, i32** %12, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call %struct.TYPE_19__* @dictGetVal(i32* %90)
  store %struct.TYPE_19__* %91, %struct.TYPE_19__** %13, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** @myself, align 8
  %94 = icmp eq %struct.TYPE_19__* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %72

96:                                               ; preds = %85
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %98, 2
  %100 = icmp sgt i32 %97, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %106 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %101
  br label %72

111:                                              ; preds = %101, %96
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %116 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %111
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %120, %111
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %10, align 4
  br label %72

128:                                              ; preds = %120
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %152, %128
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %155

133:                                              ; preds = %129
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %148 = call i64 @memcmp(i32 %143, i32 %146, i32 %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  br label %155

151:                                              ; preds = %133
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %15, align 4
  br label %129

155:                                              ; preds = %150, %129
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %72

160:                                              ; preds = %155
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %10, align 4
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i64 %169
  store %struct.TYPE_20__* %170, %struct.TYPE_20__** %14, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %178 = call i32 @memcpy(i32 %173, i32 %176, i32 %177)
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @htonl(i32 %181)
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 6
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i8* @htonl(i32 %187)
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 5
  store i8* %188, i8** %190, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @memcpy(i32 %193, i32 %196, i32 4)
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = call i8* @htons(i32 %200)
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i8* @htons(i32 %206)
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 2
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 1
  store i64 0, i64* %211, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  store i64 0, i64* %213, align 8
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %72

216:                                              ; preds = %83
  store i32 20, i32* %9, align 4
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 64, %218
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = add i64 %221, %219
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %9, align 4
  %224 = load i32, i32* %7, align 4
  %225 = call i8* @htons(i32 %224)
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i8* @htonl(i32 %228)
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  store i8* %229, i8** %231, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %233 = load i8*, i8** %5, align 8
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @clusterSendMessage(%struct.TYPE_22__* %232, i8* %233, i32 %234)
  %236 = load i8*, i8** %5, align 8
  %237 = call i32 @zfree(i8* %236)
  ret void
}

declare dso_local i32 @dictSize(i32) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i8* @zcalloc(i32) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @clusterBuildMessageHdr(%struct.TYPE_21__*, i32) #1

declare dso_local i32* @dictGetRandomKey(i32) #1

declare dso_local %struct.TYPE_19__* @dictGetVal(i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @clusterSendMessage(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @zfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
