; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_portals.c_FloodAreas_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_portals.c_FloodAreas_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__**, %struct.TYPE_8__** }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8**, i32 }

@c_areas = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"WARNING: areaportal brush %i touches > 2 areas\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FloodAreas_r(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %74

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i8*, i8** @c_areas, align 8
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %5, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** @c_areas, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %20
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** @c_areas, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33, %20
  br label %129

42:                                               ; preds = %33
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, inttoptr (i64 -1 to i8*)
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @_printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %129

54:                                               ; preds = %42
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, inttoptr (i64 -1 to i8*)
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i8*, i8** @c_areas, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  store i8* %62, i8** %66, align 8
  br label %73

67:                                               ; preds = %54
  %68 = load i8*, i8** @c_areas, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %68, i8** %72, align 8
  br label %73

73:                                               ; preds = %67, %61
  br label %129

74:                                               ; preds = %1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %129

80:                                               ; preds = %74
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %129

86:                                               ; preds = %80
  %87 = load i8*, i8** @c_areas, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %3, align 8
  br label %94

94:                                               ; preds = %121, %86
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = icmp ne %struct.TYPE_8__* %95, null
  br i1 %96, label %97, label %129

97:                                               ; preds = %94
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %100, i64 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = icmp eq %struct.TYPE_9__* %102, %103
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %4, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = call i32 @Portal_Passable(%struct.TYPE_8__* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %97
  br label %121

110:                                              ; preds = %97
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %113, i64 %118
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  call void @FloodAreas_r(%struct.TYPE_9__* %120)
  br label %121

121:                                              ; preds = %110, %109
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %124, i64 %126
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  store %struct.TYPE_8__* %128, %struct.TYPE_8__** %3, align 8
  br label %94

129:                                              ; preds = %41, %49, %73, %79, %85, %94
  ret void
}

declare dso_local i32 @_printf(i8*, i32) #1

declare dso_local i32 @Portal_Passable(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
