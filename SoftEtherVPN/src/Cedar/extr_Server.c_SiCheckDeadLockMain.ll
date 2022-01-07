; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCheckDeadLockMain.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCheckDeadLockMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32*, i32*, %struct.TYPE_31__*, %struct.TYPE_30__*, i32*, %struct.TYPE_29__*, %struct.TYPE_28__* }
%struct.TYPE_31__ = type { i32* }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_28__ = type { %struct.TYPE_37__*, %struct.TYPE_36__*, %struct.TYPE_35__*, i32*, %struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_27__*, %struct.TYPE_32__* }
%struct.TYPE_37__ = type { i32* }
%struct.TYPE_36__ = type { i32* }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_34__ = type { i32* }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_26__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"s->ServerListenerList->lock\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"s->lock\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"s->FarmMemberList->lock\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"s->HubCreateHistoryList->lock\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"s->CapsCacheLock\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"s->TasksFromFarmControllerLock\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"cedar->HubList->lock\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"cedar->ListenerList->lock\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"cedar->ConnectionList->lock\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"cedar->CaList->lock\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"cedar->TrafficLock\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"cedar->TrafficDiffList->lock\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"cedar->LocalBridgeList->lock\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"cedar->L3SwList->lock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiCheckDeadLockMain(%struct.TYPE_25__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %11 = icmp eq %struct.TYPE_25__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %226

13:                                               ; preds = %2
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  store %struct.TYPE_28__* %16, %struct.TYPE_28__** %5, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %20 = icmp ne %struct.TYPE_29__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @CheckDeadLock(i32* %26, i64 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %21, %13
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @CheckDeadLock(i32* %32, i64 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %36, align 8
  %38 = icmp ne %struct.TYPE_30__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @CheckDeadLock(i32* %44, i64 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %39, %29
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %49, align 8
  %51 = icmp ne %struct.TYPE_31__* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @CheckDeadLock(i32* %57, i64 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @CheckDeadLock(i32* %63, i64 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @CheckDeadLock(i32* %68, i64 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %72 = icmp ne %struct.TYPE_28__* %71, null
  br i1 %72, label %73, label %226

73:                                               ; preds = %60
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 7
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %75, align 8
  %77 = icmp ne %struct.TYPE_32__* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 7
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @CheckDeadLock(i32* %83, i64 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %78, %73
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %88, align 8
  %90 = icmp ne %struct.TYPE_27__* %89, null
  br i1 %90, label %91, label %149

91:                                               ; preds = %86
  %92 = call %struct.TYPE_27__* @NewListFast(i32* null)
  store %struct.TYPE_27__* %92, %struct.TYPE_27__** %7, align 8
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = call i32 @CheckDeadLock(i32* %97, i64 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %101, align 8
  %103 = call i32 @LockList(%struct.TYPE_27__* %102)
  store i64 0, i64* %6, align 8
  br label %104

104:                                              ; preds = %124, %91
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %107, align 8
  %109 = call i64 @LIST_NUM(%struct.TYPE_27__* %108)
  %110 = icmp slt i64 %105, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %104
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call %struct.TYPE_26__* @LIST_DATA(%struct.TYPE_27__* %114, i64 %115)
  store %struct.TYPE_26__* %116, %struct.TYPE_26__** %8, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @AddRef(i32 %119)
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %123 = call i32 @Add(%struct.TYPE_27__* %121, %struct.TYPE_26__* %122)
  br label %124

124:                                              ; preds = %111
  %125 = load i64, i64* %6, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %6, align 8
  br label %104

127:                                              ; preds = %104
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %129, align 8
  %131 = call i32 @UnlockList(%struct.TYPE_27__* %130)
  store i64 0, i64* %6, align 8
  br label %132

132:                                              ; preds = %143, %127
  %133 = load i64, i64* %6, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %135 = call i64 @LIST_NUM(%struct.TYPE_27__* %134)
  %136 = icmp slt i64 %133, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %139 = load i64, i64* %6, align 8
  %140 = call %struct.TYPE_26__* @LIST_DATA(%struct.TYPE_27__* %138, i64 %139)
  store %struct.TYPE_26__* %140, %struct.TYPE_26__** %9, align 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %142 = call i32 @ReleaseListener(%struct.TYPE_26__* %141)
  br label %143

143:                                              ; preds = %137
  %144 = load i64, i64* %6, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %6, align 8
  br label %132

146:                                              ; preds = %132
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %148 = call i32 @ReleaseList(%struct.TYPE_27__* %147)
  br label %149

149:                                              ; preds = %146, %86
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 5
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %151, align 8
  %153 = icmp ne %struct.TYPE_33__* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* %4, align 8
  %161 = call i32 @CheckDeadLock(i32* %159, i64 %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %162

162:                                              ; preds = %154, %149
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_34__*, %struct.TYPE_34__** %164, align 8
  %166 = icmp ne %struct.TYPE_34__* %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* %4, align 8
  %174 = call i32 @CheckDeadLock(i32* %172, i64 %173, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %175

175:                                              ; preds = %167, %162
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* %4, align 8
  %185 = call i32 @CheckDeadLock(i32* %183, i64 %184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %186

186:                                              ; preds = %180, %175
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_35__*, %struct.TYPE_35__** %188, align 8
  %190 = icmp ne %struct.TYPE_35__* %189, null
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_35__*, %struct.TYPE_35__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* %4, align 8
  %198 = call i32 @CheckDeadLock(i32* %196, i64 %197, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %199

199:                                              ; preds = %191, %186
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_36__*, %struct.TYPE_36__** %201, align 8
  %203 = icmp ne %struct.TYPE_36__* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_36__*, %struct.TYPE_36__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i64, i64* %4, align 8
  %211 = call i32 @CheckDeadLock(i32* %209, i64 %210, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %212

212:                                              ; preds = %204, %199
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_37__*, %struct.TYPE_37__** %214, align 8
  %216 = icmp ne %struct.TYPE_37__* %215, null
  br i1 %216, label %217, label %225

217:                                              ; preds = %212
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_37__*, %struct.TYPE_37__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* %4, align 8
  %224 = call i32 @CheckDeadLock(i32* %222, i64 %223, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %225

225:                                              ; preds = %217, %212
  br label %226

226:                                              ; preds = %12, %225, %60
  ret void
}

declare dso_local i32 @CheckDeadLock(i32*, i64, i8*) #1

declare dso_local %struct.TYPE_27__* @NewListFast(i32*) #1

declare dso_local i32 @LockList(%struct.TYPE_27__*) #1

declare dso_local i64 @LIST_NUM(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_26__* @LIST_DATA(%struct.TYPE_27__*, i64) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Add(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @UnlockList(%struct.TYPE_27__*) #1

declare dso_local i32 @ReleaseListener(%struct.TYPE_26__*) #1

declare dso_local i32 @ReleaseList(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
