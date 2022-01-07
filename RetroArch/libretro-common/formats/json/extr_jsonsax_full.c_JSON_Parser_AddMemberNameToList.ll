; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Parser_AddMemberNameToList.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Parser_AddMemberNameToList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32, i64 (i32, i32*, i64)* }

@PARSER_TRACK_OBJECT_MEMBERS = common dso_local global i32 0, align 4
@JSON_Error_DuplicateObjectMember = common dso_local global i32 0, align 4
@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Error_OutOfMemory = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @JSON_Parser_AddMemberNameToList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Parser_AddMemberNameToList(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @PARSER_TRACK_OBJECT_MEMBERS, align 4
  %9 = call i64 @GET_FLAGS(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %102

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %4, align 8
  br label %17

17:                                               ; preds = %46, %11
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %20
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcmp(i32 %31, i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %28
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = load i32, i32* @JSON_Error_DuplicateObjectMember, align 4
  %43 = call i32 @JSON_Parser_SetErrorAtToken(%struct.TYPE_11__* %41, i32 %42)
  %44 = load i32, i32* @JSON_Failure, align 4
  store i32 %44, i32* %2, align 4
  br label %104

45:                                               ; preds = %28, %20
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %4, align 8
  br label %17

50:                                               ; preds = %17
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64 (i32, i32*, i64)*, i64 (i32, i32*, i64)** %53, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add i64 16, %62
  %64 = sub i64 %63, 1
  %65 = call i64 %54(i32 %58, i32* null, i64 %64)
  %66 = inttoptr i64 %65 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %4, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %50
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = load i32, i32* @JSON_Error_OutOfMemory, align 4
  %72 = call i32 @JSON_Parser_SetErrorAtCodepoint(%struct.TYPE_11__* %70, i32 %71)
  %73 = load i32, i32* @JSON_Failure, align 4
  store i32 %73, i32* %2, align 4
  br label %104

74:                                               ; preds = %50
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @memcpy(i32 %89, i32 %92, i32 %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %101, align 8
  br label %102

102:                                              ; preds = %74, %1
  %103 = load i32, i32* @JSON_Success, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %69, %40
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @GET_FLAGS(i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @JSON_Parser_SetErrorAtToken(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @JSON_Parser_SetErrorAtCodepoint(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
