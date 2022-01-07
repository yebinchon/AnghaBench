; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_gzwrite.c_gz_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_gzwrite.c_gz_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_7__, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i8*, i32, i8*, i8*, i8* }

@Z_MEM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@Z_NULL = common dso_local global i8* null, align 8
@Z_DEFLATED = common dso_local global i32 0, align 4
@MAX_WBITS = common dso_local global i64 0, align 8
@DEF_MEM_LEVEL = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @gz_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gz_init(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @malloc(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = load i32, i32* @Z_MEM_ERROR, align 4
  %22 = call i32 @gz_error(%struct.TYPE_9__* %20, i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %114

23:                                               ; preds = %1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %86, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @malloc(i32 %31)
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load i32, i32* @Z_MEM_ERROR, align 4
  %47 = call i32 @gz_error(%struct.TYPE_9__* %45, i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %114

48:                                               ; preds = %28
  %49 = load i8*, i8** @Z_NULL, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @Z_NULL, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @Z_NULL, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @Z_DEFLATED, align 4
  %63 = load i64, i64* @MAX_WBITS, align 8
  %64 = add nsw i64 %63, 16
  %65 = load i32, i32* @DEF_MEM_LEVEL, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @deflateInit2(%struct.TYPE_8__* %58, i32 %61, i32 %62, i64 %64, i32 %65, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @Z_OK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %48
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = load i32, i32* @Z_MEM_ERROR, align 4
  %84 = call i32 @gz_error(%struct.TYPE_9__* %82, i32 %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %114

85:                                               ; preds = %48
  br label %86

86:                                               ; preds = %85, %23
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %86
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i8* %109, i8** %112, align 8
  br label %113

113:                                              ; preds = %96, %86
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %73, %40, %19
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @gz_error(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @deflateInit2(%struct.TYPE_8__*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
