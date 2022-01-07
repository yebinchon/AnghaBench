; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2Reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, i64, i64, i64, i64, %struct.TYPE_9__, i64, i64, i64, i64, i64, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32*, i32**, i64 }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i8, i8, i8, i32, i32 }
%struct.TYPE_15__ = type { i32 (...)* }

@Cs2Area = common dso_local global %struct.TYPE_16__* null, align 8
@CDB_STAT_PAUSE = common dso_local global i32 0, align 4
@CDB_STAT_NODISC = common dso_local global i32 0, align 4
@CDB_STAT_OPEN = common dso_local global i32 0, align 4
@MAX_SELECTORS = common dso_local global i64 0, align 8
@MAX_BLOCKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2Reset() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %4 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 42
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %7 = load i32 (...)*, i32 (...)** %6, align 8
  %8 = call i32 (...) %7()
  switch i32 %8, label %57 [
    i32 0, label %9
    i32 1, label %9
    i32 2, label %25
    i32 3, label %41
  ]

9:                                                ; preds = %0, %0
  %10 = load i32, i32* @CDB_STAT_PAUSE, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 41
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i32 150, i32* %14, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  store i32 65, i32* %20, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 4
  store i32 1, i32* %22, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 5
  store i32 1, i32* %24, align 4
  br label %58

25:                                               ; preds = %0
  %26 = load i32, i32* @CDB_STAT_NODISC, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 41
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  store i32 255, i32* %32, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  store i32 255, i32* %34, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 3
  store i32 255, i32* %36, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 4
  store i32 255, i32* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 5
  store i32 255, i32* %40, align 4
  br label %58

41:                                               ; preds = %0
  %42 = load i32, i32* @CDB_STAT_OPEN, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 41
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  store i32 255, i32* %48, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  store i32 255, i32* %50, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  store i32 255, i32* %52, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 4
  store i32 255, i32* %54, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 5
  store i32 255, i32* %56, align 4
  br label %58

57:                                               ; preds = %0
  br label %58

58:                                               ; preds = %57, %41, %25, %9
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 6
  store i32 -1, i32* %60, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 7
  store i32 -1, i32* %62, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 40
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 39
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 9
  store i32 2048, i32* %68, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 8
  store i32 2048, i32* %70, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 10
  store i32 1, i32* %72, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 38
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 37
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 36
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 35
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 67, i32* %81, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 35
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i8 66, i8* %84, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 35
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  store i8 79, i8* %87, align 1
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 35
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  store i8 75, i8* %90, align 2
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 35
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  store i32 65535, i32* %93, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 35
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 5
  store i32 65535, i32* %96, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 11
  store i32 -1, i32* %98, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 12
  store i32 -1, i32* %100, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 34
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 33
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 32
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 31
  store i64 0, i64* %108, align 8
  store i64 0, i64* %1, align 8
  br label %109

109:                                              ; preds = %180, %58
  %110 = load i64, i64* %1, align 8
  %111 = load i64, i64* @MAX_SELECTORS, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %183

113:                                              ; preds = %109
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 30
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i64, i64* %1, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 10
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 30
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load i64, i64* %1, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i32 -1, i32* %125, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 30
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = load i64, i64* %1, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 9
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 30
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = load i64, i64* %1, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 8
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 30
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i64, i64* %1, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 7
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 30
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = load i64, i64* %1, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 6
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 30
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = load i64, i64* %1, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 5
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 30
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load i64, i64* %1, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 4
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 30
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = load i64, i64* %1, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 30
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = load i64, i64* %1, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 30
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = load i64, i64* %1, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  store i32 255, i32* %179, align 4
  br label %180

180:                                              ; preds = %113
  %181 = load i64, i64* %1, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %1, align 8
  br label %109

183:                                              ; preds = %109
  store i64 0, i64* %1, align 8
  br label %184

184:                                              ; preds = %228, %183
  %185 = load i64, i64* %1, align 8
  %186 = load i64, i64* @MAX_SELECTORS, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %231

188:                                              ; preds = %184
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 29
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = load i64, i64* %1, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  store i32 -1, i32* %194, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 29
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = load i64, i64* %1, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 3
  store i64 0, i64* %200, align 8
  store i64 0, i64* %2, align 8
  br label %201

201:                                              ; preds = %224, %188
  %202 = load i64, i64* %2, align 8
  %203 = load i64, i64* @MAX_BLOCKS, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %227

205:                                              ; preds = %201
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 29
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %207, align 8
  %209 = load i64, i64* %1, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 2
  %212 = load i32**, i32*** %211, align 8
  %213 = load i64, i64* %2, align 8
  %214 = getelementptr inbounds i32*, i32** %212, i64 %213
  store i32* null, i32** %214, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 29
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = load i64, i64* %1, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* %2, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32 255, i32* %223, align 4
  br label %224

224:                                              ; preds = %205
  %225 = load i64, i64* %2, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %2, align 8
  br label %201

227:                                              ; preds = %201
  br label %228

228:                                              ; preds = %227
  %229 = load i64, i64* %1, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %1, align 8
  br label %184

231:                                              ; preds = %184
  store i64 0, i64* %1, align 8
  br label %232

232:                                              ; preds = %251, %231
  %233 = load i64, i64* %1, align 8
  %234 = load i64, i64* @MAX_BLOCKS, align 8
  %235 = icmp ult i64 %233, %234
  br i1 %235, label %236, label %254

236:                                              ; preds = %232
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 28
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = load i64, i64* %1, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  store i32 -1, i32* %242, align 8
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 28
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = load i64, i64* %1, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @memset(i32* %249, i32 0, i32 2352)
  br label %251

251:                                              ; preds = %236
  %252 = load i64, i64* %1, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %1, align 8
  br label %232

254:                                              ; preds = %232
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 13
  store i32 200, i32* %256, align 4
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 27
  %259 = load i32*, i32** %258, align 8
  %260 = call i32 @memset(i32* %259, i32 255, i32 8)
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 26
  store i64 0, i64* %262, align 8
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 25
  store i64 0, i64* %264, align 8
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 24
  store i64 0, i64* %266, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 23
  %269 = call i32 @memset(i32* %268, i32 0, i32 4)
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 22
  store i64 0, i64* %271, align 8
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 14
  store i32 255, i32* %273, align 8
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 21
  store i64 0, i64* %275, align 8
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 20
  store i64 0, i64* %277, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 15
  store i32 1000000, i32* %279, align 4
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 19
  store i64 0, i64* %281, align 8
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 18
  store i64 0, i64* %283, align 8
  %284 = call i32 @Cs2SetTiming(i32 0)
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 17
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i64 0
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 1
  store i32 0, i32* %289, align 4
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 17
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i64 0
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 0
  store i32 0, i32* %294, align 4
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 17
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i64 0
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 3
  store i32 0, i32* %299, align 4
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 17
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i64 0
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 2
  store i32 0, i32* %304, align 4
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 17
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i64 0
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 5
  store i32 255, i32* %309, align 4
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 17
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i64 0
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 4
  store i32 255, i32* %314, align 4
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 17
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i64 1
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 1
  store i32 0, i32* %319, align 4
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 17
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i64 1
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 0
  store i32 0, i32* %324, align 4
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 17
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i64 1
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 3
  store i32 0, i32* %329, align 4
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 17
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i64 1
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 2
  store i32 0, i32* %334, align 4
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 17
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i64 1
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 5
  store i32 255, i32* %339, align 4
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 17
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i64 1
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 4
  store i32 255, i32* %344, align 4
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 16
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i64 0
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 1
  store i32 0, i32* %349, align 4
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 16
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i64 0
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 0
  store i32 0, i32* %354, align 4
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 16
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i64 0
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 3
  store i32 0, i32* %359, align 4
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 16
  %362 = load %struct.TYPE_14__*, %struct.TYPE_14__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i64 0
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 2
  store i32 0, i32* %364, align 4
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 16
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i64 0
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 5
  store i32 0, i32* %369, align 4
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 16
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i64 0
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 4
  store i32 0, i32* %374, align 4
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 16
  %377 = load %struct.TYPE_14__*, %struct.TYPE_14__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i64 1
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 1
  store i32 0, i32* %379, align 4
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i32 0, i32 16
  %382 = load %struct.TYPE_14__*, %struct.TYPE_14__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i64 1
  %384 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %383, i32 0, i32 0
  store i32 0, i32* %384, align 4
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 16
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i64 1
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 3
  store i32 0, i32* %389, align 4
  %390 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %390, i32 0, i32 16
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i64 1
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 2
  store i32 0, i32* %394, align 4
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 16
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i64 1
  %399 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %398, i32 0, i32 5
  store i32 0, i32* %399, align 4
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Cs2Area, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 16
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i64 1
  %404 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %403, i32 0, i32 4
  store i32 0, i32* %404, align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @Cs2SetTiming(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
