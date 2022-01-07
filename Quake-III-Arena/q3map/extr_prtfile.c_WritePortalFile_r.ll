; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_prtfile.c_WritePortalFile_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_prtfile.c_WritePortalFile_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__*, i64, %struct.TYPE_11__** }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__**, %struct.TYPE_8__, %struct.TYPE_9__*, %struct.TYPE_10__** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32** }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@pf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%i %i %i \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"1 \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0 \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WritePortalFile_r(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PLANENUM_LEAF, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %17, i64 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  call void @WritePortalFile_r(%struct.TYPE_11__* %19)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %22, i64 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  call void @WritePortalFile_r(%struct.TYPE_11__* %24)
  br label %187

25:                                               ; preds = %1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %187

31:                                               ; preds = %25
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %5, align 8
  br label %35

35:                                               ; preds = %179, %31
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %187

38:                                               ; preds = %35
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %6, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %44, i64 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = icmp eq %struct.TYPE_11__* %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %178

52:                                               ; preds = %38
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %55, i64 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = icmp eq %struct.TYPE_11__* %57, %58
  br i1 %59, label %60, label %178

60:                                               ; preds = %52
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = call i32 @Portal_Passable(%struct.TYPE_10__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  br label %179

65:                                               ; preds = %60
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @WindingPlane(%struct.TYPE_9__* %66, i32 %67, i32* %8)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call double @DotProduct(i32 %72, i32 %73)
  %75 = fcmp olt double %74, 0x3FEFAE147AE147AE
  br i1 %75, label %76, label %96

76:                                               ; preds = %65
  %77 = load i32, i32* @pf, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %83, i64 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %90, i64 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %87, i32 %94)
  br label %116

96:                                               ; preds = %65
  %97 = load i32, i32* @pf, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %103, i64 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %110, i64 1
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %107, i32 %114)
  br label %116

116:                                              ; preds = %96, %76
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @pf, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %127

124:                                              ; preds = %116
  %125 = load i32, i32* @pf, align 4
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %121
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %172, %127
  %129 = load i32, i32* %3, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %175

134:                                              ; preds = %128
  %135 = load i32, i32* @pf, align 4
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32, i32* @pf, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @WriteFloat(i32 %137, i32 %146)
  %148 = load i32, i32* @pf, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @WriteFloat(i32 %148, i32 %157)
  %159 = load i32, i32* @pf, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @WriteFloat(i32 %159, i32 %168)
  %170 = load i32, i32* @pf, align 4
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %172

172:                                              ; preds = %134
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %3, align 4
  br label %128

175:                                              ; preds = %128
  %176 = load i32, i32* @pf, align 4
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %52, %38
  br label %179

179:                                              ; preds = %178, %64
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %182, i64 %184
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  store %struct.TYPE_10__* %186, %struct.TYPE_10__** %5, align 8
  br label %35

187:                                              ; preds = %14, %30, %35
  ret void
}

declare dso_local i32 @Portal_Passable(%struct.TYPE_10__*) #1

declare dso_local i32 @WindingPlane(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local double @DotProduct(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @WriteFloat(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
