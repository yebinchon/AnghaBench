; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_load.c_CMod_LoadLeafs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_load.c_CMod_LoadLeafs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@cmod_base = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MOD_LoadBmodel: funny lump size\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Map with no leafs\00", align 1
@BOX_LEAFS = common dso_local global i32 0, align 4
@h_high = common dso_local global i32 0, align 4
@cm = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CMod_LoadLeafs(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load i64, i64* @cmod_base, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = urem i64 %17, 24
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ERR_DROP, align 4
  %22 = call i32 @Com_Error(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 24
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @ERR_DROP, align 4
  %34 = call i32 @Com_Error(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i32, i32* @BOX_LEAFS, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 48
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @h_high, align 4
  %43 = call i8* @Hunk_Alloc(i32 %41, i32 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 5), align 8
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 0), align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 5), align 8
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %112, %35
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %119

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @LittleLong(i32 %54)
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @LittleLong(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @LittleLong(i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @LittleLong(i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @LittleLong(i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @LittleLong(i32 %86)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 1), align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %51
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 1), align 8
  br label %100

100:                                              ; preds = %95, %51
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 2), align 8
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 2), align 8
  br label %111

111:                                              ; preds = %106, %100
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 1
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %5, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 1
  store %struct.TYPE_8__* %118, %struct.TYPE_8__** %4, align 8
  br label %47

119:                                              ; preds = %47
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 2), align 8
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 1
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* @h_high, align 4
  %125 = call i8* @Hunk_Alloc(i32 %123, i32 %124)
  store i8* %125, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 4), align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 2), align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 2), align 8
  %128 = mul nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 1
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* @h_high, align 4
  %133 = call i8* @Hunk_Alloc(i32 %131, i32 %132)
  store i8* %133, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 3), align 8
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i8* @Hunk_Alloc(i32, i32) #1

declare dso_local i8* @LittleLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
