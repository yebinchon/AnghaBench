; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_L2TPSessionManageEtherIPServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_L2TPSessionManageEtherIPServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32*, %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_25__*, %struct.TYPE_20__* }
%struct.TYPE_25__ = type { i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_20__ = type { i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@IKE_MAX_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"IPsec - %s (%u bits)\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"IKE_CLIENT 0x%X: EtherIP Server Started.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"LI_ETHERIP_SERVER_STARTED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L2TPSessionManageEtherIPServer(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = icmp eq %struct.TYPE_22__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = icmp eq %struct.TYPE_21__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %180

16:                                               ; preds = %12
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %20 = icmp eq %struct.TYPE_24__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %25 = icmp eq %struct.TYPE_23__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16
  br label %180

27:                                               ; preds = %21
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %5, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %6, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %37 = icmp eq %struct.TYPE_25__* %36, null
  br i1 %37, label %38, label %132

38:                                               ; preds = %27
  %39 = load i32, i32* @MAX_SIZE, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %7, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %8, align 8
  %43 = load i32, i32* @IKE_MAX_BLOCK_SIZE, align 4
  store i32 %43, i32* %9, align 4
  %44 = trunc i64 %40 to i32
  %45 = call i32 @Zero(i8* %42, i32 %44)
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = icmp ne %struct.TYPE_19__* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %38
  %51 = trunc i64 %40 to i32
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 6
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %65, 8
  %67 = call i32 @Format(i8* %42, i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %66)
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 6
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %50, %38
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = call %struct.TYPE_25__* @NewEtherIPServer(i32 %79, i32 %82, %struct.TYPE_23__* %83, i32* %85, i32 %88, i32* %90, i32 %93, i8* %42, i32 %96, i32 %97, i32 %100, i32 %104)
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  store %struct.TYPE_25__* %105, %struct.TYPE_25__** %107, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @StrCpy(i32 %112, i32 4, i32 %117)
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %124 = call i32 @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_24__* %123)
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @IPsecLog(%struct.TYPE_23__* %125, %struct.TYPE_24__* %126, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %131)
  br label %142

132:                                              ; preds = %27
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @StrCpy(i32 %137, i32 4, i32 %140)
  br label %142

142:                                              ; preds = %132, %76
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 3
  store i32* %152, i32** %156, align 8
  br label %157

157:                                              ; preds = %149, %142
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %172

164:                                              ; preds = %157
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %166, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @SetEtherIPServerSockEvent(%struct.TYPE_25__* %167, i32 %170)
  br label %172

172:                                              ; preds = %164, %157
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 1
  store i32 %175, i32* %179, align 4
  br label %180

180:                                              ; preds = %172, %26, %15
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32 @Format(i8*, i32, i8*, i32, i32) #2

declare dso_local %struct.TYPE_25__* @NewEtherIPServer(i32, i32, %struct.TYPE_23__*, i32*, i32, i32*, i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32) #2

declare dso_local i32 @Debug(i8*, %struct.TYPE_24__*) #2

declare dso_local i32 @IPsecLog(%struct.TYPE_23__*, %struct.TYPE_24__*, i32*, i32*, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @SetEtherIPServerSockEvent(%struct.TYPE_25__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
