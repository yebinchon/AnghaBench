; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map.c_LoadMapFromBSP.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map.c_LoadMapFromBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quakefile_s = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@Q3_BSP_IDENT = common dso_local global i32 0, align 4
@Q3_BSP_VERSION = common dso_local global i64 0, align 8
@Q2_BSPHEADER = common dso_local global i32 0, align 4
@Q2_BSPVERSION = common dso_local global i64 0, align 8
@SIN_BSPHEADER = common dso_local global i32 0, align 4
@SIN_BSPVERSION = common dso_local global i64 0, align 8
@SINGAME_BSPHEADER = common dso_local global i32 0, align 4
@SINGAME_BSPVERSION = common dso_local global i64 0, align 8
@Q1_BSPVERSION = common dso_local global i32 0, align 4
@HL_BSPVERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unknown BSP format %c%c%c%c, version %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadMapFromBSP(%struct.quakefile_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.quakefile_s*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  store %struct.quakefile_s* %0, %struct.quakefile_s** %3, align 8
  %5 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %6 = call i32 @ReadQuakeFile(%struct.quakefile_s* %5, %struct.TYPE_3__* %4, i32 0, i32 8)
  %7 = sext i32 %6 to i64
  %8 = icmp ne i64 %7, 8
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %160

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @LittleLong(i32 %12)
  %14 = ptrtoint i8* %13 to i32
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @LittleLong(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @Q3_BSP_IDENT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @Q3_BSP_VERSION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = call i32 (...) @ResetMapLoading()
  %33 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %34 = call i32 @Q3_LoadMapFromBSP(%struct.quakefile_s* %33)
  %35 = call i32 (...) @Q3_FreeMaxBSP()
  br label %159

36:                                               ; preds = %25, %10
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @Q2_BSPHEADER, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @Q2_BSPVERSION, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = call i32 (...) @ResetMapLoading()
  %49 = call i32 (...) @Q2_AllocMaxBSP()
  %50 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %51 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %54 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %57 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @Q2_LoadMapFromBSP(i32 %52, i32 %55, i32 %58)
  %60 = call i32 (...) @Q2_FreeMaxBSP()
  br label %158

61:                                               ; preds = %41, %36
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SIN_BSPHEADER, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @SIN_BSPVERSION, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %83, label %72

72:                                               ; preds = %66, %61
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SINGAME_BSPHEADER, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @SINGAME_BSPVERSION, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77, %66
  %84 = call i32 (...) @ResetMapLoading()
  %85 = call i32 (...) @Sin_AllocMaxBSP()
  %86 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %87 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %90 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %93 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @Sin_LoadMapFromBSP(i32 %88, i32 %91, i32 %94)
  %96 = call i32 (...) @Sin_FreeMaxBSP()
  br label %157

97:                                               ; preds = %77, %72
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @Q1_BSPVERSION, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %97
  %103 = call i32 (...) @ResetMapLoading()
  %104 = call i32 (...) @Q1_AllocMaxBSP()
  %105 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %106 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %109 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %112 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @Q1_LoadMapFromBSP(i32 %107, i32 %110, i32 %113)
  %115 = call i32 (...) @Q1_FreeMaxBSP()
  br label %156

116:                                              ; preds = %97
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @HL_BSPVERSION, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = call i32 (...) @ResetMapLoading()
  %123 = call i32 (...) @HL_AllocMaxBSP()
  %124 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %125 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %128 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %131 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @HL_LoadMapFromBSP(i32 %126, i32 %129, i32 %132)
  %134 = call i32 (...) @HL_FreeMaxBSP()
  br label %155

135:                                              ; preds = %116
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 255
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 8
  %142 = and i32 %141, 255
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 16
  %146 = and i32 %145, 255
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = ashr i32 %148, 24
  %150 = and i32 %149, 255
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = call i32 @Error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %142, i32 %146, i32 %150, i64 %153)
  store i32 0, i32* %2, align 4
  br label %160

155:                                              ; preds = %121
  br label %156

156:                                              ; preds = %155, %102
  br label %157

157:                                              ; preds = %156, %83
  br label %158

158:                                              ; preds = %157, %47
  br label %159

159:                                              ; preds = %158, %31
  store i32 1, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %135, %9
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @ReadQuakeFile(%struct.quakefile_s*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i8* @LittleLong(i32) #1

declare dso_local i32 @ResetMapLoading(...) #1

declare dso_local i32 @Q3_LoadMapFromBSP(%struct.quakefile_s*) #1

declare dso_local i32 @Q3_FreeMaxBSP(...) #1

declare dso_local i32 @Q2_AllocMaxBSP(...) #1

declare dso_local i32 @Q2_LoadMapFromBSP(i32, i32, i32) #1

declare dso_local i32 @Q2_FreeMaxBSP(...) #1

declare dso_local i32 @Sin_AllocMaxBSP(...) #1

declare dso_local i32 @Sin_LoadMapFromBSP(i32, i32, i32) #1

declare dso_local i32 @Sin_FreeMaxBSP(...) #1

declare dso_local i32 @Q1_AllocMaxBSP(...) #1

declare dso_local i32 @Q1_LoadMapFromBSP(i32, i32, i32) #1

declare dso_local i32 @Q1_FreeMaxBSP(...) #1

declare dso_local i32 @HL_AllocMaxBSP(...) #1

declare dso_local i32 @HL_LoadMapFromBSP(i32, i32, i32) #1

declare dso_local i32 @HL_FreeMaxBSP(...) #1

declare dso_local i32 @Error(i8*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
