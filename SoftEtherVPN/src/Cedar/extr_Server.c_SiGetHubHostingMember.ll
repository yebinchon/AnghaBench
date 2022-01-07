; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiGetHubHostingMember.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiGetHubHostingMember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i8*, i64 }
%struct.TYPE_22__ = type { i8* }

@MAX_SIZE = common dso_local global i32 0, align 4
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @SiGetHubHostingMember(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_22__, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %10, align 8
  %21 = load i32, i32* @MAX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = icmp eq %struct.TYPE_21__* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %29 = icmp eq %struct.TYPE_23__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27, %4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  store i32 1, i32* %14, align 4
  br label %142

34:                                               ; preds = %30
  %35 = trunc i64 %22 to i32
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @StrCpy(i8* %24, i32 %35, i8* %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %52 = call %struct.TYPE_24__* @SiGetNextFarmMember(%struct.TYPE_21__* %49, i32* %50, %struct.TYPE_23__* %51)
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %10, align 8
  br label %78

53:                                               ; preds = %45
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %10, align 8
  store i64 0, i64* %15, align 8
  br label %54

54:                                               ; preds = %74, %53
  %55 = load i64, i64* %15, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @LIST_NUM(i32 %58)
  %60 = icmp slt i64 %55, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %54
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %15, align 8
  %66 = call %struct.TYPE_24__* @LIST_DATA(i32 %64, i64 %65)
  store %struct.TYPE_24__* %66, %struct.TYPE_24__** %16, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %72, %struct.TYPE_24__** %10, align 8
  br label %77

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %15, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %15, align 8
  br label %54

77:                                               ; preds = %71, %54
  br label %78

78:                                               ; preds = %77, %48
  br label %140

79:                                               ; preds = %34
  store i64 0, i64* %13, align 8
  br label %80

80:                                               ; preds = %113, %79
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @LIST_NUM(i32 %84)
  %86 = icmp slt i64 %81, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %80
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %13, align 8
  %92 = call %struct.TYPE_24__* @LIST_DATA(i32 %90, i64 %91)
  store %struct.TYPE_24__* %92, %struct.TYPE_24__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @StrCpy(i8* %94, i32 8, i8* %24)
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @LockList(i32 %98)
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.TYPE_22__* @Search(i32 %102, %struct.TYPE_22__* %19)
  store %struct.TYPE_22__* %103, %struct.TYPE_22__** %18, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %105 = icmp ne %struct.TYPE_22__* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %87
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %107, %struct.TYPE_24__** %10, align 8
  br label %108

108:                                              ; preds = %106, %87
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @UnlockList(i32 %111)
  br label %113

113:                                              ; preds = %108
  %114 = load i64, i64* %13, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %13, align 8
  br label %80

116:                                              ; preds = %80
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %118 = icmp eq %struct.TYPE_24__* %117, null
  br i1 %118, label %119, label %139

119:                                              ; preds = %116
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %123 = call %struct.TYPE_24__* @SiGetNextFarmMember(%struct.TYPE_21__* %120, i32* %121, %struct.TYPE_23__* %122)
  store %struct.TYPE_24__* %123, %struct.TYPE_24__** %10, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_24__* %124, %struct.TYPE_24__** %20, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %126 = icmp ne %struct.TYPE_24__* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %119
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %129 = call i32 @SiAddHubCreateHistory(%struct.TYPE_21__* %128, i8* %24)
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %133 = call i32 @SiCallCreateHub(%struct.TYPE_21__* %130, %struct.TYPE_24__* %131, %struct.TYPE_23__* %132)
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %137 = call i32 @SiCallUpdateHub(%struct.TYPE_21__* %134, %struct.TYPE_24__* %135, %struct.TYPE_23__* %136)
  br label %138

138:                                              ; preds = %127, %119
  br label %139

139:                                              ; preds = %138, %116
  br label %140

140:                                              ; preds = %139, %78
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_24__* %141, %struct.TYPE_24__** %5, align 8
  store i32 1, i32* %14, align 4
  br label %142

142:                                              ; preds = %140, %33
  %143 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  ret %struct.TYPE_24__* %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local %struct.TYPE_24__* @SiGetNextFarmMember(%struct.TYPE_21__*, i32*, %struct.TYPE_23__*) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_24__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local %struct.TYPE_22__* @Search(i32, %struct.TYPE_22__*) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @SiAddHubCreateHistory(%struct.TYPE_21__*, i8*) #2

declare dso_local i32 @SiCallCreateHub(%struct.TYPE_21__*, %struct.TYPE_24__*, %struct.TYPE_23__*) #2

declare dso_local i32 @SiCallUpdateHub(%struct.TYPE_21__*, %struct.TYPE_24__*, %struct.TYPE_23__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
