; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_SecureNAT.c_SnSecureNATThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_SecureNAT.c_SnSecureNATThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_27__*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_29__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_29__*, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_25__*, i32 }
%struct.TYPE_26__ = type { i32 }

@CONNECTION_HUB_SECURE_NAT = common dso_local global i32 0, align 4
@SNAT_USER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"LH_NAT_START\00", align 1
@SNAT_USER_NAME_PRINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"SecureNAT Start.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SecureNAT Stop.\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"LH_NAT_STOP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SnSecureNATThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %188

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %5, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call %struct.TYPE_28__* @NewServerConnection(i32 %22, i32* null, i32* %23)
  store %struct.TYPE_28__* %24, %struct.TYPE_28__** %6, align 8
  %25 = load i32, i32* @CONNECTION_HUB_SECURE_NAT, align 4
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = call i32 (...) @GetDefaultPolicy()
  %29 = call %struct.TYPE_26__* @ClonePolicy(i32 %28)
  store %struct.TYPE_26__* %29, %struct.TYPE_26__** %8, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  store %struct.TYPE_27__* %34, %struct.TYPE_27__** %9, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @AddRef(i32 %37)
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %44, align 8
  %46 = load i32, i32* @SNAT_USER_NAME, align 4
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %48 = call %struct.TYPE_25__* @NewServerSession(i32 %41, %struct.TYPE_28__* %42, %struct.TYPE_27__* %45, i32 %46, %struct.TYPE_26__* %47)
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %7, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 6
  store %struct.TYPE_24__* %51, %struct.TYPE_24__** %53, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  store %struct.TYPE_25__* %54, %struct.TYPE_25__** %56, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %58 = call i32 @ReleaseConnection(%struct.TYPE_28__* %57)
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, ...) @HLog(i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @SNAT_USER_NAME_PRINT, align 4
  %67 = call i32 @CopyStr(i32 %66)
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 1
  store %struct.TYPE_25__* %70, %struct.TYPE_25__** %72, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @AddRef(i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @NoticeThreadInit(i32* %77)
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %84, align 8
  %86 = call i32 @ReleaseCancel(%struct.TYPE_29__* %85)
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %88, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  store %struct.TYPE_29__* %89, %struct.TYPE_29__** %95, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @AddRef(i32 %100)
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %107, align 8
  %109 = icmp ne %struct.TYPE_21__* %108, null
  br i1 %109, label %110, label %175

110:                                              ; preds = %17
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %10, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @Lock(i32 %119)
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %128, align 8
  %130 = icmp ne %struct.TYPE_29__* %129, null
  br i1 %130, label %131, label %158

131:                                              ; preds = %110
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %139, align 8
  store %struct.TYPE_29__* %140, %struct.TYPE_29__** %10, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %142, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  store %struct.TYPE_29__* %143, %struct.TYPE_29__** %151, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @AddRef(i32 %156)
  br label %158

158:                                              ; preds = %131, %110
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @Unlock(i32 %167)
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %170 = icmp ne %struct.TYPE_29__* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %158
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %173 = call i32 @ReleaseCancel(%struct.TYPE_29__* %172)
  br label %174

174:                                              ; preds = %171, %158
  br label %175

175:                                              ; preds = %174, %17
  %176 = call i32 @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %178 = call i32 @SessionMain(%struct.TYPE_25__* %177)
  %179 = call i32 @Debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32, i8*, ...) @HLog(i32 %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %185 = call i32 @ReleaseHub(%struct.TYPE_27__* %184)
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %187 = call i32 @ReleaseSession(%struct.TYPE_25__* %186)
  br label %188

188:                                              ; preds = %175, %16
  ret void
}

declare dso_local %struct.TYPE_28__* @NewServerConnection(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @ClonePolicy(i32) #1

declare dso_local i32 @GetDefaultPolicy(...) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local %struct.TYPE_25__* @NewServerSession(i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @ReleaseConnection(%struct.TYPE_28__*) #1

declare dso_local i32 @HLog(i32, i8*, ...) #1

declare dso_local i32 @CopyStr(i32) #1

declare dso_local i32 @NoticeThreadInit(i32*) #1

declare dso_local i32 @ReleaseCancel(%struct.TYPE_29__*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local i32 @SessionMain(%struct.TYPE_25__*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_27__*) #1

declare dso_local i32 @ReleaseSession(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
