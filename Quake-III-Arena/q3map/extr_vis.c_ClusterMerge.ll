; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_ClusterMerge.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_ClusterMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64, i64, i64 }

@MAX_PORTALS = common dso_local global i32 0, align 4
@MAX_MAP_LEAFS = common dso_local global i32 0, align 4
@leafs = common dso_local global %struct.TYPE_6__* null, align 8
@portalbytes = common dso_local global i32 0, align 4
@stat_done = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"portal not done\00", align 1
@portallongs = common dso_local global i32 0, align 4
@portals = common dso_local global %struct.TYPE_5__* null, align 8
@leafbytes = common dso_local global i32 0, align 4
@totalvis = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cluster %4i : %4i visible\0A\00", align 1
@visBytes = common dso_local global i64 0, align 8
@VIS_HEADER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClusterMerge(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* @MAX_PORTALS, align 4
  %14 = sdiv i32 %13, 8
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32, i32* @MAX_MAP_LEAFS, align 4
  %19 = sdiv i32 %18, 8
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %31, %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @leafs, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @leafs, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load i32, i32* @portalbytes, align 4
  %40 = call i32 @memset(i32* %17, i32 0, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @leafs, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %112, %38
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %115

51:                                               ; preds = %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %11, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %112

64:                                               ; preds = %51
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @stat_done, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %64
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %92, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @portallongs, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %73
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i64*
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = bitcast i32* %17 to i64*
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %85
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %77
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %73

95:                                               ; preds = %73
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** @portals, align 8
  %98 = ptrtoint %struct.TYPE_5__* %96 to i64
  %99 = ptrtoint %struct.TYPE_5__* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 24
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = and i32 %103, 7
  %105 = shl i32 1, %104
  %106 = load i32, i32* %12, align 4
  %107 = ashr i32 %106, 3
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %17, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %105
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %95, %63
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %45

115:                                              ; preds = %45
  %116 = load i32, i32* @leafbytes, align 4
  %117 = call i32 @memset(i32* %21, i32 0, i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, 7
  %120 = shl i32 1, %119
  %121 = load i32, i32* %10, align 4
  %122 = ashr i32 %121, 3
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %21, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %120
  store i32 %126, i32* %124, align 4
  %127 = call i32 @LeafVectorFromPortalVector(i32* %17, i32* %21)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @totalvis, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* @totalvis, align 4
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @qprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i64, i64* @visBytes, align 8
  %137 = load i64, i64* @VIS_HEADER_SIZE, align 8
  %138 = add nsw i64 %136, %137
  %139 = load i32, i32* %2, align 4
  %140 = load i32, i32* @leafbytes, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %138, %142
  %144 = load i32, i32* @leafbytes, align 4
  %145 = call i32 @memcpy(i64 %143, i32* %21, i32 %144)
  %146 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %146)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @Error(i8*) #2

declare dso_local i32 @LeafVectorFromPortalVector(i32*, i32*) #2

declare dso_local i32 @qprintf(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i64, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
