; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_textures.c_FindMiptex.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_textures.c_FindMiptex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i32, i32, i32 }

@nummiptex = common dso_local global i32 0, align 4
@textureref = common dso_local global %struct.TYPE_5__* null, align 8
@MAX_MAP_TEXTURES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"MAX_MAP_TEXTURES\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%stextures/%s.wal\00", align 1
@gamedir = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindMiptex(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @nummiptex, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @textureref, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strcmp(i8* %12, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %112

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load i32, i32* @nummiptex, align 4
  %29 = load i32, i32* @MAX_MAP_TEXTURES, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @Error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @textureref, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strcpy(i8* %39, i8* %40)
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %43 = load i8*, i8** @gamedir, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44)
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %47 = bitcast %struct.TYPE_4__** %6 to i8**
  %48 = call i32 @TryLoadFile(i8* %46, i8** %47)
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %90

50:                                               ; preds = %33
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @LittleLong(i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @textureref, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  store i8* %54, i8** %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @LittleLong(i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @textureref, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  store i8* %63, i8** %68, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @LittleLong(i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @textureref, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i8* %72, i8** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @textureref, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strcpy(i8* %83, i8* %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = call i32 @FreeMemory(%struct.TYPE_4__* %88)
  br label %90

90:                                               ; preds = %50, %33
  %91 = load i32, i32* @nummiptex, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @nummiptex, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @textureref, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %90
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @textureref, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @FindMiptex(i8* %108)
  br label %110

110:                                              ; preds = %102, %90
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %21
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @TryLoadFile(i8*, i8**) #1

declare dso_local i8* @LittleLong(i32) #1

declare dso_local i32 @FreeMemory(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
