; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2.c_Vdp2Reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2.c_Vdp2Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32 }

@Vdp2Regs = common dso_local global %struct.TYPE_16__* null, align 8
@yabsys = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@Vdp2Internal = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@Vdp2External = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp2Reset() #0 {
  %1 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %2 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  store i32 0, i32* %2, align 4
  %3 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %4 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 1
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 5
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 6
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 7
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 9
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 10
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 11
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 12
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 13
  store i32 0, i32* %32, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 14
  store i32 0, i32* %34, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 15
  store i32 0, i32* %36, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 75
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 74
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 16
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 17
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 18
  store i32 0, i32* %48, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 19
  store i32 0, i32* %50, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 73
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 72
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 20
  store i32 0, i32* %58, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 21
  store i32 0, i32* %60, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 22
  store i32 0, i32* %62, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 23
  store i32 0, i32* %64, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 24
  store i32 0, i32* %66, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 25
  store i32 0, i32* %68, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 71
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 26
  store i32 0, i32* %73, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 27
  store i32 0, i32* %75, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 28
  store i32 0, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 29
  store i32 0, i32* %79, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 30
  store i32 0, i32* %81, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 31
  store i32 0, i32* %83, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 32
  store i32 0, i32* %85, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 33
  store i32 0, i32* %87, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 34
  store i32 0, i32* %89, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 35
  store i32 0, i32* %91, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 36
  store i32 0, i32* %93, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 37
  store i32 0, i32* %95, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 38
  store i32 0, i32* %97, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 39
  store i32 0, i32* %99, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 40
  store i32 0, i32* %101, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 41
  store i32 0, i32* %103, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 42
  store i32 0, i32* %105, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 43
  store i32 0, i32* %107, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 44
  store i32 0, i32* %109, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 45
  store i32 0, i32* %111, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 46
  store i32 0, i32* %113, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 47
  store i32 0, i32* %115, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 48
  store i32 0, i32* %117, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 49
  store i32 0, i32* %119, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 50
  store i32 0, i32* %121, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 51
  store i32 0, i32* %123, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 52
  store i32 0, i32* %125, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 53
  store i32 0, i32* %127, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 54
  store i32 0, i32* %129, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 55
  store i32 0, i32* %131, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 56
  store i32 0, i32* %133, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 57
  store i32 0, i32* %135, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 58
  store i32 0, i32* %137, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 59
  store i32 0, i32* %139, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 60
  store i32 0, i32* %141, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 61
  store i32 0, i32* %143, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 62
  store i32 0, i32* %145, align 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 63
  store i32 0, i32* %147, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 64
  store i32 0, i32* %149, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 65
  store i32 0, i32* %151, align 4
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 66
  store i32 0, i32* %153, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 67
  store i32 0, i32* %155, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 68
  store i32 0, i32* %157, align 4
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 69
  store i32 0, i32* %159, align 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Vdp2Regs, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 70
  store i32 0, i32* %161, align 4
  store i32 225, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yabsys, i32 0, i32 0), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @Vdp2Internal, i32 0, i32 0), align 8
  store i32 255, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @Vdp2External, i32 0, i32 0), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
