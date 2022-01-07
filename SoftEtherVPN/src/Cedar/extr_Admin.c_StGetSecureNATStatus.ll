; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetSecureNATStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetSecureNATStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_22__ = type { i8*, i64, i64, i64 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"b_support_securenat\00", align 1
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ERR_SNAT_NOT_RUNNING = common dso_local global i64 0, align 8
@HUB_TYPE_FARM_DYNAMIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StGetSecureNATStatus(%struct.TYPE_25__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %6, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i32, i32* @CHECK_RIGHT, align 4
  %29 = trunc i64 %25 to i32
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @StrCpy(i8* %27, i32 %29, i8* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @LockHubList(i32* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call %struct.TYPE_23__* @GetHub(i32* %36, i8* %39)
  store %struct.TYPE_23__* %40, %struct.TYPE_23__** %8, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @UnlockHubList(i32* %41)
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %44 = icmp eq %struct.TYPE_23__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %46, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %157

47:                                               ; preds = %2
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = call i32 @GetServerCapsBool(%struct.TYPE_21__* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %47
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %59 = call i32 @ReleaseHub(%struct.TYPE_23__* %58)
  %60 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %60, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %157

61:                                               ; preds = %53
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @Lock(i32 %64)
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = icmp eq %struct.TYPE_20__* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i64, i64* @ERR_SNAT_NOT_RUNNING, align 8
  store i64 %71, i64* %9, align 8
  br label %80

72:                                               ; preds = %61
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = call i32 @NtGetStatus(i32 %77, %struct.TYPE_22__* %78)
  br label %80

80:                                               ; preds = %72, %70
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @Unlock(i32 %83)
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %148

90:                                               ; preds = %80
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @ERR_SNAT_NOT_RUNNING, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %147

94:                                               ; preds = %90
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @LockList(i32 %97)
  store i64 0, i64* %12, align 8
  br label %99

99:                                               ; preds = %139, %94
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @LIST_NUM(i32 %103)
  %105 = icmp slt i64 %100, %104
  br i1 %105, label %106, label %142

106:                                              ; preds = %99
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call %struct.TYPE_24__* @LIST_DATA(i32 %109, i64 %110)
  store %struct.TYPE_24__* %111, %struct.TYPE_24__** %14, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %138

116:                                              ; preds = %106
  %117 = call i32 @Zero(%struct.TYPE_22__* %15, i32 32)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %120 = call i32 @SiCallGetNatStatus(%struct.TYPE_21__* %118, %struct.TYPE_24__* %119, i8* %27, %struct.TYPE_22__* %15)
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %137

133:                                              ; preds = %128, %124, %116
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %135 = call i32 @Copy(%struct.TYPE_22__* %134, %struct.TYPE_22__* %15, i32 32)
  %136 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %136, i64* %9, align 8
  br label %142

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137, %106
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %12, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %12, align 8
  br label %99

142:                                              ; preds = %133, %99
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @UnlockList(i32 %145)
  br label %147

147:                                              ; preds = %142, %90
  br label %148

148:                                              ; preds = %147, %80
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %150 = call i32 @ReleaseHub(%struct.TYPE_23__* %149)
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @StrCpy(i8* %153, i32 8, i8* %27)
  %155 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %155, i64* %9, align 8
  %156 = load i64, i64* %9, align 8
  store i64 %156, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %157

157:                                              ; preds = %148, %57, %45
  %158 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i64, i64* %3, align 8
  ret i64 %159
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_23__* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @GetServerCapsBool(%struct.TYPE_21__*, i8*) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_23__*) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @NtGetStatus(i32, %struct.TYPE_22__*) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_24__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @Zero(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @SiCallGetNatStatus(%struct.TYPE_21__*, %struct.TYPE_24__*, i8*, %struct.TYPE_22__*) #2

declare dso_local i32 @Copy(%struct.TYPE_22__*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @UnlockList(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
