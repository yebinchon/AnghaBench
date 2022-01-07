; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Session.c_IncrementUserTraffic.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Session.c_IncrementUserTraffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { %struct.TYPE_32__, %struct.TYPE_29__ }
%struct.TYPE_32__ = type { i64, i64, i64, i64 }
%struct.TYPE_29__ = type { i64, i64, i64, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_33__, %struct.TYPE_30__ }
%struct.TYPE_33__ = type { i64, i64, i64, i64 }
%struct.TYPE_30__ = type { i64, i64, i64, i64 }
%struct.TYPE_36__ = type { %struct.TYPE_31__, %struct.TYPE_28__ }
%struct.TYPE_31__ = type { i64, i64, i64, i64 }
%struct.TYPE_28__ = type { i64, i64, i64, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_34__*, i32, i32 }
%struct.TYPE_34__ = type { i32, i32 }

@TRAFFIC_DIFF_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IncrementUserTraffic(%struct.TYPE_25__* %0, i8* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_36__, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %6, align 8
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %10 = icmp eq %struct.TYPE_25__* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %16 = icmp eq %struct.TYPE_24__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %3
  br label %214

18:                                               ; preds = %14
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @Lock(i32 %21)
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %28, %34
  %36 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %43, %49
  %51 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %58, %64
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %73, %79
  %81 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %88, %94
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %103, %109
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %118, %124
  %126 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %133, %139
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %144, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %147, align 8
  %149 = call i32 @Copy(%struct.TYPE_26__* %145, %struct.TYPE_27__* %148, i32 64)
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %204

154:                                              ; preds = %18
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %156 = call i32 @AcLock(%struct.TYPE_25__* %155)
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = call %struct.TYPE_35__* @AcGetUser(%struct.TYPE_25__* %157, i8* %158)
  store %struct.TYPE_35__* %159, %struct.TYPE_35__** %8, align 8
  %160 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %161 = icmp ne %struct.TYPE_35__* %160, null
  br i1 %161, label %162, label %201

162:                                              ; preds = %154
  %163 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @Lock(i32 %165)
  %167 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @AddTraffic(i32 %169, %struct.TYPE_36__* %7)
  %171 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @Unlock(i32 %173)
  %175 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %176, align 8
  %178 = icmp ne %struct.TYPE_34__* %177, null
  br i1 %178, label %179, label %198

179:                                              ; preds = %162
  %180 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @Lock(i32 %184)
  %186 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_34__*, %struct.TYPE_34__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @AddTraffic(i32 %190, %struct.TYPE_36__* %7)
  %192 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @Unlock(i32 %196)
  br label %198

198:                                              ; preds = %179, %162
  %199 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %200 = call i32 @ReleaseUser(%struct.TYPE_35__* %199)
  br label %201

201:                                              ; preds = %198, %154
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %203 = call i32 @AcUnlock(%struct.TYPE_25__* %202)
  br label %209

204:                                              ; preds = %18
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %206 = load i8*, i8** %5, align 8
  %207 = load i32, i32* @TRAFFIC_DIFF_USER, align 4
  %208 = call i32 @AddTrafficDiff(%struct.TYPE_25__* %205, i8* %206, i32 %207, %struct.TYPE_36__* %7)
  br label %209

209:                                              ; preds = %204, %201
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @Unlock(i32 %212)
  br label %214

214:                                              ; preds = %209, %17
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Copy(%struct.TYPE_26__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @AcLock(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_35__* @AcGetUser(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @AddTraffic(i32, %struct.TYPE_36__*) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @ReleaseUser(%struct.TYPE_35__*) #1

declare dso_local i32 @AcUnlock(%struct.TYPE_25__*) #1

declare dso_local i32 @AddTrafficDiff(%struct.TYPE_25__*, i8*, i32, %struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
