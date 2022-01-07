; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiSetServerType.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiSetServerType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i64, i64, i32*, i64, i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@MAX_PUBLIC_PORT_NUM = common dso_local global i64 0, align 8
@FARM_DEFAULT_WEIGHT = common dso_local global i64 0, align 8
@SHA1_SIZE = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiSetServerType(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3, i64* %4, i8* %5, i64 %6, i64* %7, i64 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64* %4, i64** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i64* %7, i64** %18, align 8
  store i64 %8, i64* %19, align 8
  store i32 %9, i32* %20, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  br label %137

25:                                               ; preds = %10
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i64, i64* %14, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %29
  %33 = load i64*, i64** %15, align 8
  %34 = icmp eq i64* %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %16, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %17, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load i64*, i64** %18, align 8
  %43 = icmp eq i64* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* @MAX_PUBLIC_PORT_NUM, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %41, %38, %35, %32, %29
  br label %137

49:                                               ; preds = %44, %25
  %50 = load i64, i64* %19, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i64, i64* @FARM_DEFAULT_WEIGHT, align 8
  store i64 %53, i64* %19, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 10
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %21, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @Lock(i32 %62)
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 9
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %19, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 8
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %122

73:                                               ; preds = %54
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @StrCpy(i32 %76, i32 4, i8* %77)
  %79 = load i64, i64* %17, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 6
  store i64 %79, i64* %81, align 8
  %82 = load i64*, i64** %18, align 8
  %83 = load i64, i64* @SHA1_SIZE, align 8
  %84 = call i32 @IsZero(i64* %82, i64 %83)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %73
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = load i64*, i64** %18, align 8
  %91 = load i64, i64* @SHA1_SIZE, align 8
  %92 = call i32 @Copy(i32* %89, i64* %90, i64 %91)
  br label %93

93:                                               ; preds = %86, %73
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @Free(i32* %107)
  br label %109

109:                                              ; preds = %104, %93
  %110 = load i64, i64* %14, align 8
  %111 = mul i64 %110, 8
  %112 = call i32* @ZeroMalloc(i64 %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  store i32* %112, i32** %114, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i64*, i64** %15, align 8
  %119 = load i64, i64* %14, align 8
  %120 = mul i64 %119, 8
  %121 = call i32 @Copy(i32* %117, i64* %118, i64 %120)
  br label %122

122:                                              ; preds = %109, %54
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %20, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %126, %122
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @Unlock(i32 %133)
  %135 = load i32, i32* %21, align 4
  %136 = call i32 @SiRebootServer(i32 %135)
  br label %137

137:                                              ; preds = %130, %48, %24
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @IsZero(i64*, i64) #1

declare dso_local i32 @Copy(i32*, i64*, i64) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32* @ZeroMalloc(i64) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @SiRebootServer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
