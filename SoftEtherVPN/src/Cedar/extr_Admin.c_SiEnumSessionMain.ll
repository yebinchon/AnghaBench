; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_SiEnumSessionMain.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_SiEnumSessionMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_20__ = type { i32 }

@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiEnumSessionMain(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %15 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = icmp eq %struct.TYPE_18__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = icmp eq %struct.TYPE_19__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %2
  store i32 1, i32* %10, align 4
  br label %116

27:                                               ; preds = %23
  %28 = trunc i64 %17 to i32
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @StrCpy(i8* %19, i32 %28, i8* %31)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = call i32 @FreeRpcEnumSession(%struct.TYPE_19__* %33)
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = call i32 @Zero(%struct.TYPE_19__* %35, i32 8)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @StrCpy(i8* %39, i32 8, i8* %19)
  store i64 0, i64* %8, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = call i32 @SiEnumLocalSession(%struct.TYPE_18__* %41, i8* %19, %struct.TYPE_19__* %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %115

49:                                               ; preds = %27
  %50 = call i32* @NewListFast(i32* null)
  store i32* %50, i32** %11, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @LockList(i32 %53)
  br label %55

55:                                               ; preds = %99, %49
  br label %56

56:                                               ; preds = %55
  store i32 1, i32* %12, align 4
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %92, %56
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @LIST_NUM(i32 %61)
  %63 = icmp slt i64 %58, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %57
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call %struct.TYPE_20__* @LIST_DATA(i32 %67, i64 %68)
  store %struct.TYPE_20__* %69, %struct.TYPE_20__** %13, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %72 = call i32 @IsInList(i32* %70, %struct.TYPE_20__* %71)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %64
  %75 = load i32*, i32** %11, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %77 = call i32 @Add(i32* %75, %struct.TYPE_20__* %76)
  store i32 0, i32* %12, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = call i32 @Zero(%struct.TYPE_19__* %14, i32 8)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %86 = call i32 @SiCallEnumSession(%struct.TYPE_18__* %84, %struct.TYPE_20__* %85, i8* %19, %struct.TYPE_19__* %14)
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %88 = call i32 @AdjoinRpcEnumSession(%struct.TYPE_19__* %87, %struct.TYPE_19__* %14)
  %89 = call i32 @FreeRpcEnumSession(%struct.TYPE_19__* %14)
  br label %90

90:                                               ; preds = %82, %74
  br label %95

91:                                               ; preds = %64
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %9, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %9, align 8
  br label %57

95:                                               ; preds = %90, %57
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %108

99:                                               ; preds = %95
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @UnlockList(i32 %102)
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @LockList(i32 %106)
  br label %55

108:                                              ; preds = %98
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @UnlockList(i32 %111)
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @ReleaseList(i32* %113)
  br label %115

115:                                              ; preds = %108, %27
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %115, %26
  %117 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %10, align 4
  switch i32 %118, label %120 [
    i32 0, label %119
    i32 1, label %119
  ]

119:                                              ; preds = %116, %116
  ret void

120:                                              ; preds = %116
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @FreeRpcEnumSession(%struct.TYPE_19__*) #2

declare dso_local i32 @Zero(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @SiEnumLocalSession(%struct.TYPE_18__*, i8*, %struct.TYPE_19__*) #2

declare dso_local i32* @NewListFast(i32*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_20__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @IsInList(i32*, %struct.TYPE_20__*) #2

declare dso_local i32 @Add(i32*, %struct.TYPE_20__*) #2

declare dso_local i32 @SiCallEnumSession(%struct.TYPE_18__*, %struct.TYPE_20__*, i8*, %struct.TYPE_19__*) #2

declare dso_local i32 @AdjoinRpcEnumSession(%struct.TYPE_19__*, %struct.TYPE_19__*) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @ReleaseList(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
