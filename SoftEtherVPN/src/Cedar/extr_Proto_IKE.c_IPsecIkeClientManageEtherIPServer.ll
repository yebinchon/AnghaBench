; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IPsecIkeClientManageEtherIPServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IPsecIkeClientManageEtherIPServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@IKE_MAX_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"IPsec - %s (%u bits)\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"IKE_CLIENT 0x%X: EtherIP Server Started.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"LI_ETHERIP_SERVER_STARTED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPsecIkeClientManageEtherIPServer(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = icmp eq %struct.TYPE_18__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = icmp eq %struct.TYPE_19__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  br label %140

15:                                               ; preds = %11
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = icmp eq %struct.TYPE_20__* %18, null
  br i1 %19, label %20, label %99

20:                                               ; preds = %15
  %21 = load i32, i32* @MAX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = load i32, i32* @IKE_MAX_BLOCK_SIZE, align 4
  store i32 %25, i32* %8, align 4
  %26 = trunc i64 %22 to i32
  %27 = call i32 @Zero(i8* %24, i32 %26)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = icmp ne %struct.TYPE_17__* %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %20
  %33 = trunc i64 %22 to i32
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 7
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 8
  %49 = call i32 @Format(i8* %24, i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 7
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %32, %20
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 6
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = call %struct.TYPE_20__* @NewEtherIPServer(i32 %61, i32 %64, %struct.TYPE_18__* %65, i32* %67, i32 %70, i32* %72, i32 %75, i8* %24, i32 %78, i32 %79, i32 %82, i32 %86)
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  store %struct.TYPE_20__* %87, %struct.TYPE_20__** %89, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = call i32 @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %90)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @IPsecLog(%struct.TYPE_18__* %92, %struct.TYPE_19__* %93, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %98)
  br label %109

99:                                               ; preds = %15
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @StrCpy(i32 %104, i32 4, i32 %107)
  br label %109

109:                                              ; preds = %99, %58
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  store %struct.TYPE_20__* %112, %struct.TYPE_20__** %5, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  store i32* %120, i32** %122, align 8
  br label %123

123:                                              ; preds = %117, %109
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @SetEtherIPServerSockEvent(%struct.TYPE_20__* %129, i32 %132)
  br label %134

134:                                              ; preds = %128, %123
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %134, %14
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32 @Format(i8*, i32, i8*, i32, i32) #2

declare dso_local %struct.TYPE_20__* @NewEtherIPServer(i32, i32, %struct.TYPE_18__*, i32*, i32, i32*, i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @Debug(i8*, %struct.TYPE_19__*) #2

declare dso_local i32 @IPsecLog(%struct.TYPE_18__*, %struct.TYPE_19__*, i32*, i32*, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #2

declare dso_local i32 @SetEtherIPServerSockEvent(%struct.TYPE_20__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
