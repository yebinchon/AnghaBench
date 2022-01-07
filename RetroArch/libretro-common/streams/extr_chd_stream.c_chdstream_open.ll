; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_chd_stream.c_chdstream_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_chd_stream.c_chdstream_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64, i64, i32, i64, i32, i32*, i64, i32* }
%struct.TYPE_8__ = type { i8*, i64, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@CHD_OPEN_READ = common dso_local global i32 0, align 4
@CHDERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"MODE1_RAW\00", align 1
@SECTOR_SIZE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"MODE2_RAW\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"AUDIO\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @chdstream_open(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @CHD_OPEN_READ, align 4
  %14 = call i64 @chd_open(i8* %12, i32 %13, i32* null, i32** %10)
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* @CHDERR_NONE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %148

19:                                               ; preds = %2
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @chdstream_find_track(i32* %20, i32 %21, %struct.TYPE_8__* %6)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %148

25:                                               ; preds = %19
  %26 = call i64 @calloc(i32 1, i32 80)
  %27 = inttoptr i64 %26 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %9, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %148

31:                                               ; preds = %25
  %32 = load i32*, i32** %10, align 8
  %33 = call %struct.TYPE_10__* @chd_get_header(i32* %32)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %8, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @malloc(i32 %36)
  %38 = inttoptr i64 %37 to i32*
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 10
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 10
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  br label %148

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @strcmp(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** @SECTOR_SIZE, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 9
  store i64 0, i64* %57, align 8
  br label %94

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @strcmp(i32 %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** @SECTOR_SIZE, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 9
  store i64 0, i64* %69, align 8
  br label %93

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @strcmp(i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** @SECTOR_SIZE, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 9
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  br label %92

84:                                               ; preds = %70
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 9
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %84, %75
  br label %93

93:                                               ; preds = %92, %63
  br label %94

94:                                               ; preds = %93, %51
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcmp(i32 %96, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %7, align 8
  br label %105

104:                                              ; preds = %94
  store i64 0, i64* %7, align 8
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32*, i32** %10, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 8
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %111, %114
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = mul i64 %122, %126
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = mul i64 %134, %138
  %140 = add i64 %132, %139
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 4
  store i64 %140, i64* %142, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 6
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 5
  store i32 -1, i32* %146, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %147, %struct.TYPE_9__** %3, align 8
  br label %157

148:                                              ; preds = %45, %30, %24, %18
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %150 = call i32 @chdstream_close(%struct.TYPE_9__* %149)
  %151 = load i32*, i32** %10, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32*, i32** %10, align 8
  %155 = call i32 @chd_close(i32* %154)
  br label %156

156:                                              ; preds = %153, %148
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %157

157:                                              ; preds = %156, %105
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %158
}

declare dso_local i64 @chd_open(i8*, i32, i32*, i32**) #1

declare dso_local i32 @chdstream_find_track(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local %struct.TYPE_10__* @chd_get_header(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @chdstream_close(%struct.TYPE_9__*) #1

declare dso_local i32 @chd_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
