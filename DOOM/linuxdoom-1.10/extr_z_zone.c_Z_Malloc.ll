; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_z_zone.c_Z_Malloc.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_z_zone.c_Z_Malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_3__*, i32*, %struct.TYPE_3__* }

@mainzone = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"Z_Malloc: failed on allocation of %i bytes\00", align 1
@PU_PURGELEVEL = common dso_local global i32 0, align 4
@MINFRAGMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Z_Malloc: an owner is required for purgable blocks\00", align 1
@ZONEID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Z_Malloc(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 3
  %14 = and i32 %13, -4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 40
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mainzone, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %11, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %11, align 8
  br label %32

32:                                               ; preds = %28, %3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %9, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %8, align 8
  br label %37

37:                                               ; preds = %90, %32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = icmp eq %struct.TYPE_3__* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PU_PURGELEVEL, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %11, align 8
  br label %73

59:                                               ; preds = %49
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  store %struct.TYPE_3__* %62, %struct.TYPE_3__** %11, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = bitcast %struct.TYPE_3__* %63 to i32*
  %65 = getelementptr inbounds i32, i32* %64, i64 40
  %66 = call i32 @Z_Free(i32* %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %11, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %9, align 8
  br label %73

73:                                               ; preds = %59, %55
  br label %78

74:                                               ; preds = %44
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  store %struct.TYPE_3__* %77, %struct.TYPE_3__** %9, align 8
  br label %78

78:                                               ; preds = %74, %73
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %87, %88
  br label %90

90:                                               ; preds = %84, %79
  %91 = phi i1 [ true, %79 ], [ %89, %84 ]
  br i1 %91, label %37, label %92

92:                                               ; preds = %90
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @MINFRAGMENT, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %134

101:                                              ; preds = %92
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %103 = bitcast %struct.TYPE_3__* %102 to i32*
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = bitcast i32* %106 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %107, %struct.TYPE_3__** %10, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  store i32* null, i32** %112, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 5
  store %struct.TYPE_3__* %115, %struct.TYPE_3__** %117, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  store %struct.TYPE_3__* %120, %struct.TYPE_3__** %122, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 5
  store %struct.TYPE_3__* %123, %struct.TYPE_3__** %127, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  store %struct.TYPE_3__* %128, %struct.TYPE_3__** %130, align 8
  %131 = load i32, i32* %4, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %101, %92
  %135 = load i8*, i8** %6, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %134
  %138 = load i8*, i8** %6, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 4
  store i32* %139, i32** %141, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %143 = bitcast %struct.TYPE_3__* %142 to i32*
  %144 = getelementptr inbounds i32, i32* %143, i64 40
  %145 = bitcast i32* %144 to i8*
  %146 = load i8*, i8** %6, align 8
  %147 = bitcast i8* %146 to i8**
  store i8* %145, i8** %147, align 8
  br label %157

148:                                              ; preds = %134
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @PU_PURGELEVEL, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %148
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  store i32* inttoptr (i64 2 to i32*), i32** %156, align 8
  br label %157

157:                                              ; preds = %154, %137
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mainzone, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store %struct.TYPE_3__* %163, %struct.TYPE_3__** %165, align 8
  %166 = load i32, i32* @ZONEID, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %170 = bitcast %struct.TYPE_3__* %169 to i32*
  %171 = getelementptr inbounds i32, i32* %170, i64 40
  %172 = bitcast i32* %171 to i8*
  ret i8* %172
}

declare dso_local i32 @I_Error(i8*, ...) #1

declare dso_local i32 @Z_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
