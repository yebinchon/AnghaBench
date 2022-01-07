; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminCheckPassword.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminCheckPassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4
@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_ACCESS_DENIED = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i32 0, align 4
@ERR_FARM_MEMBER_HUB_ADMIN = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdminCheckPassword(%struct.TYPE_12__* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i32, i32* @SHA1_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = icmp eq %struct.TYPE_12__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %6
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25, %6
  %32 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  store i32 %32, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %129

33:                                               ; preds = %28
  %34 = load i32*, i32** %13, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32* %16, i32** %13, align 8
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32*, i32** %13, align 8
  store i32 0, i32* %38, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %11, align 8
  %43 = call i64 @StrLen(i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %41, %37
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @Lock(i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @SiIsEmptyPassword(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32*, i32** %13, align 8
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %52, %45
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @SecurePassword(i32* %22, i32 %67, i8* %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @Unlock(i32 %72)
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* @SHA1_SIZE, align 4
  %76 = call i64 @Cmp(i32* %22, i8* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %62
  %79 = load i32, i32* @ERR_ACCESS_DENIED, align 4
  store i32 %79, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %129

80:                                               ; preds = %62
  br label %127

81:                                               ; preds = %41
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = call i32 @LockHubList(%struct.TYPE_12__* %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call %struct.TYPE_11__* @GetHub(%struct.TYPE_12__* %84, i8* %85)
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %18, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = call i32 @UnlockHubList(%struct.TYPE_12__* %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %90 = icmp eq %struct.TYPE_11__* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %92, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %129

93:                                               ; preds = %81
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @Lock(i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @SiIsEmptyPassword(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32*, i32** %13, align 8
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %106, %100, %93
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 @SecurePassword(i32* %22, i32 %111, i8* %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @Unlock(i32 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %119 = call i32 @ReleaseHub(%struct.TYPE_11__* %118)
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* @SHA1_SIZE, align 4
  %122 = call i64 @Cmp(i32* %22, i8* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %108
  %125 = load i32, i32* @ERR_ACCESS_DENIED, align 4
  store i32 %125, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %129

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %126, %80
  %128 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %128, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %129

129:                                              ; preds = %127, %124, %91, %78, %31
  %130 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i64 @SiIsEmptyPassword(i32) #2

declare dso_local i32 @SecurePassword(i32*, i32, i8*) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i64 @Cmp(i32*, i8*, i32) #2

declare dso_local i32 @LockHubList(%struct.TYPE_12__*) #2

declare dso_local %struct.TYPE_11__* @GetHub(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @UnlockHubList(%struct.TYPE_12__*) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
