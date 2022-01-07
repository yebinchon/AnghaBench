; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_citus_tools.c_ExecuteCommandsInParallelAndStoreResults.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_citus_tools.c_ExecuteCommandsInParallelAndStoreResults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8* }
%struct.TYPE_18__ = type { i32 }

@FORCE_NEW_CONNECTION = common dso_local global i32 0, align 4
@CONNECTION_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"failed to connect to %s:%d\00", align 1
@RemoteTaskCheckInterval = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__**, i32*, %struct.TYPE_17__**, i32*, %struct.TYPE_17__**, i32)* @ExecuteCommandsInParallelAndStoreResults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecuteCommandsInParallelAndStoreResults(%struct.TYPE_17__** %0, i32* %1, %struct.TYPE_17__** %2, i32* %3, %struct.TYPE_17__** %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_18__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_17__*, align 8
  %27 = alloca %struct.TYPE_18__*, align 8
  %28 = alloca %struct.TYPE_17__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store %struct.TYPE_17__** %0, %struct.TYPE_17__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_17__** %2, %struct.TYPE_17__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_17__** %4, %struct.TYPE_17__*** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call %struct.TYPE_18__** @palloc0(i32 %35)
  store %struct.TYPE_18__** %36, %struct.TYPE_18__*** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %63, %6
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %42, i64 %44
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %16, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* @FORCE_NEW_CONNECTION, align 4
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i8*, i8** %16, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call %struct.TYPE_18__* @StartNodeConnection(i32 %55, i8* %56, i32 %57)
  %59 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %14, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %59, i64 %61
  store %struct.TYPE_18__* %58, %struct.TYPE_18__** %62, align 8
  br label %63

63:                                               ; preds = %41
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %37

66:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %123, %66
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %126

71:                                               ; preds = %67
  %72 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %14, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %72, i64 %74
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %19, align 8
  %77 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %11, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %77, i64 %79
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  store %struct.TYPE_17__* %81, %struct.TYPE_17__** %20, align 8
  %82 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %82, i64 %84
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %21, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %22, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %95 = call i32 @FinishConnectionEstablishment(%struct.TYPE_18__* %94)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @PQstatus(i32 %98)
  %100 = load i64, i64* @CONNECTION_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %71
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %104 = load i8*, i8** %21, align 8
  %105 = load i32, i32* %22, align 4
  %106 = call i32 @appendStringInfo(%struct.TYPE_17__* %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %104, i32 %105)
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 0, i32* %110, align 4
  %111 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %14, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %111, i64 %113
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %114, align 8
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %122

117:                                              ; preds = %71
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %102
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %67

126:                                              ; preds = %67
  store i32 0, i32* %13, align 4
  br label %127

127:                                              ; preds = %175, %126
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %178

131:                                              ; preds = %127
  store i32 0, i32* %23, align 4
  %132 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %14, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %132, i64 %134
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  store %struct.TYPE_18__* %136, %struct.TYPE_18__** %24, align 8
  %137 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %137, i64 %139
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %25, align 8
  %144 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %11, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %144, i64 %146
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  store %struct.TYPE_17__* %148, %struct.TYPE_17__** %26, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %150 = icmp eq %struct.TYPE_18__* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %131
  br label %175

152:                                              ; preds = %131
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %154 = load i8*, i8** %25, align 8
  %155 = call i32 @SendRemoteCommand(%struct.TYPE_18__* %153, i8* %154)
  store i32 %155, i32* %23, align 4
  %156 = load i32, i32* %23, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %152
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %161 = call i32 @StoreErrorMessage(%struct.TYPE_18__* %159, %struct.TYPE_17__* %160)
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 0, i32* %165, align 4
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %167 = call i32 @CloseConnection(%struct.TYPE_18__* %166)
  %168 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %14, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %168, i64 %170
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %171, align 8
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  br label %174

174:                                              ; preds = %158, %152
  br label %175

175:                                              ; preds = %174, %151
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %127

178:                                              ; preds = %127
  br label %179

179:                                              ; preds = %236, %178
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %237

183:                                              ; preds = %179
  store i32 0, i32* %13, align 4
  br label %184

184:                                              ; preds = %223, %183
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %226

188:                                              ; preds = %184
  %189 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %14, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %189, i64 %191
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %192, align 8
  store %struct.TYPE_18__* %193, %struct.TYPE_18__** %27, align 8
  %194 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %11, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %194, i64 %196
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  store %struct.TYPE_17__* %198, %struct.TYPE_17__** %28, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %200 = icmp eq %struct.TYPE_18__* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %188
  br label %223

202:                                              ; preds = %188
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %205 = call i32 @GetConnectionStatusAndResult(%struct.TYPE_18__* %203, i32* %29, %struct.TYPE_17__* %204)
  store i32 %205, i32* %30, align 4
  %206 = load i32, i32* %30, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %202
  %209 = load i32, i32* %15, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %29, align 4
  %212 = load i32*, i32** %10, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %211, i32* %215, align 4
  %216 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %14, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %216, i64 %218
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %219, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %221 = call i32 @CloseConnection(%struct.TYPE_18__* %220)
  br label %222

222:                                              ; preds = %208, %202
  br label %223

223:                                              ; preds = %222, %201
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %13, align 4
  br label %184

226:                                              ; preds = %184
  %227 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* %12, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load i64, i64* @RemoteTaskCheckInterval, align 8
  %233 = mul nsw i64 %232, 1000
  store i64 %233, i64* %31, align 8
  %234 = load i64, i64* %31, align 8
  %235 = call i32 @pg_usleep(i64 %234)
  br label %236

236:                                              ; preds = %231, %226
  br label %179

237:                                              ; preds = %179
  %238 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %14, align 8
  %239 = call i32 @pfree(%struct.TYPE_18__** %238)
  ret void
}

declare dso_local %struct.TYPE_18__** @palloc0(i32) #1

declare dso_local %struct.TYPE_18__* @StartNodeConnection(i32, i8*, i32) #1

declare dso_local i32 @FinishConnectionEstablishment(%struct.TYPE_18__*) #1

declare dso_local i64 @PQstatus(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_17__*, i8*, i8*, i32) #1

declare dso_local i32 @SendRemoteCommand(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @StoreErrorMessage(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @CloseConnection(%struct.TYPE_18__*) #1

declare dso_local i32 @GetConnectionStatusAndResult(%struct.TYPE_18__*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @pfree(%struct.TYPE_18__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
