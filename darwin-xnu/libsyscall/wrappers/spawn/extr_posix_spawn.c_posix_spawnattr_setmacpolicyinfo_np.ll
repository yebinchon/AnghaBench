; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_setmacpolicyinfo_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_setmacpolicyinfo_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PS_MAC_EXTENSIONS_INIT_COUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawnattr_setmacpolicyinfo_np(i32** noalias %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32**, i32*** %6, align 8
  %16 = icmp eq i32** %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %17, %4
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %5, align 4
  br label %131

26:                                               ; preds = %21
  %27 = load i32**, i32*** %6, align 8
  %28 = bitcast i32** %27 to %struct.TYPE_10__**
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %10, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %11, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call %struct.TYPE_9__* @posix_spawnattr_macpolicyinfo_lookup(%struct.TYPE_11__* %35, i8* %36)
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %12, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %26
  %41 = load i8*, i8** %8, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  store i32 0, i32* %5, align 4
  br label %131

48:                                               ; preds = %26
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %50 = icmp eq %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i32, i32* @PS_MAC_EXTENSIONS_INIT_COUNT, align 4
  %53 = call i64 @PS_MAC_EXTENSIONS_SIZE(i32 %52)
  %54 = call %struct.TYPE_11__* @malloc(i64 %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %56, align 8
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %11, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %58 = icmp eq %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %5, align 4
  br label %131

61:                                               ; preds = %51
  %62 = load i32, i32* @PS_MAC_EXTENSIONS_INIT_COUNT, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %105

67:                                               ; preds = %48
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @os_mul_overflow(i32 %78, i32 2, i32* %13)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @ENOMEM, align 4
  store i32 %82, i32* %5, align 4
  br label %131

83:                                               ; preds = %75
  %84 = load i32, i32* %13, align 4
  %85 = call i64 @PS_MAC_EXTENSIONS_SIZE(i32 %84)
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* %14, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @ENOMEM, align 4
  store i32 %89, i32* %5, align 4
  br label %131

90:                                               ; preds = %83
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %92 = load i64, i64* %14, align 8
  %93 = call %struct.TYPE_11__* @reallocf(%struct.TYPE_11__* %91, i64 %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %95, align 8
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %11, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %97 = icmp eq %struct.TYPE_11__* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* @ENOMEM, align 4
  store i32 %99, i32* %5, align 4
  br label %131

100:                                              ; preds = %90
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %67
  br label %105

105:                                              ; preds = %104, %61
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %113
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %12, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @strlcpy(i32 %117, i8* %118, i32 4)
  %120 = load i8*, i8** %8, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %106, %98, %88, %81, %59, %40, %24
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_9__* @posix_spawnattr_macpolicyinfo_lookup(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.TYPE_11__* @malloc(i64) #1

declare dso_local i64 @PS_MAC_EXTENSIONS_SIZE(i32) #1

declare dso_local i64 @os_mul_overflow(i32, i32, i32*) #1

declare dso_local %struct.TYPE_11__* @reallocf(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
